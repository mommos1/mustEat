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

	//맛집 등록
	@Override
	public void contact(BoardVO vo) throws Exception {
		
		sql.insert(namespace + ".contact", vo);
		
	}

	//맛집보기
	@Override
	public BoardVO jokbal_view( int bno) throws Exception {
		
		return sql.selectOne(namespace + ".jokbal_view", bno);
	}

	//맛집 수정
	@Override
	public void jokbal_modify(BoardVO vo) throws Exception {
		
		sql.update(namespace + ".jokbal_modify", vo);
		
	}
	
	//맛집 삭제
	@Override
	public void delete(int bno) throws Exception {
		sql.delete(namespace + ".delete", bno);
		
	}
	
	//맛집 내 후기 작성
	@Override
	public void jokbal_commentwrite(BoardVO vo) throws Exception {
		sql.insert(namespace + ".jokbal_commentwrite", vo);
	}
	
	//맛집 후기 삭제
	@Override
	public void delete_comment(int bno) throws Exception {
		sql.delete(namespace + ".delete_comment", bno);
		
	}

	//게시물 후기 조회
	@Override
	public List<BoardVO> jokbal_comment(int bno) throws Exception {
		
		return sql.selectList(namespace + ".jokbal_comment", bno);
		
	}
	
	//쿠폰 조회
	@Override
	public List<BoardVO> musteat_coupon(int bno) throws Exception {
		return sql.selectList(namespace + ".musteat_coupon", bno);
	}
	
	//쿠폰번호 조회
	public List<BoardVO> musteat_couponNum(BoardVO boardVo) throws Exception {
		return sql.selectList(namespace + ".couponNum", boardVo);
	}

	//회원가입
	@Override
	public void memberJoin(BoardVO vo) throws Exception {
		sql.insert(namespace + ".memberJoin", vo);	
	}
	
	//아이디 중복체크
	@Override
	public int idCheck(String id) throws Exception {
		int cnt = sql.selectOne(namespace + ".idCheck", id);
		return cnt;
	}

	//로그인
	@Override
	public BoardVO login(BoardVO vo) throws Exception {
		return sql.selectOne(namespace + ".memberLogin", vo);
	}
	
	
	
	// 방문횟수 int 조회
	@Override
	public int selectViewCnt(BoardVO boardVo) throws Exception {
		
		return sql.selectOne(namespace + ".selectViewCnt", boardVo);
		
	}


	// 방문횟수  업데이트
	@Override
	public void updateViewCnt(BoardVO boardVo) throws Exception {

		int cnt = sql.update(namespace + ".updateViewCnt", boardVo);
		
		System.out.println(cnt + "여기 DAO임 viewCnt");
	}

	// 쿠폰 갯수 조회
	@Override
	public int selectCouponCnt(BoardVO boardVo) throws Exception {
		
		return sql.selectOne(namespace + ".selectCouponCnt", boardVo);
	}


	// 쿠폰 발급
	@Override
	public int insertCoupon(BoardVO boardVo) throws Exception {
		
		return sql.insert(namespace + ".insertCoupon", boardVo);
		
	}



}




























