package kb04.ditto.jgig.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.mapper.MemberMapper;

@Controller
public class MemberController {
	@Autowired
	private MemberMapper memberMapper;

	@GetMapping("/jgig/register")
	public String toSignupPage() { // 회원가입 페이지
		return "member/register";
	}

	@PostMapping("/jgig/register")
	public String signup(MemberDto dto) { // 회원가입
		try {
			memberMapper.signup(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/jgig/login";
	}

	@GetMapping("/jgig/login")
	public String toLoginPage(HttpSession session) { // 로그인 페이지
		String mem_id = (String) session.getAttribute("mem_id");
		if (mem_id != null) { // 로그인된 상태
			return "login/login_main";
		}
		return "login/login_form"; // 로그인되지 않은 상태
	}

	@PostMapping("/jgig/login")
	public String login(MemberDto dto, HttpSession session, Model model) { // 로그인
		MemberDto loginDto = memberMapper.login(dto);
		if (loginDto == null) { // 로그인 실패
			return "login/login_form";
		}
		String id = loginDto.getMem_id();
		session.setAttribute("mem_id", id);
		String ssn = loginDto.getSsn();
		session.setAttribute("ssn", ssn);
		String mem_nm = loginDto.getMem_nm();
		session.setAttribute("mem_nm", mem_nm);
		String phone_num = loginDto.getPhone_num();
		session.setAttribute("phone_num", phone_num);
		
		//주민등록번호, 이름, 전화번호
		model.addAttribute("memberDto", loginDto);
		return "login/login_main";
	}

	@PostMapping("/jgig/logout")
	public String logout(HttpSession session) { // 로그아웃
		session.invalidate();
		return "redirect:/jgig/login";
	}

	@PostMapping("/jgig/member_detail") // 회원 상세 정보
	public String detail(@RequestParam("mem_id") String mem_id, HttpSession session, Model model) {
		MemberDto infoDto = memberMapper.detail(mem_id);
		if (infoDto != null) { // 로그인된 상태
			model.addAttribute("memberDto", infoDto);
			return "member/detail";
		}
		return "redirect:/jgig/login";
	}

	@GetMapping("/jgig/member_update")
	public String toUpdatePage(MemberDto dto, HttpSession session, Model model) { // 회원 정보 수정 페이지
		String mem_id = (String) session.getAttribute("mem_id");
		MemberDto update_dto = memberMapper.detail(mem_id);
		model.addAttribute("memberDto", update_dto);
		return "member/update";
	}

	@PostMapping("/jgig/member_update")
	public String Update(MemberDto dto, HttpSession session, Model model) { // 회원 정보 수정
		String mem_id = (String) session.getAttribute("mem_id");
		dto.setMem_id(mem_id);
		memberMapper.update(dto);
		return "member/detail";
	}

	@GetMapping("/jgig/member_delete")
	public String todeletePage(MemberDto dto, HttpSession session, Model model) { // 회원 페이지
		String mem_id = (String) session.getAttribute("mem_id");
		MemberDto update_dto = memberMapper.detail(mem_id);
		model.addAttribute("memberDto", update_dto);
		return "member/delete";
	}

	@PostMapping("/jgig/member_delete")
	public String delete(
	    HttpSession session,
	    @RequestParam("mem_pw") String inputPassword,
	    RedirectAttributes redirectAttributes) {
	    String mem_id = (String) session.getAttribute("mem_id");

	    if (mem_id != null) {
	        String savedPassword = memberMapper.getPassword(mem_id);

	        if (savedPassword != null && savedPassword.equals(inputPassword)) {
	            // 비밀번호가 일치하는 경우 회원 탈퇴 처리
	            memberMapper.delete(mem_id);
	            session.invalidate();
	            return "redirect:/jgig/login";
	        } else {
	            // 비밀번호가 일치하지 않는 경우 에러 메시지를 리다이렉트로 전달
	        	session.setAttribute("error", "비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
	            return "redirect:/jgig/member_delete"; // 비밀번호 다시 입력 페이지로 리다이렉트
	        	}
	        } else {
	        // 세션에 회원 ID가 없는 경우 로그인 페이지로 이동
	        return "redirect:/jgig/login";
	    }
	}
}