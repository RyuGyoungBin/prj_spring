package com.company.app.infra.member;

import java.util.List;

public interface MemberService {
	
	public int selectOneCount(MemberVo vo);

	public List<Member> selectList(MemberVo vo);
	public List<Member> selectListPhone(MemberVo vo);
	
	public int insertMember(Member dto);
	
	public Member selectOne(MemberVo vo);
	
	public int updateMember(Member dto);
	
	public int updateDelMemeber(Member dto);
	
	public Member selectId(MemberVo vo);
	
	public int deleteMember(Member dto);
	
}
