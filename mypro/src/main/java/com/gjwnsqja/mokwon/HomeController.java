package com.gjwnsqja.mokwon;


import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.domain.BoardVO;
import com.board.service.BoardService;
import com.board.dao.BoardDAO;
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
	public String home(Locale locale, Model model, BoardVO vo) {
		
		logger.info("메인 페이지 진입");
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
