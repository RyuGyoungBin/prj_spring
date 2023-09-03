package com.company.app.infra.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.concert.Concert;
import com.company.app.concert.ConcertServiceImpl;
import com.company.app.concert.ConcertVo;
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
	@Autowired
	ConcertServiceImpl concertService;

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
	public String indexUsrView(ConcertVo vo, Model model) {
		vo.setConcertOBDesc("desc");
		vo.setRowNumToShow(4);
		List<Concert> list = concertService.selectList(vo);
		List<Concert> uploaded = concertService.selectUploaded(vo);
		model.addAttribute("concertNew", list);
		model.addAttribute("uploaded", uploaded);
		return "usr/infra/index/indexUsrView";
	}
	@RequestMapping("/signupUsrForm")
	public String singupUsrForm() {
		return "usr/infra/index/signupUsrForm";
	}
	@RequestMapping("/mymenuUsrView")
	public String mymenuUsrView(ConcertVo vo, Model model) {
		List<Concert> list = concertService.selectTicket(vo);
		List<Concert> review = concertService.selectReview(vo);
		List<Concert> listConcert = concertService.selectConcertList(vo);
		model.addAttribute("ticket", list);
		model.addAttribute("review", review);
		model.addAttribute("concertList", listConcert);
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
