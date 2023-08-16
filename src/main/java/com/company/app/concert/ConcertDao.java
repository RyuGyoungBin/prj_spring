package com.company.app.concert;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ConcertDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.company.app.concert.ConcertMapper";

	public int selectOneCount(ConcertVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Concert> selectList(ConcertVo vo){return sqlSession.selectList(namespace +".selectList", vo);}
	public int selectSeatCount(ConcertVo vo){ return sqlSession.selectOne(namespace + ".selectSeatCount", vo); }
	public List<Concert> selectSeat(ConcertVo vo){return sqlSession.selectList(namespace +".selectSeat", vo);}
	public Concert selectOne(ConcertVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public List<Concert> selectUploaded(ConcertVo vo){return sqlSession.selectList(namespace +".selectUploaded", vo);}
	public List<Concert> selectConcertList(ConcertVo vo){return sqlSession.selectList(namespace + ".selectConcertList", vo);}
	public Concert selectConcertOne(ConcertVo vo) {return sqlSession.selectOne(namespace + ".selectConcertOne", vo);}
	public List<Concert> selectSeatGroup(ConcertVo vo){return sqlSession.selectList(namespace +".selectSeatGroup", vo);}
	public List<Concert> selectSeatRow(ConcertVo vo){return sqlSession.selectList(namespace +".selectSeatRow", vo);}
	public List<Concert> selectDate(ConcertVo vo){return sqlSession.selectList(namespace +".selectDate", vo);}
	

	public int insertConcert(Concert dto) {return sqlSession.insert(namespace+".insertConcert", dto);}
	public int insertConcertAddress(Concert dto) {return sqlSession.insert(namespace+".insertConcertAddress", dto);}
	public int insertConcertDate(Concert dto) {return sqlSession.insert(namespace+".insertConcertDate", dto);}
	public int insertConcertCasting(Concert dto) {return sqlSession.insert(namespace+".insertConcertCasting", dto);}
	public int insertConcertCastingGroup(Concert dto) {return sqlSession.insert(namespace+".insertConcertCastingGroup", dto);}
	public int insertUploaded(Concert dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }

}
