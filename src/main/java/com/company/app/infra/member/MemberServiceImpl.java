package com.company.app.infra.member;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.company.app.common.constants.Constants;




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
	public int insertMember(Member dto) throws Exception {
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
		
		uploadFiles(dto.getUploadImgProfile(), dto, "memberUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
    	uploadFiles(dto.getUploadImg(), dto, "memberUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadFile(), dto, "memberUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
    	
		return 1;
	}

	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		return localDateTimeString;
	}
	
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		}
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

	@Override
	public List<Member> selectUploaded(MemberVo vo) {
		return dao.selectUploaded(vo);
	}

	

}
