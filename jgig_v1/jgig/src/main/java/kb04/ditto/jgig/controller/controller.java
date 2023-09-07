package kb04.ditto.jgig.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {
	
	@GetMapping("/jgig/test_main")
	public String main() {
		
		return "/bootstrap/main";
	}
	
	@GetMapping("/jgig/test_sidemenu")
	public String test_sidemenu() {
		
		return "/bootstrap/sidemenu";
	}
}
