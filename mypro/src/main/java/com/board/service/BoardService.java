package com.board.service;

import java.util.List;
import java.util.Map;

import com.board.domain.BoardVO;

public interface BoardService {
		
	public List<BoardVO> list() throws Exception;	
	
	// 피드백 Insert
	/* public String boardMessage(Map<String, Object> map) throws Exception; */
	
	public void contact(BoardVO vo) throws Exception;
	
	//게시물 조회
	public BoardVO jokbal_view(int bno) throws Exception;
	
	//게시물 내 후기
	public void jokbal_commentwrite(BoardVO vo)throws Exception;
	
	public List<BoardVO> jokbal_comment() throws Exception;
	
	//게시물 수정
	public void modify(BoardVO vo) throws Exception;
	
}
