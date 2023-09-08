package kb04.ditto.jgig.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb04.ditto.jgig.entity.BoardDto;
import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.mapper.MainMapper;

@Controller
public class MainController {
	
	@Autowired
	private MainMapper mainMapper;

	@GetMapping("/jgig/")
	public String mainpage(HttpSession session, Model model) {
		
		List<BoardDto> free_list = mainMapper.free_list();
		model.addAttribute("free_list", free_list);
		
		List<BoardDto> question_list = mainMapper.question_list();
		model.addAttribute("question_list", question_list);
		
		List<MemberDto> point_rank=mainMapper.point_rank();
		model.addAttribute("point_rank", point_rank);
		
		
	
		return "index";
	}
	
	
	
}
