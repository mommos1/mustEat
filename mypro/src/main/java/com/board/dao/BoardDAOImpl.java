package com.board.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mappers.board";
	
	//게시물 목록
	@Override
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace + ".list");
	}

	// 피드백 Insert
	@Override
	public int boardMessage(Map<String, Object> map) throws Exception {
		
		System.out.println("Dao : " + map.toString());
		
		return sql.update(namespace + ".insertBoardMessage", map);
		
	}

}




























