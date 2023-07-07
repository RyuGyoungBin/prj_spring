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
		System.out.println(dto.getNumberArray());
		System.out.println(dto.getNumberArray().length);
		
		for(int i = 0 ; i < dto.getNumberArray().length ; i++) {
			dto.setNumber(dto.getNumberArray()[i]);
			dto.setPhoneMark(dto.getPhoneMarkArray()[i]);
//			dto.setDelNy(dto.getDelNyArray()[i]);
			dao.insertPhone(dto);
		}
		
		return 1;
	}

	@Override
	public Member selectOne(MemberVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int updateMember(Member dto) {
		dao.updateMember(dto);
		dao.updateMemberPhone(dto);
		dao.updateMemberAddress(dto);
		return 0;
	}


}
