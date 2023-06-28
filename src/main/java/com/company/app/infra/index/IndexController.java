package com.company.app.infra.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.infra.code.Code;
import com.company.app.infra.code.CodeService;
import com.company.app.infra.code.CodeVo;
import com.company.app.infra.codegroup.CodeGroup;
import com.company.app.infra.codegroup.CodeGroupServiceImpl;
import com.company.app.infra.codegroup.CodeGroupVo;

@Controller
public class IndexController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	@RequestMapping("/loginXdmForm")
	public String indexUsrView() {
		return "xdm/infra/index/loginXdmForm";
	}
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}
	@RequestMapping(value = "/codeGroupXdmList")
	public String codeGroupXdmList(CodeGroupVo vo, Model model) {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
	    return "xdm/infra/codegroup/codeGroupXdmList"; 
	}
	@RequestMapping(value = "/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {
		CodeGroup codegroup = service.selectOne(vo);
		model.addAttribute("list", codegroup);
		return "xdm/infra/codegroup/codeGroupXdmForm";
	}
	@RequestMapping(value = "/codeGroupXdmDelete")
	public String concertDelete(CodeGroup dto) {
		
		service.delete(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping(value = "/codeGroupXdmUpdate")
	public String concertUpdate(CodeGroup dto) {
		
		service.update(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	@RequestMapping(value = "/codeGroupXdmInsert")
	public String concertInsert(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupXdmList";
	}
	@RequestMapping(value = "/codeGroupXdmDelNy")
	public String concertDelNy(CodeGroup dto) {
		service.updateDel(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@Autowired
	CodeService codeservice;
	
	@RequestMapping(value = "/codeXdmList")
	public String codeXdmLIst(CodeVo vo, Model model2) {
		List<Code> codeList = codeservice.selectList(vo);
		model2.addAttribute("list", codeList);
		return "xdm/infra/code/codeXdmList";
	}
	
	@RequestMapping(value = "/codeXdmForm")
	public String codeXdmForm(CodeVo vo, Model model) {
		Code code = codeservice.selectOne(vo);
		model.addAttribute("list", code);
		return "xdm/infra/code/codeXdmForm";
	}

	@RequestMapping(value = "/codeXdmDelete")
	public String codeXdmDelete(Code dto) {
		
		codeservice.delete(dto);
		
		return "redirect:/codeXdmList";
	}
	@RequestMapping(value = "/codeXdmUpdate")
	public String codeXdmUpdate(Code dto) {
		
		codeservice.update(dto);
		
		return "redirect:/codeXdmList";
	}
	@RequestMapping(value = "/codeXdmInsert")
	public String codeXdmInsert(Code dto) {
		
		codeservice.insert(dto);
		
		return "redirect:/codeXdmList";
	}
	@RequestMapping(value = "/codeXdmDelNy")
	public String codeXdmDelNy(Code dto) {
		
		codeservice.updateDel(dto);
		
		return "redirect:/codeXdmList";
	}
	
	
	
	

}
