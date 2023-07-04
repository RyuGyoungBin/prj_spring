package com.company.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberXdmList")
	public String memberXdmList(Model model) {
		System.out.println("123");
		List<Member> list = service.selectList();
		model.addAttribute("memberList", list);
		return"xdm/infra/member/memberXdmList";
	}
	

}
