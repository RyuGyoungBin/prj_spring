package com.company.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
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
	public ModelAndView concertList() {
		  ModelAndView mav = new ModelAndView();
	  
	  mav.setViewName("admin/concertList");
	  
	  return mav; 
	}
	

}
