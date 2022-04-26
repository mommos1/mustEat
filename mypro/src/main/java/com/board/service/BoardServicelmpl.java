package com.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

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
	


	@Override
	public String boardMessage(Map<String, Object> map) throws Exception {
		
		System.out.println("Service : " + map.toString());
		
		int res = dao.boardMessage(map);		
		
		System.out.println("Service result : " + res);
		
		String msg = "Fail";
		
		if(res > 0) {
			msg = "Success";
		}
		
		
		return msg;
	}



	@Override
	public void contact(BoardVO vo) throws Exception {
		
		dao.contact(vo);
		
	}

}
