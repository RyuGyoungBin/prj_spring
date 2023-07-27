package com.company.app.infra.member;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



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
		System.out.println(dto.getPhoneMarkArray());
		System.out.println(dto.getPhoneMarkArray().length); 
		
		for(int i = 0 ; i < dto.getNumberArray().length ; i++) { 
			dto.setNumber(dto.getNumberArray()[i]);
			dto.setPhoneMark(dto.getPhoneMarkArray()[i]);
//			dto.setDelNy(dto.getDelNyArray()[i]);
			System.out.println(dto.getPhoneMark());
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

	@Override
	public List<Member> selectListPhone(MemberVo vo) {
		return dao.selectListPhone(vo);
	}

	@Override
	public int updateDelMemeber(Member dto) {
		dao.updateDelMember(dto);
		dao.updateDelMemberPhone(dto);
		dao.updateDelMemberAddress(dto);
		return 0;
	}

	@Override
	public Member selectId(MemberVo vo) {
		return dao.selectId(vo);
	}

	@Override
	public int deleteMember(Member dto) {
		dao.deleteMemberAddress(dto);
		dao.deleteMemberPhone(dto);
		dao.deleteMember(dto);
		return 0;
	}

	@Override
	public Member selectIdXdm(MemberVo vo) {
		return dao.selectIdXdm(vo);
	}
	


}
