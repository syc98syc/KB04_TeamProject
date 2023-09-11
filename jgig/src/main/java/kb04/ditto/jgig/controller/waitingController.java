package kb04.ditto.jgig.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.WaitingDto;
import kb04.ditto.jgig.mapper.WaitingMapper;

@Controller
public class waitingController {
	@Autowired
	private WaitingMapper waitingMapper;

	@GetMapping("/jgig/findStore")
	public String loadSearchWord(Model model) {
		// 발급 유무 확인후 발급 버튼 display 결정 
		String mem_id = "kb0002";
//		String mem_id = "kb0005";
		WaitingDto dto = waitingMapper.detailWaiting(mem_id);
		if(dto != null) {
			model.addAttribute("wt_stat", "Y");
		} else {
			model.addAttribute("wt_stat", "N");
		}
		return "waiting/findStore";
	}

	@PostMapping("/jgig/addWaiting")
	public String addWaiting(@RequestBody WaitingDto dto, Model model) {
//		dto.setMem_id("kb0001"); // 아이디 
		waitingMapper.insertWaiting(dto);

//		model.addAttribute("msg","성공 ");
		return "waiting/findStore";
	}

	@GetMapping("/jgig/detailWaiting")
	public String showDetailWaiting(Model model) {
		String mem_id = "kb0002";
//		String mem_id = "kb0005";
		WaitingDto dto = waitingMapper.detailWaiting(mem_id);
		if (dto != null) {
			model.addAttribute("dto", dto);
			model.addAttribute("msg", "잇슴니다 ");
			model.addAttribute("detailYn", "Y");
		} else {
			model.addAttribute("msg", "업슴니다 ");
			model.addAttribute("detailYn", "N");
		}
		return "waiting/detailWaiting";
	}

	@PostMapping("/jgig/deleteWaiting")
	public String deleteWaiting(@RequestBody WaitingDto dto, Model model) {
		waitingMapper.deleteWaiting(dto.getWt_seq());
		return "redirect:/jgig/detailWaiting";
	}
}
