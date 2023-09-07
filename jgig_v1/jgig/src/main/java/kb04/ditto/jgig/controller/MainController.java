package kb04.ditto.jgig.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/jgig/")
	public String mainpage() {
		return "index";
	}
}
