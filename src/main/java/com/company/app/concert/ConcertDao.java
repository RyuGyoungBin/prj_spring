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
	public Concert selectOne(ConcertVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int insertConcert(Concert dto) {return sqlSession.insert(namespace+".insertConcert", dto);}
	public int insertConcertAddress(Concert dto) {return sqlSession.insert(namespace+".insertConcertAddress", dto);}
	public int insertConcertDate(Concert dto) {return sqlSession.insert(namespace+".insertConcertDate", dto);}
	public int insertConcertCasting(Concert dto) {return sqlSession.insert(namespace+".insertConcertCasting", dto);}
	public int insertConcertCastingGroup(Concert dto) {return sqlSession.insert(namespace+".insertConcertCastingGroup", dto);}
	
	
}
