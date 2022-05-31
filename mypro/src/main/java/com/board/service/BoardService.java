package com.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.board.domain.BoardVO;

public interface BoardService {
		
	//맛집 리스트(jokbal_view 리스트 불러오기)
	public List<BoardVO> list() throws Exception;	
	
	//맛집 등록
	public void contact(BoardVO vo) throws Exception;
	
	//맛집 조회
	public BoardVO jokbal_view(int bno) throws Exception;
	
	//맛집 내 후기 작성
	public void jokbal_commentwrite(BoardVO vo)throws Exception;
	
	//맛집 후기 조회
	public List<BoardVO> jokbal_comment(int bno) throws Exception;
	
	//맛집 쿠폰 조회
	public List<BoardVO> musteat_coupon(BoardVO boardVo) throws Exception;
	
	//맛집 수정
	public void modify(BoardVO vo) throws Exception;
	
	//맛집 삭제
	public void delete(int bno) throws Exception;
	
	//댓글 삭제
	public void delete_comment(int bno) throws Exception;
	
	//회원가입
	public void memberJoin(BoardVO vo)throws Exception;
	
	//아이디 중복체크
	public int idCheck(String id) throws Exception;
	
	//로그인
	public BoardVO login(BoardVO vo)throws Exception;
	
	//로그아웃
	public void logout(HttpSession session)throws Exception;
	
	// 김삿갓 족발보쌈 조회수 증가
	public void updateViewCnt(BoardVO boardvo) throws Exception;
	
	
	// 쿠폰 발급
	public int insertCoupon(BoardVO boardVo) throws Exception;
	
	
}
