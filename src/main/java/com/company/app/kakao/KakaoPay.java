package com.company.app.kakao;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.concert.Concert;
import com.company.app.concert.ConcertServiceImpl;
import com.company.app.concert.ConcertVo;

@Controller
public class KakaoPay {
	
	@Autowired
	ConcertServiceImpl consertServiceImpl;
	
	String pg_token = "";
	String tid;
	String partner_order_id = "";
	String partner_user_id = ""; 
	String[] concertAddressSeat_seqArray;
	
	@RequestMapping("/kakao/pay")
	@ResponseBody
	public String kakaopay(ConcertVo vo, Concert dto, HttpSession httpSession) {
		String item = vo.getConcertTitle()+"의티켓";
		
		
		Integer total_amount = vo.getTotalPrice();
		partner_order_id = "cts_order";
		partner_user_id = (String) httpSession.getAttribute("sessionId");
		dto.setMemberSeq((String) httpSession.getAttribute("sessionSeq"));
		dto.setPartner_order_id(partner_order_id);
		dto.setPartner_user_id(partner_user_id);
		try {
			String item_name = URLEncoder.encode(item, "UTF-8");
			System.out.println("item_name : "+item_name);
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id="+partner_order_id+"&partner_user_id="+partner_user_id+"&item_name="+item_name+"&quantity=1&total_amount="+total_amount+"&tax_free_amount=0&approval_url=http://localhost//kakao/pay/approval&fail_url=http://localhost/mymenuUsrView&cancel_url=http://localhost/mymenuUsrView";
			OutputStream output = httpUrl.getOutputStream();
			DataOutputStream dataOutput = new DataOutputStream(output);
			dataOutput.writeBytes(parameter);
			dataOutput.flush();
			dataOutput.close();
			
			int result = httpUrl.getResponseCode();
			
			InputStream inputStream;
			if(result == 200) {
				inputStream = httpUrl.getInputStream();
			} else {
				inputStream = httpUrl.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader buffer = new BufferedReader(reader);
			
			String token = buffer.readLine();
			String[] array = token.split(",");
			String[] tidArray = array[0].split(":");
			String tidFin = tidArray[1].substring(1, tidArray[1].length()-1);
			tid = tidFin;
			concertAddressSeat_seqArray = dto.getConcertAddressSeat_seqArray();
			dto.setTid(tid);
			System.out.println(tid);
			consertServiceImpl.insertKakaoReady(dto);
			
			return token;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
	
	
	@RequestMapping("/kakao/pay/approval")
	public String kakaopay_approval(@RequestParam("pg_token") String pgToken, Concert dto){
		System.out.println("tid : "+tid);
		System.out.println("partner_order_id : "+partner_order_id);
		System.out.println("partner_user_id : "+partner_user_id);
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&tid="+tid+"&partner_order_id="+partner_order_id+"&partner_user_id="+partner_user_id+"&pg_token="+pgToken;
			OutputStream output = httpUrl.getOutputStream();
			DataOutputStream dataOutput = new DataOutputStream(output);
			dataOutput.writeBytes(parameter);
			dataOutput.flush();
			dataOutput.close();
			
			int result = httpUrl.getResponseCode();
			
			InputStream inputStream;
			if(result == 200) {
				inputStream = httpUrl.getInputStream();
			} else {
				inputStream = httpUrl.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader buffer = new BufferedReader(reader);
			
			// 결제 테이블 등록
			dto.setTid(tid);
			dto.setConcertAddressSeat_seqArray(concertAddressSeat_seqArray);
			
			consertServiceImpl.approvalTicket(dto);
			// 좌석 정보 업데이트
//			consertServiceImpl.asdadsf(dto)
			
			
			return "/close";
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}";
	}
	
	@RequestMapping("/kakao/pay/cancel")
	@ResponseBody
	public String kakaopay_cancel(Concert dto, ConcertVo vo, HttpSession httpSession){
		tid = vo.getTid();
		Integer cancel_amount;
		cancel_amount = vo.getTotalPrice();
		String memberSeq = (String) httpSession.getAttribute("sessionSeq");
		dto.setConcertAddressSeat_seqArray(vo.getGetConcertAddressSeat_seqArray());
		System.out.println(dto.getConcertAddressSeat_seqArray());
		System.out.println("tid : " + tid);
		System.out.println("cancel_amount : "+cancel_amount);
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/cancel");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&tid="+tid+"&cancel_amount="+cancel_amount+"&cancel_tax_free_amount=0";
			OutputStream output = httpUrl.getOutputStream();
			DataOutputStream dataOutput = new DataOutputStream(output);
			dataOutput.writeBytes(parameter);
			dataOutput.flush();
			dataOutput.close();
			
			int result = httpUrl.getResponseCode();
			
			InputStream inputStream;
			if(result == 200) {
				inputStream = httpUrl.getInputStream();
			} else {
				inputStream = httpUrl.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader buffer = new BufferedReader(reader);
			
			// 결제 테이블 등록
			// 좌석 정보 업데이트
//			consertServiceImpl.asdadsf(dto)
			
			
			return "redirect:/mymenuUsrView?memberSeq="+memberSeq;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}";
	}
}
