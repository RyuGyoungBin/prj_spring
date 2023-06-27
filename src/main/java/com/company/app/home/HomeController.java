package com.company.app.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.code.Code;
import com.company.app.code.CodeService;
import com.company.app.code.CodeVo;
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
		return "xdm/adminLogin";   
	}
	
	@RequestMapping(value = "/concertList")
	public String concertList(CodeGroupVo vo, Model model) {
	  
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
	  return "xdm/concertList"; 
	}
	
	@RequestMapping(value = "/concertListCodeGroup")
	public String concertListCodeGroup(CodeGroupVo vo, Model model) {
	  
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
	  return "redirect:/concertList"; 
	}
	
	
	@Autowired
	CodeService codeservice;
	
	@RequestMapping(value = "/concertListCode")
	public String concertListCode(CodeGroupVo vo, Model model) {
	  
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
	  return "/concertList"; 
	}
	
	@RequestMapping(value = "/home2")
	public String home2(CodeVo vo, Model model2) {
		
		List<Code> codeList = codeservice.selectList(vo);
		model2.addAttribute("list", codeList);
		return "home2";
	}
	
	@RequestMapping(value = "/concertForm")
	public String concertForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codegroup = service.selectOne(vo);
		model.addAttribute("list", codegroup);
		
		return "xdm/concertForm";
	}
	
	@RequestMapping(value = "/concertDelete")
	public String concertDelete(CodeGroup dto) {
		
		service.delete(dto);
		
		return "redirect:/concertList";
	}
	
	@RequestMapping(value = "/concertUpdate")
	public String concertUpdate(CodeGroup dto) {
		
		service.update(dto);
		
		return "redirect:/concertList";
	}
	
	
	
	@RequestMapping(value = "/concertInsert")
	public String concertInsert(CodeGroup dto) {
		
		service.insert(dto);
		
		return "redirect:/concertList";
	}
	@RequestMapping(value = "/concertDelNy")
	public String concertDelNy(CodeGroup dto) {
		
		service.updateDel(dto);
		
		return "redirect:/concertList";
	}
	
	
	

}
