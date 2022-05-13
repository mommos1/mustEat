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
		return sql.selectList(namespace + ".list");
	}

	
	// 피드백 Insert
	@Override
	public int boardMessage(Map<String, Object> map) throws Exception {
		
		System.out.println("Dao : " + map.toString());
		
		return sql.update(namespace + ".insertBoardMessage", map);
		
	}

	@Override
	public void contact(BoardVO vo) throws Exception {
		
		sql.insert(namespace + ".contact", vo);
		
	}

	@Override
	public BoardVO jokbal_view( int bno) throws Exception {
		
		return sql.selectOne(namespace + ".jokbal_view", bno);
	}
	
	//게시물 내 후기
	@Override
	public void jokbal_commentwrite(BoardVO vo) throws Exception {
		sql.insert(namespace + ".jokbal_commentwrite", vo);
	}

	@Override
	public void jokbal_modify(BoardVO vo) throws Exception {
		
		sql.update(namespace + ".jokbal_modify", vo);
		
	}

	@Override
	public List<BoardVO> jokbal_comment() throws Exception {
		
		return sql.selectList(namespace + ".jokbal_comment");
		
	}

	//회원가입
	@Override
	public void memberJoin(BoardVO vo) throws Exception {
		sql.insert(namespace + ".memberJoin", vo);
		
	}

}




























