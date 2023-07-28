package com.company.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping("/memberXdmList")
	public String memberXdmList(@ModelAttribute("vo") MemberVo vo, Model model) {
		System.out.println("123");
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("memberList", list);
		} else {
//			by pass
		}
		return "xdm/infra/member/memberXdmList";
	}

	@RequestMapping("/memberinsert")
	public String memberinsert(Member dto) throws Exception {
		System.out.println("123");
		service.insertMember(dto);
		return "redirect:/indexUsrView";
	}

	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model) {
		Member member = service.selectOne(vo);
		List<Member> list = service.selectUploaded(vo);
		model.addAttribute("list", member);
		model.addAttribute("listUploaded", list);
//		List<Member> list = service.selectListPhone(vo);
//		model.addAttribute("listPhone", list);
		return "xdm/infra/member/memberXdmForm";
	}

	@RequestMapping("/memberupdate")
	public String memberupdate(Member dto) {
		service.updateMember(dto);
		return "redirect:/memberXdmList";
	}

	@RequestMapping("/memberupdateDel")
	public String memberupdateDel(Member dto) {
		service.updateDelMemeber(dto);
		return "redirect:/memberXdmList";
	}

	@RequestMapping("/memberdelete")
	public String memberdelete(Member dto) {
		service.deleteMember(dto);
		return "redirect:/memberXdmList";
	}

	@ResponseBody
	@RequestMapping("/loginUsrProc")
	public Map<String, Object> loginUsrProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();

		Member rtMember = service.selectId(vo);
		if (rtMember != null) {
			httpSession.setMaxInactiveInterval(60 * 60);
			httpSession.setAttribute("sessionId", vo.getId());
			httpSession.setAttribute("sessionSeq", rtMember.getSeq());
			httpSession.setAttribute("sessionType", rtMember.getMemberType());
			System.out.println(httpSession.getAttribute("sessionId"));
			System.out.println("seq = " + httpSession.getAttribute("sessionSeq"));
			System.out.println("type = " + httpSession.getAttribute("sessionType"));
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/loginXdmProc")
	public Map<String, Object> loginXdmProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();

		Member rtMember = service.selectIdXdm(vo);
		if (rtMember != null) {
			httpSession.setMaxInactiveInterval(60 * 60);
			httpSession.setAttribute("sessionId", vo.getId());
			httpSession.setAttribute("sessionSeq", rtMember.getSeq());
			httpSession.setAttribute("sessionType", rtMember.getMemberType());
			System.out.println(httpSession.getAttribute("sessionId"));
			System.out.println("seq = " + httpSession.getAttribute("sessionSeq"));
			System.out.println("type = " + httpSession.getAttribute("sessionType"));
			System.out.println("type = " + httpSession.getAttribute("sessionType").getClass());
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/UsridProc")
	public Map<String, Object> UsridProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<>();

		int rtMember = service.selectOneCount(vo);

		if (rtMember > 0) {
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();
		System.out.println(httpSession.getAttribute("sessionId"));
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

}
