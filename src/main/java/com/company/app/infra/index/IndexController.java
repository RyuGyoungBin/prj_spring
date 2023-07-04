package com.company.app.infra.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.infra.codegroup.CodeGroupServiceImpl;

@Controller
public class IndexController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	@RequestMapping("/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/index/loginXdmForm";
	}
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	@RequestMapping("/singupUsrForm")
	public String singupUsrForm() {
		return "usr/infra/index/singupUsrForm";
	}
	
	
	
	
	

}
