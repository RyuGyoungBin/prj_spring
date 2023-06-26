package com.company.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		
		List<CodeGroup> list = service.selectList(vo);
//							jsp에서 사용할 변수명
		model.addAttribute("listgroup", list);
		
		return "codeGroupList";
	}
	
	@RequestMapping(value = "/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codegroup = service.selectOne(vo);
		model.addAttribute("codeOne", codegroup);
		
		return "codeGroupForm";  
	}
}
