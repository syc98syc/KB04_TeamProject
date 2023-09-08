package kb04.ditto.jgig.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.entity.PointDto;
import kb04.ditto.jgig.mapper.MemberMapper;
import kb04.ditto.jgig.mapper.PointMapper;
@Controller
public class PointController {
    @Autowired
    private PointMapper pointMapper;

    @Autowired
    private MemberMapper memberMapper;

    // 초기 총 포인트 계산 및 모델에 추가
    @ModelAttribute("totalPoint")
    public int totalPoint(HttpSession session) {
        String memId = (String) session.getAttribute("mem_id");

        if (memId != null) {
            List<PointDto> pointList = pointMapper.getPointByMemberId(memId);
            return calculateTotalPoint(pointList);
        }

        return 0; // 로그인되지 않은 경우 총 포인트는 0으로 설정
    }

    // 회원 이름 가져오기
    @ModelAttribute("memberName")
    public String memberName(HttpSession session) {
        String memId = (String) session.getAttribute("mem_id");

        if (memId != null) {
            MemberDto member = memberMapper.detail(memId);
            return member.getMem_nm();
        }

        return ""; // 로그인되지 않은 경우 회원 이름은 빈 문자열로 설정
    }

    @GetMapping("/jgig/point_list") // 포인트 내역 조회 페이지
    public String pointListPage() {
        return "point/list";
    }

    @PostMapping("/jgig/point_list") // 필터링된 포인트 내역 조회
    public String filterPointList(@RequestBody String filter, HttpSession session, Model model) {
        String memId = (String) session.getAttribute("mem_id");

        if (memId != null) {
            List<PointDto> pointList = pointMapper.getFilteredPointByMemberId(memId, filter);
            model.addAttribute("pointList", pointList);
            model.addAttribute("filter", filter); // 필터링 옵션 유지
            System.out.println(pointList);
            System.out.println("filter = "+filter);
            return "point/list_filter";
        }

        return "redirect:/jgig/login";
    }

    // 포인트 내역의 총 포인트 계산
    private int calculateTotalPoint(List<PointDto> pointList) {
        int totalPoint = 0;
        for (PointDto point : pointList) {
            totalPoint += point.getPoint();
        }
        return totalPoint;
    }
}
