package com.company.app.concert;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConcertController {

	@RequestMapping("/concertUsrMain")
	public String concertMain() {
		return"usr/infra/concert/concert";
	}
	@RequestMapping("/concertUsrDetail")
	public String concertDetail() {
		return"usr/infra/concert/concertDetail";
	}
}
