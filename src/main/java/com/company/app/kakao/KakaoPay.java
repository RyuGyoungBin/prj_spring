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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.concert.ConcertServiceImpl;
import com.company.app.concert.ConcertVo;

@Controller
public class KakaoPay {
	
	@Autowired
	ConcertServiceImpl consertServiceImpl;
	
	String pg_token = "";
	
	@RequestMapping("/kakao/pay")
	@ResponseBody
	public String kakaopay(ConcertVo vo) {
		String item_name = vo.getConcertTitle()+" 티켓";
		String total_amount = vo.getTotalPrice();
		System.out.println(item_name);
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name="+item_name+"&quantity=1&total_amount="+total_amount+"&tax_free_amount=0&approval_url=http://localhost//kakao/pay/approval&fail_url=http://localhost/mymenuUsrView&cancel_url=http://localhost/mymenuUsrView";
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
			return buffer.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
	
	
	@RequestMapping("/kakao/pay/approval")
	@ResponseBody
	public String kakaopay_approval(){
		
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&tid=T1234567890123456789&partner_order_id=partner_order_id&partner_user_id=partner_user_id&pg_token=xxxxxxxxxxxxxxxxxxxx";
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
//			consertServiceImpl.asdf
			// 좌석 정보 업데이트
//			consertServiceImpl.asdadsf(dto)
			
			
			return buffer.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}";
	}
}
