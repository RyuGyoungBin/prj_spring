package com.company.app.concert;

import java.util.List;

public interface ConcertService {

	public int selectOneCount(ConcertVo vo);
	public List<Concert> selectList(ConcertVo vo);
	public int selectSeatCount(ConcertVo vo);
	public List<Concert> selectSeat(ConcertVo vo);
	public Concert selectOne(ConcertVo vo);
	public List<Concert> selectUploaded(ConcertVo vo);
	public List<Concert> selectConcertList(ConcertVo vo);

	public int insertConcert(Concert dto) throws Exception;


}
