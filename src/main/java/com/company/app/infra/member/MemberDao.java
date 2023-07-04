package com.company.app.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.company.app.infra.member.MemberMapper";
	
	public int selectOneCount(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Member> selectList(MemberVo vo){return sqlSession.selectList(namespace +".selectList", vo);}
	public int insertMember(Member dto) {
		return sqlSession.insert(namespace+".insertMember", dto);
	}
	public int insertAddress(Member dto) {
		return sqlSession.insert(namespace+".insertAddress", dto);
	}
	
	public int insertPhone(Member dto) {
		return sqlSession.insert(namespace+".insertPhone", dto);
	}
}
