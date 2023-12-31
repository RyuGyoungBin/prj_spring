package com.company.app.concert;

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
public class ConcertServiceImpl implements ConcertService {

	@Autowired
	ConcertDao dao;

	@Override
	public int selectOneCount(ConcertVo vo) {return dao.selectOneCount(vo);}

	@Override
	public List<Concert> selectList(ConcertVo vo) {return dao.selectList(vo);}

	@Override
	public Concert selectOne(ConcertVo vo) {return dao.selectOne(vo);}

	@Override
	public int selectSeatCount(ConcertVo vo) {return dao.selectSeatCount(vo);}
	
	@Override
	public List<Concert> selectDate(ConcertVo vo) {return dao.selectDate(vo);}
	
	@Override
	public List<Concert> selectSeat(ConcertVo vo) {return dao.selectSeat(vo);}
	
	@Override
	public List<Concert> selectSeatGroup(ConcertVo vo) {return dao.selectSeatGroup(vo);}
	
	@Override
	public List<Concert> selectSeatRow(ConcertVo vo) {return dao.selectSeatRow(vo);}
	
	@Override
	public List<Concert> selectUploaded(ConcertVo vo) {return dao.selectUploaded(vo);}

	@Override
	public List<Concert> selectConcertList(ConcertVo vo) {return dao.selectConcertList(vo);}
	
	@Override
	public Concert selectConcertOne(ConcertVo vo) {return dao.selectConcertOne(vo);}
	
	@Override
	public List<Concert> selectTicket(ConcertVo vo) {return dao.selectTicket(vo);}
	
	@Override
	public List<Concert> selectReview(ConcertVo vo) {return dao.selectReview(vo);}
	
	@Override
	public int insertConcert(Concert dto) throws Exception {
		dao.insertConcert(dto);
		dao.insertConcertAddress(dto);
		dao.insertConcertDate(dto);
		dao.insertConcertCasting(dto);
		dao.insertConcertCastingGroup(dto);
		
		uploadFiles(dto.getUploadImgProfile(), dto, "concertUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
    	uploadFiles(dto.getUploadImg(), dto, "concertUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		return 0;
	}

	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		return localDateTimeString;
	}
	
	public void uploadFiles(MultipartFile[] multipartFiles, Concert dto, String tableName, int type, int maxNumber) throws Exception {
		
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
	public int insertSeat(Concert dto) {
//		String seatRow = dto.getSeatRow();
//		Integer seatCol = dto.getSeatCol();
//		Integer colNumber = 11;
//		Integer seatRank = dto.getSeatRank();
//		Integer seatRankPrice = dto.getSeatRankPrice();
//		String concertDate_seq = dto.getConcertDate_seq();
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
		
//		seatRow = "b";
//		seatCol = 1;
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
//		seatRow = "c";
//		seatCol = 1;
//		seatRank = 1;
//		seatRankPrice = 15000;
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
//		seatRow = "d";
//		seatCol = 1;
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
//		seatRow = "e";
//		seatCol = 1;
//		seatRank = 2;
//		seatRankPrice = 13000;
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
//		seatRow = "f";
//		seatCol = 1;
//		for(int i=1;i<colNumber+1;i++) {
//			dto.setSeatRow(seatRow);
//			dto.setSeatCol(seatCol);
//			dto.setSeatRank(seatRank);
//			dto.setSeatRankPrice(seatRankPrice);
//			dto.setConcertDate_seq(concertDate_seq);
//			seatCol++;
//			dao.insertSeat(dto);
//		}
		
		return 0;
	}

	@Override
	public int deleteConcert(Concert dto) {
		dao.deleteconcertGroup(dto);
		dao.deleteconcertReview(dto);
		dao.deleteconcertTicket(dto);
		dao.deleteconcertAddressSeat(dto);
		dao.deleteconcertDate(dto);
		dao.deleteconcertAddress(dto);
		dao.deleteConcert(dto);
		return 0;
	}

	@Override
	public int updateConcert(Concert dto) {
		dao.updateconcertGroup(dto);
		dao.updateconcertDate(dto);
		dao.updateconcertAddress(dto);
		dao.updateConcert(dto);
		return 0;
	}

	@Override
	public int ueleteConcert(Concert dto) {
		dao.ueleteconcertGroup(dto);
		dao.ueleteconcertDate(dto);
		dao.ueleteconcertAddress(dto);
		dao.ueleteConcert(dto);
		return 0;
	}

	@Override
	public int insertTicket(Concert dto) {
		for(int i = 0 ; i < dto.getSeatColArray().length ; i++) {
			dto.setSeatCol(dto.getSeatColArray()[i]);
			dto.setSeatRow(dto.getSeatRowArray()[i]);
			dao.ticketSuccess(dto);
			dto.setConcertAddressSeat_seq(dto.getConcertAddressSeat_seqArray()[i]);
		}
		for(int i = 0 ; i < dto.getConcertAddressSeat_seqArray().length ; i++) {
			dto.setConcertAddressSeat_seq(dto.getConcertAddressSeat_seqArray()[i]);
			dao.insertTicket(dto);
		}
		return 0;
	}
	
	@Override
	public int insertKakaoReady(Concert dto) {
		for(int i = 0 ; i < dto.getConcertAddressSeat_seqArray().length ; i++) {
			dto.setConcertAddressSeat_seq(dto.getConcertAddressSeat_seqArray()[i]);
			dao.insertKakaoReady(dto);
		}
		return 0;
	}

	@Override
	public int approvalTicket(Concert dto) {
		for(int i = 0 ; i < dto.getConcertAddressSeat_seqArray().length ; i++) {
			dto.setConcertAddressSeat_seq(dto.getConcertAddressSeat_seqArray()[i]);
			dao.approvalTicket(dto);
			dao.approvalSeat(dto);
		}
		return 0;
	}
	
	@Override
	public int cancelTicket(Concert dto) {
		for(int j = 0 ; j < dto.getConcertTicket_seqArray().length ; j++) {
			dto.setConcertTicket_seq(dto.getConcertTicket_seqArray()[j]);
			dao.deleteconcertReview(dto);
		}
		
		for(int i = 0 ; i < dto.getConcertAddressSeat_seqArray().length ; i++) {
			dao.deleteTicket(dto);
			dto.setConcertAddressSeat_seq(dto.getConcertAddressSeat_seqArray()[i]);
			dao.deleteTicketSeat(dto);
		}
		return 0;
	}
	


}
