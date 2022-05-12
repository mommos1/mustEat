package com.board.dao;

import java.util.List;
import java.util.Map;

import com.board.domain.BoardVO;

public interface BoardDAO {
	
	public List<BoardVO> list() throws Exception;	
	
	// 피드백 Insert
	public int boardMessage(Map<String, Object> map) throws Exception;
	
	//게시물 작성
	public void contact(BoardVO vo) throws Exception;
	
	//게시물 보기
	public BoardVO jokbal_view(int bno) throws Exception;
	
	//게시물 수정
	public void jokbal_modify(BoardVO vo) throws Exception;
	
	public List<BoardVO> jokbal_comment() throws Exception;
	
	//게시물 후기작성
	public void jokbal_commentwrite(BoardVO vo) throws Exception;
	
	
}
