package com.laptrinhjavaweb.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "newFeedControllerOfWeb")
public class NewFeedController {
	@RequestMapping(value = "/trang-chu/newFeed", method = RequestMethod.GET)
	public String homePage() {
		return "web/new_feed";
	}
}
