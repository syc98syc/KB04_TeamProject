package kb04.ditto.jgig.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.CardDto;
import kb04.ditto.jgig.mapper.CardMapper;

@Controller
public class CardController {

	@Autowired
	private CardMapper cardMapper;

	public String login_check(HttpSession session) { // 로그인 체크 함수
		// 세션에서 로그인 정보를 확인
		Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");

		// 로그인 여부를 확인하고, 로그인되지 않은 경우 로그인 페이지로 리다이렉트
		if (loggedIn == null || !loggedIn) {
			return "redirect:/jgig/login"; // 로그인 페이지로 리다이렉트합니다.
		}

		// 로그인된 경우, 세션에서 로그인 아이디를 받아옵니다.
		String mem_id = (String) session.getAttribute("mem_id");
		return mem_id;
	}

	@GetMapping("/jgig/card_list")
	public String card_list(Model model) {
		List<CardDto> list = cardMapper.list();
		model.addAttribute("list", list);

		return "card/list";
	}

	@GetMapping("/jgig/card_issuance_form1")
	public String card_issuance_form1(HttpSession session) {
		String returnVal = login_check(session);
		if (returnVal.equals("redirect:/jgig/login"))
			return returnVal;
		String mem_id = returnVal;

		// test
		System.out.println("form1 로그인 아이디 : " + mem_id);

		return "card/issuance_form1";
	}

	@PostMapping("/jgig/card_issuance_form2")
	public String card_issuance_form2(HttpSession session, @ModelAttribute CardDto cardDto,
			@RequestParam("agreement1") String agree) {
		String returnVal = login_check(session);
		if (returnVal.equals("redirect:/jgig/login"))
			return returnVal;
		String mem_id = returnVal;

		// 본인인증
		String mem_nm = (String) session.getAttribute("mem_nm");
		String mem_tel = (String) session.getAttribute("phone_num");
		String mem_ssn = (String) session.getAttribute("ssn");

		String input_nm = cardDto.getCd_name();
		String input_tel = cardDto.getCd_phone();
		String input_ssn = cardDto.getCd_ssn();

		if (!mem_nm.equals(input_nm) || !mem_tel.equals(input_tel) || !mem_ssn.equals(input_ssn)) {
			// 본인 인증 실패: 경고 메시지를 생성하고 JavaScript의 alert 함수를 사용하여 표시
			String errorMessage = "본인 인증에 실패했습니다. 회원 정보와 다릅니다. ";
			session.setAttribute("errorMessage", errorMessage); // 실패 메시지를 세션에 저장
			return "redirect:/jgig/card_issuance_form1"; // 실패한 경우, 다시 form1 페이지로 리다이렉트
		}

		// 약관동의 체크
		if (!agree.equals("동의")) {
			String errorMessage = "약관에 동의하여야 카드 발급이 가능합니다.";
			session.setAttribute("errorMessage", errorMessage); // 실패 메시지를 세션에 저장
			return "redirect:/jgig/card_issuance_form1"; // 실패한 경우, 다시 form1 페이지로 리다이렉트
		}

		// 입력 받은 DTO를 세션에 저장
		session.setAttribute("cardDto_form1", cardDto);

		// test
		System.out.println("form2 로그인 아이디 : " + mem_id);
		System.out.println("입력값(form1): " + cardDto);

		return "card/issuance_form2";
	}

	@PostMapping("/jgig/card_issuance_action")
	public String card_issuance_action(HttpSession session, Model model, @ModelAttribute CardDto cardDto) {

		String returnVal = login_check(session);
		if (returnVal.equals("redirect:/jgig/login"))
			return returnVal;
		String mem_id = returnVal;

		// form1에서 입력받은 정보
		CardDto cardDto_form1 = (CardDto) session.getAttribute("cardDto_form1");
		cardDto.setCd_item(cardDto_form1.getCd_item());
		cardDto.setCd_name(cardDto_form1.getCd_name());
		cardDto.setCd_ssn(cardDto_form1.getCd_ssn());
		cardDto.setCd_phone(cardDto_form1.getCd_phone());
		cardDto.setMem_id(mem_id);

		cardMapper.insert(cardDto); // DB insert
		CardDto card_success = cardMapper.find_last(mem_id);
		model.addAttribute("card_success", card_success);

		// test
		System.out.println("action 로그인 아이디 : " + mem_id);
		System.out.println("cardDto_form2 : " + cardDto);
		System.out.println("card insert 성공");

		return "card/issuance_ok";
	}

	// 테스트용 로그인 처리 로직
	@GetMapping("/jgig/login_test")
	public String loginTest(HttpSession session) {
		// 로그인 정보를 세션에 저장합니다.
		session.setAttribute("loggedIn", true);
		session.setAttribute("mem_id", "kb0002"); // 테스트용 아이디
		session.setAttribute("mem_nm", "김철수"); // 테스트용 이름
		session.setAttribute("phone_num", "01054237895"); // 테스트용 폰번호
		session.setAttribute("ssn", "990101-0000000"); // 테스트용 주민번호

		// 로그인 정보를 저장한 후, 다음 페이지로 리다이렉트합니다.
		return "redirect:/jgig/card_issuance_form1"; // 로그인 후의 페이지로 리다이렉트
	}

	// 테스트용 로그인 처리 로직
	@GetMapping("/jgig/logout_test")
	public String logoutTest(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}

		return "redirect:/jgig/card_issuance_form1"; // 로그인 후의 페이지로 리다이렉트
	}

}
