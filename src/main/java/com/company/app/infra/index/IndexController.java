package com.company.app.infra.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.infra.codegroup.CodeGroupServiceImpl;
import com.company.app.infra.member.Member;
import com.company.app.infra.member.MemberServiceImpl;
import com.company.app.infra.member.MemberVo;

@Controller
public class IndexController {
	
	@Autowired
	CodeGroupServiceImpl service;
	@Autowired
	MemberServiceImpl memberService;
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	@RequestMapping("/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/index/loginXdmForm";
	}
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	@RequestMapping("/signupUsrForm")
	public String singupUsrForm() {
		return "usr/infra/index/signupUsrForm";
	}
	@RequestMapping("/mymenuUsrView")
	public String mymenuUsrView() {
		return "usr/infra/index/mymenuUsrView";
	}
	@RequestMapping("/informationUsrForm")
	public String informationUsrForm(MemberVo vo, Model model) {
		Member listOne = memberService.selectOne(vo);
		List<Member> list = memberService.selectListPhone(vo);
		model.addAttribute("listOne", listOne);
		model.addAttribute("list", list);
		return "usr/infra/index/informationUsrForm";
	}
	@RequestMapping("/informationUsrUpdate")
	public String informationUsrUpdate(Member dto) {
		System.out.println("1234");
		memberService.updateMember(dto);
		return "redirect:/informationUsrForm";
	}
	
	@ResponseBody
	@RequestMapping("/UsrloginProc")
	public Map<String, Object> UsrloginProc(MemberVo vo){
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = memberService.selectId(vo);
		
		if(rtMember != null) {
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	

}
