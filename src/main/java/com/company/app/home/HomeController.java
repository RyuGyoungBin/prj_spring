package com.company.app.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.code.Code;
import com.company.app.code.CodeService;
import com.company.app.codegroup.CodeGroup;
import com.company.app.codegroup.CodeGroupServiceImpl;
import com.company.app.codegroup.CodeGroupVo;

@Controller
public class HomeController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "/")
	public String home() {
		
		
//		href="/resources/xdm/v1/css/commonXdm.css"
		return "index";
	}
	@RequestMapping(value = "/adminLogin")
	public String adminLogin() {
		return "admin/adminLogin";   
	}
	
	@RequestMapping(value = "/concertList")
	public String concertList(CodeGroupVo vo, Model model) {
	  
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("listgroup", list);
	  return "admin/concertList"; 
	}
	
	@Autowired
	CodeService codeservice;
	
	@RequestMapping(value = "/home2")
	public String home2(CodeGroupVo vo, Model model2) {
		
		List<Code> codeList = codeservice.selectList();
		model2.addAttribute("listgroup", codeList);
		return "home2";
	}
	
	
	
	

}
