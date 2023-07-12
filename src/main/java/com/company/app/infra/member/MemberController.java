package com.company.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		if(vo.getTotalRows()>0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("memberList", list);
		}else {
//			by pass
		}
		return"xdm/infra/member/memberXdmList";
	}
	
	@RequestMapping("/memberinsert")
	public String memberinsert(Member dto) {
		System.out.println("123");
		service.insertMember(dto);
		return "redirect:/indexUsrView";
	}
	
	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model ) {
		Member member = service.selectOne(vo);
		model.addAttribute("list", member);
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
	
	@ResponseBody
	@RequestMapping("/loginProc")
	public Map<String, Object> loginProc(MemberVo vo){
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectId(vo);
		
		if(rtMember != null) {
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

}
