package net.hyosun.love.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.hyosun.love.model.WeatherVO;
import net.hyosun.love.service.WeatherService;

@Controller
@RequestMapping(value = "/test")
public class testController {

	@Autowired
	private WeatherService wService;

	@RequestMapping(value = "/test")
	public String test(Model model) throws IOException {

		List<WeatherVO> list = wService.getWeater("60", "74");
		model.addAttribute("TEST", list);

		return "/test/test";
	}

}
