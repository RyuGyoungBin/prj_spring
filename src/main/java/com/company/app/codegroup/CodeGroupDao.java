package com.company.app.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.company.app.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	
	public CodeGroup selectOne(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public int update(CodeGroup dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(CodeGroup dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(CodeGroup dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int updateDel(CodeGroup dto) {
		return sqlSession.update(namespace + ".updateDel", dto);
	}
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}
}
