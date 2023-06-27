package com.company.app.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.app.codegroup.CodeGroup;
import com.company.app.codegroup.CodeGroupVo;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.company.app.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){return sqlSession.selectList(namespace +".selectList", "");}
	
	public Code selectOne(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Code dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Code dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int updateDel(Code dto) {
		return sqlSession.update(namespace + ".updateDel", dto);
	}
}
