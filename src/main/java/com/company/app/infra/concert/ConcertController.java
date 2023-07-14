package com.company.app.infra.concert;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConcertController {

	@RequestMapping("/concertMain")
	public String concertMain() {
		return"usr/infra/concert/concert";
	}
	@RequestMapping("/concertDetail")
	public String concertDetail() {
		return"usr/infra/concert/concertDetail";
	}
}
