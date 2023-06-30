package com.company.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
//	@RequestMapping(value = "/CodeList")
//	public String CodeList(CodeVo vo, Model model) {
//		
//		List<Code> list = service.selectList(vo);
//		model.addAttribute("codeList", list);
//
//		return "codeList";
//	}
	
}
