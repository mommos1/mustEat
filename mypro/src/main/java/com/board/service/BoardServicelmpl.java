package com.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.domain.BoardVO;
import com.board.dao.BoardDAO;


@Service
public class BoardServicelmpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	//맛집 리스트 
	@Override
	public List<BoardVO> list() throws Exception {
		
		return dao.list();
		
	}	

	//맛집 등록
	@Override
	public void contact(BoardVO vo) throws Exception {
		
		dao.contact(vo);
		
	}

	//맛집 조회
	@Override
	public BoardVO jokbal_view(int bno) throws Exception {
		return dao.jokbal_view(bno);
	}
	
	//게시물 내 후기
	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.jokbal_modify(vo);
		
	}

	//게시물 후기 조회
	@Override
	public List<BoardVO> jokbal_comment(int bno) throws Exception {
		
		return dao.jokbal_comment(bno);
	}

	//게시물 후기 작성
	@Override
	public void jokbal_commentwrite(BoardVO vo) throws Exception {
		
		dao.jokbal_commentwrite(vo);
		
	}
	
	//회원가입
	@Override
	public void memberJoin(BoardVO vo) throws Exception {
		dao.memberJoin(vo);
		
	}

	//로그인
	@Override
	public BoardVO login(BoardVO vo) throws Exception {
		return dao.login(vo);
	}

	//로그아웃
	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();
		
	}

	//맛집 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
		
	}

	//댓글 삭제
	@Override
	public void delete_comment(int bno) throws Exception {
		dao.delete_comment(bno);
		
	}

}
