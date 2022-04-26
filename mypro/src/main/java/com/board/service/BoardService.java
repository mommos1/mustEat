package com.board.service;

import java.util.List;
import java.util.Map;

import com.board.domain.BoardVO;

public interface BoardService {
		
	public List<BoardVO> list() throws Exception;
	
	
	// 피드백 Insert
	public String boardMessage(Map<String, Object> map) throws Exception;
	
	public void contact(BoardVO vo) throws Exception;
	
}
