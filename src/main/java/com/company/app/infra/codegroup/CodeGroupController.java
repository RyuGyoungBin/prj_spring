package com.company.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "/codeGroupXdmList")
	public String codeGroupXdmList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setShkey(vo.getShkey() == null ? "": vo.getShkey());
		vo.setParamsPaging(service.selectOneCount(vo));

		if(vo.getTotalRows()>0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
//			by pass
		}
	    return "xdm/infra/codegroup/codeGroupXdmList";
	}

//	vo.setCGshkey(vo.getCGshkey() == null ? "": vo.getCGshkey());
//	List<CodeGroup> list = service.selectList(vo);
//	model.addAttribute("list", list);
//    return "xdm/infra/codegroup/codeGroupXdmList";
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
}
