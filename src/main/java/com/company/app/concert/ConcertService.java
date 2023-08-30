package com.company.app.concert;

import java.util.List;

public interface ConcertService {

	public int selectOneCount(ConcertVo vo);
	public List<Concert> selectList(ConcertVo vo);
	public int selectSeatCount(ConcertVo vo);
	public List<Concert> selectDate(ConcertVo vo);
	public List<Concert> selectSeat(ConcertVo vo);
	public List<Concert> selectSeatGroup(ConcertVo vo);
	public List<Concert> selectSeatRow(ConcertVo vo);
	public Concert selectOne(ConcertVo vo);
	public List<Concert> selectUploaded(ConcertVo vo);
	public List<Concert> selectConcertList(ConcertVo vo);
	public Concert selectConcertOne(ConcertVo vo);
	public List<Concert> selectTicket(ConcertVo vo);
	public List<Concert> selectReview(ConcertVo vo);

	public int insertConcert(Concert dto) throws Exception;
	public int insertSeat(Concert dto);
	public int insertTicket(Concert dto);
	public int insertKakaoReady(Concert dto);

	public int deleteConcert(Concert dto);
	
	public int updateConcert(Concert dto);
	public int approvalTicket(Concert dto);
	public int cancelTicket(Concert dto);
	
	public int ueleteConcert(Concert dto);

}
