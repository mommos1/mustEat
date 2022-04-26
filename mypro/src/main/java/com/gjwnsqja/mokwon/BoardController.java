package com.gjwnsqja.mokwon;

import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	 
private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BoardController.class);
	
@Inject
BoardService service;

 @RequestMapping(value = "/jokbal", method = RequestMethod.GET)
 public void getList(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);
   
 }
 
 
 @RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void getContact() throws Exception {}
 
 @RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String posttContact(BoardVO vo) throws Exception {
	 
	 service.contact(vo);
	 return "redirect:/board/contact";
	 
 }
 //게시물
 @RequestMapping(value = "/nightEat/jokbal_view", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
	 
	 BoardVO vo = service.jokbal_view(bno);
	 
	 model.addAttribute("jokbal_view",vo);
	 
 }
 
 
 
 @RequestMapping(value = "/nightEat/jokbal", method = RequestMethod.GET)
	public void getJokbal(Model model) throws Exception {
	 
	 List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);
		
	}


}