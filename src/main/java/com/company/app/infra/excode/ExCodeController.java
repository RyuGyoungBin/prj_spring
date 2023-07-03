package com.company.app.infra.excode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.infra.codegroup.CodeGroup;
import com.company.app.infra.codegroup.CodeGroupService;
import com.company.app.infra.codegroup.CodeGroupVo;
import com.company.app.infra.excode.paging.Criteria;
import com.company.app.infra.excode.paging.PageMaker;

@Controller
public class ExCodeController  {
	
	@Autowired
	ExCodeService service;
	@Autowired
	CodeGroupService groupService;
	
	@RequestMapping(value = "/codeList")
	public String codeList(ExCodeVo vo, Model model, CodeGroupVo groupvo, Criteria cri)  {
		
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(100);
	    
		List<ExCode> list = service.selectJoin(vo);
		List<CodeGroup> group = groupService.selectList(groupvo);
		model.addAttribute("list", list);
		model.addAttribute("group", group);
		return "/xdm/infra/code/codeList";
	}
	
	@RequestMapping(value = "/codeForm")
	public String codeForm(ExCodeVo vo, Model model, CodeGroupVo groupvo, Model groupModel) {
		ExCode list = service.selectOne(vo);
		model.addAttribute("list", list);
		List<CodeGroup> group = groupService.selectList(groupvo);
		groupModel.addAttribute("group", group);
		return "/xdm/infra/code/codeForm";
	}
	
	@RequestMapping(value = "/codeUpdate")
	public String codeUpdate(ExCode dto, Model model) {
		service.update(dto);
		return "redirect:/codeList";
	}
	@RequestMapping(value = "/codeDelete")
	public String codeDelete(ExCode dto, Model model) {
		service.delete(dto);
		return "redirect:/codeList";
	}
	@RequestMapping(value = "/codeInsert")
	public String codeInsert(ExCode dto, Model model) {
		service.insert(dto);
		return "redirect:/codeList";
	}
	@RequestMapping(value = "/codeDelNy")
	public String codeDelNy(ExCode dto, Model model) {
		service.updateDel(dto);
		return "redirect:/codeList";
	}
}
