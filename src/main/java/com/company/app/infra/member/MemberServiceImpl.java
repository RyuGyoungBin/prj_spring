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
		return dao.insertMember(dto);
	}

	@Override
	public int insertAddress(Member dto) {
		return dao.insertAddress(dto);
	}

	@Override
	public int insertPhone(Member dto) {
		return dao.insertPhone(dto);
	}

	

}
