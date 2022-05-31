package com.gjwnsqja.mokwon;

import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.BoardVO;
import com.board.service.BoardService;
import com.mysql.cj.Session;
import com.board.dao.BoardDAO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	 
private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BoardController.class);
	
@Inject

@Autowired
BoardService service;

	/*
	 * @RequestMapping(value = "/night", method = RequestMethod.GET) public void
	 * getList(Model model) throws Exception {
	 * 
	 * logger.info("족발 페이지 진입"); List list = null; list = service.list();
	 * System.out.println(list.toString()); model.addAttribute("list",list); }
	 */
 
 
 @RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void getContact() throws Exception {logger.info("매장등록 페이지 진입");}
 
 
 // 등록하기 버튼
 @RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String posttContact(BoardVO vo) throws Exception {
	 
	 service.contact(vo);
	 return "redirect:/board/contact";
	 
 }
 
 //게시물 조회 댓글 조회 GET
 @RequestMapping(value = "/nightEat/night_view", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno,
							   @RequestParam("userId") String userId,
							   Model model) throws Exception {
	 
	 	BoardVO vo = service.jokbal_view(bno);	 
	 	model.addAttribute("jokbal_view",vo);
	 
	 	List jokbal_comment = null;
	 	jokbal_comment = service.jokbal_comment(bno);
	 	
	 	// --------------------------------------------------------
	 	BoardVO boardVo = new BoardVO();
	 	boardVo.setUserId(userId);
	 	boardVo.setBno(bno);
	 	
	 	System.out.println(boardVo.toString() + "이거 컨트롤러 boardVo");
	 	
	 	// 조회수 업데이트 서비스
	 	service.updateViewCnt(boardVo);
	 	
	 	model.addAttribute("jokbal_comment",jokbal_comment);
	 
 }
 
 //게시물 댓글 작성 POST
 @RequestMapping(value = "/nightEat/night_view", method = RequestMethod.POST)
	public String postJokbal_comment(BoardVO vo) throws Exception {
	 
		service.jokbal_commentwrite(vo);
	 return "redirect:/board/nightEat/night_view?bno=" + vo.getBno();	 
} 
 
 //족발 맛집 리스트 (김삿갓 족발보쌈)
 @RequestMapping(value = "/nightEat/jokbal", method = RequestMethod.GET)
	public void getJokbal(Model model) throws Exception {
	 
	 	List list = null;
	 	
	 	list = service.list();
	 	
	 	System.out.println(list.toString());
	 	
	 	
	 	model.addAttribute("list",list);		
	}
 
 //치킨 맛집 리스트
 @RequestMapping(value = "/nightEat/chicken", method = RequestMethod.GET)
	public void getChickenl(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);		
	}
 
//피자 맛집 리스트
@RequestMapping(value = "/nightEat/pizza", method = RequestMethod.GET)
	public void getPizza(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);		
	}

//닭발 맛집 리스트
@RequestMapping(value = "/nightEat/chickenfeet", method = RequestMethod.GET)
	public void getChickenfeet(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);		
	}

//막창 맛집 리스트
@RequestMapping(value = "/nightEat/makchang", method = RequestMethod.GET)
	public void getMakchang(Model model) throws Exception {
	 
	 	List list = null;
	 	list = service.list();
	 	System.out.println(list.toString());
	 	model.addAttribute("list",list);		
	}
 
 //게시물 수정
 @RequestMapping(value = "/nightEat/night_modify", method = RequestMethod.GET)
	public void getJokbal_modify(@RequestParam("bno") int bno, Model model) throws Exception {
	 
	 BoardVO vo = service.jokbal_view(bno);
	 
	 model.addAttribute("jokbal_view",vo);
	 
 }
 
 //족발 맛집 수정
 @RequestMapping(value = "/nightEat/night_modify", method = RequestMethod.POST)
 public String postModify(BoardVO vo) throws Exception {

  service.modify(vo);
    
  return "redirect:/board/nightEat/night_view?bno=" + vo.getBno();
 }
 
	//맛집 쿠폰 수정 GET
	@RequestMapping(value = "/nightEat/night_coupon", method = RequestMethod.GET)
		public void getJokbal_coupon(@RequestParam("bno") int bno, 
												@RequestParam("userId") String	userId , 
												Model model) throws Exception {
		 
		List musteat_coupon = null;
		
		// BoardVO 생성 
		BoardVO boardVo = new BoardVO();
		boardVo.setUserId(userId);
		boardVo.setBno(bno);
		
		// 리뷰 작성 횟수, 방문횟수, 유저아이디 출력
		musteat_coupon = service.musteat_coupon(boardVo);
		
		
		
	 	model.addAttribute("musteat_coupon",musteat_coupon);
	 	model.addAttribute("bno", bno);
		 
	}

	//맛집 쿠폰 수정 POST
	@RequestMapping(value = "/nightEat/night_coupon", method = RequestMethod.POST)
	public String postCoupon(BoardVO vo) throws Exception {
	
	service.modify(vo);
	  
	return "redirect:/board/nightEat/night_view?bno=" + vo.getBno();
	}
	
	//맛집 쿠폰 사용
	@RequestMapping(value ="/nightEat/night_couponUse", method = RequestMethod.GET)
	public void CouponUse() {	logger.info("쿠폰사용 페이지 진입"); }
	
	//맛집 삭제
	@RequestMapping(value = "/nightEat/night_delete", method = RequestMethod.GET)
		public String getJokbal_delete(@RequestParam("bno") int bno) throws Exception {
			 
			service.delete(bno);
			 
			return "redirect:/";
			 
	}
	
	//댓글 삭제
		@RequestMapping(value = "/nightEat/night_deletecomment", method = RequestMethod.GET)
			public String getJokbal_deletecomment(@RequestParam("bno") int bno, @RequestParam("no") int no) throws Exception {
				logger.info("댓글삭제 실행");
				
				 service.delete_comment(bno);
				 
				return "redirect:/board/nightEat/night_view?bno=" + no ;
				 
		}
 
 	//회원가입 GET
	@RequestMapping(value = "/sighup", method = RequestMethod.GET)
	public void sighupGET() throws Exception{
		
		logger.info("회원가입 페이지 진입");
		
	}
	
	//회원가입 POST
	@RequestMapping(value = "/sighup", method = RequestMethod.POST)
	public String sighupPOST(BoardVO vo)throws Exception {
		
		  service.memberJoin(vo); 
		  logger.info("회원가입 완료"); 
		  return "redirect:/board/login";
		
	}
	
	//아이디 중복확인
	@PostMapping("/idCheck")
	@ResponseBody
	public int IdCheck(@RequestParam("id") String id) throws Exception {
		
		logger.info("userIdCheck 진입");	
		logger.info("전달받은 id:"+id);
        int cnt = service.idCheck(id);
        logger.info("확인 결과:"+cnt);
        return cnt;
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {	logger.info("로그인 페이지 진입"); }
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String joinPOST(HttpServletRequest req,BoardVO vo, RedirectAttributes rttr)throws Exception {	
		
		BoardVO lvo = service.login(vo);
		HttpSession session = req.getSession();
		logger.info(""+vo);
		logger.info(""+lvo);
		
		if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            logger.info("로그인 실패");
            return "redirect:/board/login";
            
        }
        
        session.setAttribute("memberLogin", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        logger.info(""+lvo);
        
        return "redirect:/";   		
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String signout(HttpSession session) throws Exception {
	 logger.info("get logout");
	 
	 service.logout(session);
	   
	 return "redirect:/";
	}
	
	//쿠폰발행버튼
		@RequestMapping(value = "/couponAdd", method = RequestMethod.GET)
		public void couponAdd() throws Exception{
			
			logger.info("쿠폰추가");
			
		}
		
		
		// 쿠폰 발행
		@PostMapping("/couponAdd")
		@ResponseBody
		public int IdCheck(@RequestParam("userId") String userId, @RequestParam("bno") String bno) throws Exception {
			
			System.out.println("쿠폰발행 컨트롤러까지 넘어옴" + userId + bno);
			
			BoardVO vo = new BoardVO();
			vo.setUserId(userId);
			vo.setBno(Integer.parseInt(bno));
			
			int cnt = service.insertCoupon(vo);
	        return cnt;
		}




}