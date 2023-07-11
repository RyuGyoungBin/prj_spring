package com.company.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		model.addAttribute("list", member);
		return "xdm/infra/member/memberXdmForm";
	}
	

}
