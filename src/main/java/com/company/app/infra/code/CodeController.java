package com.company.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.infra.codegroup.CodeGroup;
import com.company.app.infra.codegroup.CodeGroupServiceImpl;
import com.company.app.infra.codegroup.CodeGroupVo;

@Controller
public class CodeController {

	@Autowired
	CodeService codeservice;
	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "/codeXdmList")
	public String codeXdmLIst(@ModelAttribute("vo") CodeVo vo, CodeGroupVo groupVo, Model model) {

		vo.setShkey(vo.getShkey() == null ? "": vo.getShkey());

		vo.setParamsPaging(codeservice.selectOneCount(vo));

		if(vo.getTotalRows() > 0) {
			List<Code> list = codeservice.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}

		List<CodeGroup> groupList = service.selectList(groupVo);
		model.addAttribute("groupList", groupList);
//		model.addAttribute("vo", vo);
		return "xdm/infra/code/codeXdmList";
	}

	@RequestMapping(value = "/codeXdmForm")
	public String codeXdmForm(CodeVo vo, CodeGroupVo groupVo, Model model) {
		Code code = codeservice.selectOne(vo);
		List<CodeGroup> group = service.selectList(groupVo);
		model.addAttribute("list", code);
		model.addAttribute("group", group);
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
