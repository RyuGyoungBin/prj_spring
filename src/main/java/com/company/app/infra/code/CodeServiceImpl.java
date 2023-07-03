package com.company.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;


	@Override
	public List<Code> selectList(CodeVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Code selectOne(CodeVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Code dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Code dto) {
		return dao.insert(dto);
	}

	@Override
	public int updateDel(Code dto) {
		return dao.updateDel(dto);
	}

	@Override
	public Code selectOneJoin(CodeVo vo) {
		return dao.selectOneJoin(vo);
	}

	@Override
	public List<Code> selectListJoin(CodeVo vo) {
		return dao.selectListJoin(vo);
	}

	
	

}
