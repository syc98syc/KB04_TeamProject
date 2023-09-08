package kb04.ditto.jgig.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.entity.PointDto;
import kb04.ditto.jgig.mapper.MemberMapper;
import kb04.ditto.jgig.mapper.PointMapper;


@Controller

public class PointController {
	@Autowired
	private PointMapper pointMapper;

	@PostMapping("/jgig/point_list") // 적립내역 조회
	public String detail(HttpSession session, Model model) {
	    String memId = (String) session.getAttribute("mem_id");
	    
	    if (memId != null) {
	        List<PointDto> pointList = pointMapper.getPointByMemberId(memId);
	        // 총 포인트 계산
	        int totalPoint = 0;
	        for (PointDto point : pointList) {
	            totalPoint += point.getPoint();
	        }
	        
	        model.addAttribute("pointList", pointList);
	        model.addAttribute("totalPoint", totalPoint);
	        return "point/list";
	    }
	    
	    return "redirect:/jgig/login";
	}

}
