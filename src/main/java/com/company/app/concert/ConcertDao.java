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
	public List<Concert> selectTicket(ConcertVo vo){return sqlSession.selectList(namespace +".selectTicketUsr", vo);}
	public List<Concert> selectReview(ConcertVo vo){return sqlSession.selectList(namespace +".selectReviewUsr", vo);}
	
	

	public int insertConcert(Concert dto) {return sqlSession.insert(namespace+".insertConcert", dto);}
	public int insertConcertAddress(Concert dto) {return sqlSession.insert(namespace+".insertConcertAddress", dto);}
	public int insertConcertDate(Concert dto) {return sqlSession.insert(namespace+".insertConcertDate", dto);}
	public int insertConcertCasting(Concert dto) {return sqlSession.insert(namespace+".insertConcertCasting", dto);}
	public int insertConcertCastingGroup(Concert dto) {return sqlSession.insert(namespace+".insertConcertCastingGroup", dto);}
	public int insertUploaded(Concert dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	public int insertSeat(Concert dto) {return sqlSession.insert(namespace + ".insertSeat", dto);}
	public int insertTicket(Concert dto) {return sqlSession.insert(namespace + ".insertTicket", dto);}
	
	public int deleteConcert(Concert dto) {return sqlSession.delete(namespace + ".deleteconcert", dto);}
	public int deleteconcertAddress(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertAddress", dto);}
	public int deleteconcertDate(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertDate", dto);}
	public int deleteconcertAddressSeat(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertAddressSeat", dto);}
	public int deleteconcertTicket(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertTicket", dto);}
	public int deleteconcertReview(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertReview", dto);}
	public int deleteconcertGroup(Concert dto) {return sqlSession.delete(namespace + ".deleteconcertGroup", dto);}
	
	public int updateConcert(Concert dto) {return sqlSession.update(namespace + ".updateconcert", dto);}
	public int updateconcertAddress(Concert dto) {return sqlSession.update(namespace + ".updateconcertAddress", dto);}
	public int updateconcertDate(Concert dto) {return sqlSession.update(namespace + ".updateconcertDate", dto);}
	public int updateconcertAddressSeat(Concert dto) {return sqlSession.update(namespace + ".updateconcertAddressSeat", dto);}
	public int updateconcertTicket(Concert dto) {return sqlSession.update(namespace + ".updateconcertTicket", dto);}
	public int updateconcertReview(Concert dto) {return sqlSession.update(namespace + ".updateconcertReview", dto);}
	public int updateconcertGroup(Concert dto) {return sqlSession.update(namespace + ".updateconcertGroup", dto);}
	public int ticketSuccess(Concert dto) {return sqlSession.update(namespace + ".ticketSuccess", dto);}
	
	public int ueleteConcert(Concert dto) {return sqlSession.update(namespace + ".ueleteconcert", dto);}
	public int ueleteconcertAddress(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertAddress", dto);}
	public int ueleteconcertDate(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertDate", dto);}
	public int ueleteconcertAddressSeat(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertAddressSeat", dto);}
	public int ueleteconcertTicket(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertTicket", dto);}
	public int ueleteconcertReview(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertReview", dto);}
	public int ueleteconcertGroup(Concert dto) {return sqlSession.update(namespace + ".ueleteconcertGroup", dto);}

	
}
