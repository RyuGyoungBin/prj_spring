package com.company.app.infra.member;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping("/memberXdmList")
	public String memberXdmList(@ModelAttribute("vo") MemberVo vo, Model model) {
		System.out.println("123");
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("memberList", list);
		} else {
//			by pass
		}
		return "xdm/infra/member/memberXdmList";
	}

	@RequestMapping("/memberinsert")
	public String memberinsert(Member dto) throws Exception {
		System.out.println("123");
		service.insertMember(dto);
		return "redirect:/indexUsrView";
	}

	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model) {
		Member member = service.selectOne(vo);
		List<Member> list = service.selectUploaded(vo);
		model.addAttribute("list", member);
		model.addAttribute("listUploaded", list);
//		List<Member> list = service.selectListPhone(vo);
//		model.addAttribute("listPhone", list);
		return "xdm/infra/member/memberXdmForm";
	}

	@RequestMapping("/memberupdate")
	public String memberupdate(Member dto) {
		service.updateMember(dto);
		return "redirect:/memberXdmList";
	}

	@RequestMapping("/memberupdateDel")
	public String memberupdateDel(Member dto) {
		service.updateDelMemeber(dto);
		return "redirect:/memberXdmList";
	}

	@RequestMapping("/memberdelete")
	public String memberdelete(Member dto) {
		service.deleteMember(dto);
		return "redirect:/memberXdmList";
	}

	@ResponseBody
	@RequestMapping("/loginUsrProc")
	public Map<String, Object> loginUsrProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();

		Member rtMember = service.selectId(vo);
		if (rtMember != null) {
			httpSession.setMaxInactiveInterval(60 * 60);
			httpSession.setAttribute("sessionId", vo.getId());
			httpSession.setAttribute("sessionSeq", rtMember.getSeq());
			httpSession.setAttribute("sessionType", rtMember.getMemberType());
			System.out.println(httpSession.getAttribute("sessionId"));
			System.out.println("seq = " + httpSession.getAttribute("sessionSeq"));
			System.out.println("type = " + httpSession.getAttribute("sessionType"));
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/loginXdmProc")
	public Map<String, Object> loginXdmProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();

		Member rtMember = service.selectIdXdm(vo);
		if (rtMember != null) {
			httpSession.setMaxInactiveInterval(60 * 60);
			httpSession.setAttribute("sessionId", vo.getId());
			httpSession.setAttribute("sessionSeq", rtMember.getSeq());
			httpSession.setAttribute("sessionType", rtMember.getMemberType());
			System.out.println(httpSession.getAttribute("sessionId"));
			System.out.println("seq = " + httpSession.getAttribute("sessionSeq"));
			System.out.println("type = " + httpSession.getAttribute("sessionType"));
			System.out.println("type = " + httpSession.getAttribute("sessionType").getClass());
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/UsridProc")
	public Map<String, Object> UsridProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<>();

		int rtMember = service.selectOneCount(vo);

		if (rtMember > 0) {
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<>();
		System.out.println(httpSession.getAttribute("sessionId"));
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping("/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		System.out.println("sdfsdfs");
		
String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
	      
      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
      
      System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		String aaa = (String)header.get("resultCode");
		System.out.println("header.get(\"resultlCode\"):"+header.get("resultCode"));
		System.out.println("header.get(\"resultlMsg\"):"+header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		System.out.println("items.size(): " + items.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		return "/home2";
	}

}
