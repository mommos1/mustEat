package com.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.domain.BoardVO;
import com.board.dao.BoardDAO;


@Service
public class BoardServicelmpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Override
	public List<BoardVO> list() throws Exception {
		
		return dao.list();
		
	}	

	/*
	 * @Override public String boardMessage(Map<String, Object> map) throws
	 * Exception {
	 * 
	 * System.out.println("Service : " + map.toString());
	 * 
	 * int res = dao.boardMessage(map);
	 * 
	 * System.out.println("Service result : " + res);
	 * 
	 * String msg = "Fail";
	 * 
	 * if(res > 0) { msg = "Success"; }
	 * 
	 * return msg; }
	 */

	@Override
	public void contact(BoardVO vo) throws Exception {
		
		dao.contact(vo);
		
	}

	@Override
	public BoardVO jokbal_view(int bno) throws Exception {
		return dao.jokbal_view(bno);
	}
	
	//게시물 내 후기
	
	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.jokbal_modify(vo);
		
	}

	@Override
	public List<BoardVO> jokbal_comment() throws Exception {
		
		return dao.jokbal_comment();
	}

	@Override
	public void jokbal_commentwrite(BoardVO vo) throws Exception {
		
		dao.jokbal_commentwrite(vo);
		
	}
	
	@Override
	public void memberJoin(BoardVO vo) throws Exception {
		dao.memberJoin(vo);
		
	}

}
