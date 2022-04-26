package com.gjwnsqja.mokwon;

import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.board.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	BoardService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/message.do", method = RequestMethod.GET) public
	 * String homeMessage(@RequestParam Map<String, Object> map) throws Exception {
	 * 
	 * 
	 * // Map, List - Collection?
	 * 
	 * 
	 * System.out.println("여기오냐? : " + map.toString());
	 * 
	 * String msg = service.boardMessage(map);
	 * 
	 * System.out.println("Controller msg : " + msg);
	 * 
	 * return msg;
	 * 
	 * }
	 */

}
