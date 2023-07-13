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
	public List<Member> selectListPhone(MemberVo vo){
		return sqlSession.selectList(namespace +".selectListPhone", vo);
	}
	public int insertMember(Member dto) {
		return sqlSession.insert(namespace+".insertMember", dto);
	}
	public int insertAddress(Member dto) {
		return sqlSession.insert(namespace+".insertAddress", dto);
	}
	public int insertPhone(Member dto) {
		return sqlSession.insert(namespace+".insertPhone", dto);
	}
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int updateMember(Member dto) {
		return sqlSession.update(namespace+".updateMember", dto);
	}
	public int updateMemberPhone(Member dto) {
		return sqlSession.update(namespace+".updateMemberPhone", dto);
	}
	public int updateMemberAddress(Member dto) {
		return sqlSession.update(namespace+".updateMemberAddress", dto);
	}
	public int updateDelMember(Member dto) {
		return sqlSession.update(namespace+".updateDelMember", dto);
	}
	public int updateDelMemberPhone(Member dto) {
		return sqlSession.update(namespace+".updateDelMemberPhone", dto);
	}
	public int updateDelMemberAddress(Member dto) {
		return sqlSession.update(namespace+".updateDelMemberAddress", dto);
	}
	public Member selectId(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectId", vo);
	}
	
	public int deleteMember(Member dto) {
		return sqlSession.delete(namespace+".deleteMember", dto);
	}
	public int deleteMemberAddress(Member dto) {
		return sqlSession.delete(namespace+".deleteMemberAddress", dto);
	}
	public int deleteMemberPhone(Member dto) {
		return sqlSession.delete(namespace+".deleteMemberPhone", dto);
	}
}
