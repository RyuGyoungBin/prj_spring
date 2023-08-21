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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class KakaoPay {

	@RequestMapping("/kakaopay")
	@ResponseBody
	public String kakaopay() {
		try {
			System.out.println("sdfsd");
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost/mymenuUsrView&fail_url=http://localhost/mymenuUsrView&cancel_url=http://localhost/mymenuUsrView";
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
}
