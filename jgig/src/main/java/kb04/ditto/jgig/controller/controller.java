package kb04.ditto.jgig.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {
	@GetMapping("/jgig/practice")
	public String pratcice() {
		
		return "practice";
	}
}