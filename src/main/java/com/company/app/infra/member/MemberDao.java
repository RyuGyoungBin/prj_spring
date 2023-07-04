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
	
	public List<Member> selectList(){return sqlSession.selectList(namespace +".selectList", "");}
}