package com.company.app.concert;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConcertServiceImpl implements ConcertService {

	@Autowired
	ConcertDao dao;

	@Override
	public int selectOneCount(ConcertVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Concert> selectList(ConcertVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Concert selectOne(ConcertVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int insertConcert(Concert dto) {
		dao.insertConcert(dto);
		dao.insertConcertAddress(dto);
		dao.insertConcertDate(dto);
		dao.insertConcertCasting(dto);
		dao.insertConcertCastingGroup(dto);
		return 0;
	}




}
