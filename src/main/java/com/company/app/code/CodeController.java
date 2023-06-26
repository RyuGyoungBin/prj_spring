package com.company.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.codegroup.CodeGroupVo;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/CodeList")
	public String CodeList(Model model) {
		
		List<Code> list = service.selectList();
		model.addAttribute("codeList", list);

		return "codeList";
	}
	
}
