package com.company.app.infra.excode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ExCodeDao {

	@Inject
	@Resource(name="sqlSession")
	public SqlSession sqlSession;
	public String namespace = "com.company.app.infra.excode.ExCodeMapper";
	
	public List<ExCode> selectList(ExCodeVo vo){
		return sqlSession.selectList(namespace +".selectList", vo);
	}
	
	public ExCode selectOne(ExCodeVo vo) {
		return sqlSession.selectOne(namespace +".selectOne", vo);
	}
	public int update(ExCode dto) {
		return sqlSession.update(namespace +".update", dto);
	}
	
	public int delete(ExCode dto) {
		return sqlSession.delete(namespace +".delete", dto);
	}
	
	public int insert(ExCode dto) {
		return sqlSession.insert(namespace +".insert", dto);
	}
	
	public int updateDel(ExCode dto) {
		return sqlSession.update(namespace +".updateDel", dto);
	}
	
	public List<ExCode> selectJoin(ExCodeVo vo) {
		return sqlSession.selectList(namespace +".selectListJoin", vo);
	}
	public ExCode selectOneJoin(ExCodeVo vo) {
		return sqlSession.selectOne(namespace +".selectOneJoin", vo);
	}
	

}
