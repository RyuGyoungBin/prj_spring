package com.company.app.infra.excode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ExCodeServiceImpl implements ExCodeService {

	@Autowired 
	ExCodeDao dao;

	
	@Override
	public List<ExCode> selectList(ExCodeVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public ExCode selectOne(ExCodeVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(ExCode dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(ExCode dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(ExCode dto) {
		return dao.insert(dto);
	}

	@Override
	public int updateDel(ExCode dto) {
		return dao.updateDel(dto);
	}

	@Override
	public List<ExCode> selectJoin(ExCodeVo vo) {
		return dao.selectJoin(vo);
		
	}

	@Override
	public ExCode selectOneJoin(ExCodeVo vo) {
		return dao.selectOneJoin(vo);
	}


	

}
