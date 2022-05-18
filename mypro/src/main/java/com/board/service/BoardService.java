package com.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.board.domain.BoardVO;

public interface BoardService {
		
	public List<BoardVO> list() throws Exception;	
	
	// 피드백 Insert
	/* public String boardMessage(Map<String, Object> map) throws Exception; */
	
	public void contact(BoardVO vo) throws Exception;
	
	//게시물 조회
	public BoardVO jokbal_view(int bno) throws Exception;
	
	//게시물 내 후기 작성
	public void jokbal_commentwrite(BoardVO vo)throws Exception;
	
	//게시물 후기 조회
	public List<BoardVO> jokbal_comment(int bno) throws Exception;
	
	//게시물 수정
	public void modify(BoardVO vo) throws Exception;
	
	//회원가입
	public void memberJoin(BoardVO vo)throws Exception;
	
	//로그인
	public BoardVO login(BoardVO vo)throws Exception;
	
	//로그아웃
	public void logout(HttpSession session)throws Exception;
	
	
}
