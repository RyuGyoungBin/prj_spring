package com.company.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public int selectOneCount(MemberVo vo) {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public int insertMember(Member dto) {
		dao.insertMember(dto);
		dao.insertAddress(dto);
		dao.insertPhone(dto);
		return 1;
	}


}
