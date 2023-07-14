package com.company.app.infra.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/memberupdateUsr")
	public String memberupdateUsr(Member dto) {
		memberService.updateMember(dto);
		return "redirect:/informationUsrForm";
	}
	
	
	
	
	

}
