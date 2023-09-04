package kb04.ditto.jgig.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb04.ditto.jgig.entity.CardDto;
import kb04.ditto.jgig.mapper.CardMapper;

@Controller
public class CardController {
	
	@Autowired
	private CardMapper cardMapper;
	
	@GetMapping("/jgig/card_list")
	public String card_form(Model model) {
		List<CardDto> list=cardMapper.list();
		model.addAttribute("list", list);
		
		return "card/list";
	}

}
