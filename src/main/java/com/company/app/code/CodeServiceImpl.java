package com.company.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.app.codegroup.CodeGroupVo;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectList() {
		
		return dao.selectList();
	}
	
	

}
