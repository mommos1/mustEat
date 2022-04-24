package com.gjwnsqja.mokwon;

import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	 
private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BoardController.class);
	
@Inject
BoardService service;

 @RequestMapping(value = "/list", method = RequestMethod.GET)
 public void getList(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();	
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);
   
 }


}