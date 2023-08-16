package com.company.app.concert;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.infra.code.Code;
import com.company.app.infra.code.CodeServiceImpl;
import com.company.app.infra.code.CodeVo;


@Controller
public class ConcertController {

	@Autowired
	ConcertServiceImpl service;
	@Autowired
	CodeServiceImpl codeService;

	@RequestMapping("/concertUsrMain")
	public String concertMain(ConcertVo vo, CodeVo codeVo, Model model) {
		List<Concert> list = service.selectConcertList(vo);
		model.addAttribute("concertList", list);
		return"usr/infra/concert/concert";
	}
	@RequestMapping("/concertUsrDetail")
	public String concertDetail(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> list = service.selectUploaded(vo);
		List<Concert> seat = service.selectSeatGroup(vo);
		List<Concert> date = service.selectDate(vo);
		model.addAttribute("item", concert);
		model.addAttribute("uploaded", list);
		model.addAttribute("seat", seat);
		model.addAttribute("date", date);
		return"usr/infra/concert/concertDetail";
	}
	@RequestMapping("/concertUsrTicketDate")
	public String concertUsrTicketDate(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> list = service.selectUploaded(vo);
		List<Concert> seat = service.selectSeatGroup(vo);
		List<Concert> date = service.selectDate(vo);
		model.addAttribute("item", concert);
		model.addAttribute("uploaded", list);
		model.addAttribute("seat", seat);
		model.addAttribute("date", date);
		return"usr/infra/concert/concertUsrTicketDate";
	}
	@RequestMapping("/concertUsrTicketSeat")
	public String concertUsrTicketSeat(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> seat = service.selectSeat(vo);
		List<Concert> seatGroup = service.selectSeatGroup(vo);
		List<Concert> seatRow = service.selectSeatRow(vo);
		
		model.addAttribute("item", concert);
		model.addAttribute("seat", seat);
		model.addAttribute("seatGroup", seatGroup);
		model.addAttribute("row", seatRow);
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
		List<Concert> uploaded = service.selectUploaded(vo);
		model.addAttribute("list", item);
		model.addAttribute("listUploaded", uploaded);
		return"xdm/infra/concert/concertXdmForm";
	}

	@RequestMapping("/concertXdmInsert")
	public String concertInsert(Concert dto) throws Exception {
		System.out.println("sdfsd");
		service.insertConcert(dto);
		return "redirect:/concertXdmList";
	}
	
	@RequestMapping("/concertUsrRegistration")
	public String concertUsrRegistration() {
		return"usr/infra/concert/concertUsrRegistration";
	}
	
	@ResponseBody
	@RequestMapping("/seatXdmView")
	public Map<String, Object> seatView(ConcertVo vo, Model model) {
		Map<String, Object> returnMap = new HashMap<>();
		int rtMember = service.selectSeatCount(vo);
		List<Concert> Concert = service.selectSeat(vo);
		System.out.println("asdf");
		if (rtMember > 0) {
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
			model.addAttribute("seatList", Concert);
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/selectConcertDate")
	public Map<String, List<Concert>> selectConcertDate(ConcertVo vo, Model model) {
		Map<String, List<Concert>> returnMap = new HashMap<>();
		List<Concert> rtDate = service.selectDate(vo);
		System.out.println(rtDate.size());
		if (rtDate.size() > 0) {
			returnMap.put("rtDate", rtDate);
			model.addAttribute("date", rtDate);
		} else {
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/selectConcertDateTimeSeat")
	public Map<String, List<Concert>> selectConcertDateTimeSeat(ConcertVo vo, Model model) throws Exception {
		Map<String, List<Concert>> returnMap = new HashMap<>();
		List<Concert> rtSeat = service.selectSeatGroup(vo);
		System.out.println(rtSeat.size());
		if (rtSeat.size() > 0) {
			returnMap.put("rtSeat", rtSeat);
		} else {
		}
		return returnMap;
	}
	


}
