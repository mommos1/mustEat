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
	
	//맛집 삭제
	public void delete(int bno) throws Exception;
	
	//댓글작성
	public List<BoardVO> jokbal_comment(int bno) throws Exception;
	
	public void delete_comment(int bno) throws Exception;
	
	//게시물 후기작성
	public void jokbal_commentwrite(BoardVO vo) throws Exception;
	
	//회원가입
	public void memberJoin(BoardVO vo)throws Exception;
	
	//로그인
	public BoardVO login(BoardVO vo)throws Exception;

	
}
