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
	 
	 logger.info("족발 페이지 진입");
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);  
 }
 
 
 @RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void getContact() throws Exception {logger.info("매장등록 페이지 진입");}
 
 @RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String posttContact(BoardVO vo) throws Exception {
	 
	 service.contact(vo);
	 return "redirect:/board/contact";
	 
 }
 
 //게시물 조회 댓글 조회
 @RequestMapping(value = "/nightEat/jokbal_view", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
	 
	 BoardVO vo = service.jokbal_view(bno);	 
	 model.addAttribute("jokbal_view",vo);
	 
	 	List jokbal_comment = null;
	 	jokbal_comment = service.jokbal_comment();
	 	System.out.println(jokbal_comment.toString());
	 	model.addAttribute("jokbal_comment",jokbal_comment);
	 
 }
 
 //게시물 댓글 포스트
 @RequestMapping(value = "/nightEat/jokbal_view", method = RequestMethod.POST)
	public String postJokbal_comment(BoardVO vo) throws Exception {
	 
		service.jokbal_commentwrite(vo);
	 return "redirect:/board/nightEat/jokbal_view?bno=" + vo.getBno();	 
} 
 
 @RequestMapping(value = "/nightEat/jokbal", method = RequestMethod.GET)
	public void getJokbal(Model model) throws Exception {
	 
	 List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);		
	}
 
 //게시물 수정
 @RequestMapping(value = "/nightEat/jokbal_modify", method = RequestMethod.GET)
	public void getJokbal_modify(@RequestParam("bno") int bno, Model model) throws Exception {
	 
	 BoardVO vo = service.jokbal_view(bno);
	 
	 model.addAttribute("jokbal_view",vo);
	 
 }
 
 @RequestMapping(value = "/nightEat/jokbal_modify", method = RequestMethod.POST)
 public String postModify(BoardVO vo) throws Exception {

  service.modify(vo);
    
  return "redirect:/board/nightEat/jokbal_view?bno=" + vo.getBno();
 }
 
 	//회원가입 페이지 이동
	@RequestMapping(value = "/sighup", method = RequestMethod.GET)
	public void sighupGET() {
		
		logger.info("회원가입 페이지 진입");
		
	}
	
	//회원가입 진행
	@RequestMapping(value = "/sighup", method = RequestMethod.POST)
	public String sighupPOST(BoardVO vo)throws Exception {
		
		service.memberJoin(vo);
		logger.info("회원가입 완료");
		return "redirect:/board/login";
		
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {	logger.info("로그인 페이지 진입"); }


}