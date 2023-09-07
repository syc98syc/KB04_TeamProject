package kb04.ditto.jgig.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.PopularWordDto;
import kb04.ditto.jgig.mapper.SearchWordMapper;
import kb04.ditto.jgig.mapper.WaitingMapper;

@Controller
public class waitingController {
	@Autowired
	private WaitingMapper waitingMapper;
	
	@GetMapping("/jgig/findStore")
	public String loadSearchWord(Model model) {
	
		return "waiting/findStore";
	}

	
	@GetMapping("/jgig/detailWaiting")
	public String showDetailWaiting() {

		return "waiting/detailWaiting";
	}
}
