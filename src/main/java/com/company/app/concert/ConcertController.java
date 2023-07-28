package com.company.app.concert;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConcertController {

	@Autowired
	ConcertServiceImpl service;

	@RequestMapping("/concertUsrMain")
	public String concertMain() {
		return"usr/infra/concert/concert";
	}
	@RequestMapping("/concertUsrDetail")
	public String concertDetail() {
		return"usr/infra/concert/concertDetail";
	}
	@RequestMapping("/concertUsrTicketDate")
	public String concertUsrTicketDate() {
		return"usr/infra/concert/concertUsrTicketDate";
	}
	@RequestMapping("/concertUsrTicketSeat")
	public String concertUsrTicketSeat() {
		return"usr/infra/concert/concertUsrTicketSeat";
	}
	@RequestMapping("/concertXdmList")
	public String concertXdmList(@ModelAttribute("vo") ConcertVo vo, Model model) {
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Concert> list = service.selectList(vo);
			model.addAttribute("concertList", list);
		} else {
//			by pass
		}
		return"xdm/infra/concert/concertXdmList";
	}
	@RequestMapping("/concertXdmForm")
	public String concertXdmForm(ConcertVo vo, Model model) {
		Concert item = service.selectOne(vo);
		model.addAttribute("list", item);
		return"xdm/infra/concert/concertXdmForm";
	}

	@RequestMapping("/concertXdmInsert")
	public String concertInsert(Concert dto) {
		service.insertConcert(dto);
		return "redirect:/concertXdmList";
	}
	@RequestMapping("/concertUsrRegistration")
	public String concertUsrRegistration() {
		return"usr/infra/concert/concertUsrRegistration";
	}

}
