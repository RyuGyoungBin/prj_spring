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
	@RequestMapping("/concertUsrTicketDate")
	public String concertUsrTicketDate() {
		return"usr/infra/concert/concertUsrTicketDate";
	}
	@RequestMapping("/concertUsrTicketSeat")
	public String concertUsrTicketSeat() {
		return"usr/infra/concert/concertUsrTicketSeat";
	}
}
