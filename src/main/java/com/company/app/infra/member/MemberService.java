package com.company.app.infra.member;

import java.util.List;

public interface MemberService {
	
	public int selectOneCount(MemberVo vo);

	public List<Member> selectList(MemberVo vo);
	
	public int insertMember(Member dto);
	
	public int insertAddress(Member dto);
	
	public int insertPhone(Member dto);
}
