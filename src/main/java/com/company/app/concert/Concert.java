package com.company.app.concert;

import org.springframework.web.multipart.MultipartFile;

public class Concert {
//	concert
	private String seq;
	private String concertType;
	private String concertTitle;
	private String concertDetailText;
	private Integer delNy;
	private Integer defaultNy;
	private String memberSeq;
//	concertAddress
	private String concertZipCode;
	private String concertSido;
	private String concertAddress;
	private String concertAddressDetail;
	private String concert_seq;
//	concertAddressSeat
	private String seatRow;
	private String seatCol;
	private Integer seatNy;
	private Integer seatRank;
	private Integer seatRankPrice;
	private Integer seatTotal;
	private Integer seatN;
	private String concertDate_seq;
//	kakaopay
	private String[] seatRowArray;
	private String[] seatColArray;
	private String[] concertAddressSeat_seqArray;
	private String[] concertTicket_seqArray;
	private String concertTicketSeqArray;
	private String concertAddressSeatSeqArray;
	private String tid;
	private String partner_order_id;
	private String partner_user_id;
	private Integer cnt;
	private String totalPrice;
//	concertDate
	private String concertDateSeq;
	private String concertDate;
	private String concertDateTime;
	private Integer dateDefaultNy;
	private String concertAddress_seq;
	private String concertDateMax;
	private String concertDateMin;
	private Integer concertDateYear;
	private Integer concertDateMonth;
//	concertTicket
	private String ticketDate;
	private String ticketDateRe;
	private String concertAddressSeat_seq;
//	concertReview
	private String content;
	private Integer concertGrade;
	private String concertReviewDate;
	private String concertTicket_seq;
//	concertCasting
	private String name;
//	concertCastingGroup
	private String concertCasting_seq;
//	uploaded
	private String tableName;

	private Integer type;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private String pseq;

	private MultipartFile[] uploadImg;
	private Integer uploadImgType;
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;

	private MultipartFile[] uploadImgProfile;
	private Integer uploadImgProfileType;
	private Integer uploadImgProfileMaxNumber;
	private String[] uploadImgProfileDeleteSeq;
	private String[] uploadImgProfileDeletePathFile;
	
	
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public Integer getConcertDateYear() {
		return concertDateYear;
	}
	public void setConcertDateYear(Integer concertDateYear) {
		this.concertDateYear = concertDateYear;
	}
	public Integer getConcertDateMonth() {
		return concertDateMonth;
	}
	public void setConcertDateMonth(Integer concertDateMonth) {
		this.concertDateMonth = concertDateMonth;
	}
	public Integer getSeatN() {
		return seatN;
	}
	public void setSeatN(Integer seatN) {
		this.seatN = seatN;
	}
	public Integer getSeatTotal() {
		return seatTotal;
	}
	public void setSeatTotal(Integer seatTotal) {
		this.seatTotal = seatTotal;
	}
	public String getConcertDateMax() {
		return concertDateMax;
	}
	public void setConcertDateMax(String concertDateMax) {
		this.concertDateMax = concertDateMax;
	}
	public String getConcertDateMin() {
		return concertDateMin;
	}
	public void setConcertDateMin(String concertDateMin) {
		this.concertDateMin = concertDateMin;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public MultipartFile[] getUploadImgProfile() {
		return uploadImgProfile;
	}
	public void setUploadImgProfile(MultipartFile[] uploadImgProfile) {
		this.uploadImgProfile = uploadImgProfile;
	}
	public Integer getUploadImgProfileType() {
		return uploadImgProfileType;
	}
	public void setUploadImgProfileType(Integer uploadImgProfileType) {
		this.uploadImgProfileType = uploadImgProfileType;
	}
	public Integer getUploadImgProfileMaxNumber() {
		return uploadImgProfileMaxNumber;
	}
	public void setUploadImgProfileMaxNumber(Integer uploadImgProfileMaxNumber) {
		this.uploadImgProfileMaxNumber = uploadImgProfileMaxNumber;
	}
	public String[] getUploadImgProfileDeleteSeq() {
		return uploadImgProfileDeleteSeq;
	}
	public void setUploadImgProfileDeleteSeq(String[] uploadImgProfileDeleteSeq) {
		this.uploadImgProfileDeleteSeq = uploadImgProfileDeleteSeq;
	}
	public String[] getUploadImgProfileDeletePathFile() {
		return uploadImgProfileDeletePathFile;
	}
	public void setUploadImgProfileDeletePathFile(String[] uploadImgProfileDeletePathFile) {
		this.uploadImgProfileDeletePathFile = uploadImgProfileDeletePathFile;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDateDefaultNy() {
		return dateDefaultNy;
	}
	public void setDateDefaultNy(Integer dateDefaultNy) {
		this.dateDefaultNy = dateDefaultNy;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getConcertType() {
		return concertType;
	}
	public void setConcertType(String concertType) {
		this.concertType = concertType;
	}
	public String getConcertTitle() {
		return concertTitle;
	}
	public void setConcertTitle(String concertTitle) {
		this.concertTitle = concertTitle;
	}
	public String getConcertDetailText() {
		return concertDetailText;
	}
	public void setConcertDetailText(String concertDetailText) {
		this.concertDetailText = concertDetailText;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getConcertZipCode() {
		return concertZipCode;
	}
	public void setConcertZipCode(String concertZipCode) {
		this.concertZipCode = concertZipCode;
	}
	public String getConcertSido() {
		return concertSido;
	}
	public void setConcertSido(String concertSido) {
		this.concertSido = concertSido;
	}
	public String getConcertAddress() {
		return concertAddress;
	}
	public void setConcertAddress(String concertAddress) {
		this.concertAddress = concertAddress;
	}
	public String getConcertAddressDetail() {
		return concertAddressDetail;
	}
	public void setConcertAddressDetail(String concertAddressDetail) {
		this.concertAddressDetail = concertAddressDetail;
	}
	public String getConcert_seq() {
		return concert_seq;
	}
	public void setConcert_seq(String concert_seq) {
		this.concert_seq = concert_seq;
	}
	public String getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}
	public String getSeatCol() {
		return seatCol;
	}
	public void setSeatCol(String seatCol) {
		this.seatCol = seatCol;
	}
	public Integer getSeatNy() {
		return seatNy;
	}
	public void setSeatNy(Integer seatNy) {
		this.seatNy = seatNy;
	}
	public Integer getSeatRank() {
		return seatRank;
	}
	public void setSeatRank(Integer seatRank) {
		this.seatRank = seatRank;
	}
	public Integer getSeatRankPrice() {
		return seatRankPrice;
	}
	public void setSeatRankPrice(Integer seatRankPrice) {
		this.seatRankPrice = seatRankPrice;
	}
	public String getConcertDate_seq() {
		return concertDate_seq;
	}
	public void setConcertDate_seq(String concertDate_seq) {
		this.concertDate_seq = concertDate_seq;
	}
	public String getConcertDate() {
		return concertDate;
	}
	public void setConcertDate(String concertDate) {
		this.concertDate = concertDate;
	}
	public String getConcertDateTime() {
		return concertDateTime;
	}
	public void setConcertDateTime(String concertDateTime) {
		this.concertDateTime = concertDateTime;
	}
	public String getConcertAddress_seq() {
		return concertAddress_seq;
	}
	public void setConcertAddress_seq(String concertAddress_seq) {
		this.concertAddress_seq = concertAddress_seq;
	}
	public String getTicketDate() {
		return ticketDate;
	}
	public void setTicketDate(String ticketDate) {
		this.ticketDate = ticketDate;
	}
	public String getTicketDateRe() {
		return ticketDateRe;
	}
	public void setTicketDateRe(String ticketDateRe) {
		this.ticketDateRe = ticketDateRe;
	}
	public String getConcertAddressSeat_seq() {
		return concertAddressSeat_seq;
	}
	public void setConcertAddressSeat_seq(String concertAddressSeat_seq) {
		this.concertAddressSeat_seq = concertAddressSeat_seq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getConcertGrade() {
		return concertGrade;
	}
	public void setConcertGrade(Integer concertGrade) {
		this.concertGrade = concertGrade;
	}
	public String getConcertReviewDate() {
		return concertReviewDate;
	}
	public void setConcertReviewDate(String concertReviewDate) {
		this.concertReviewDate = concertReviewDate;
	}
	public String getConcertTicket_seq() {
		return concertTicket_seq;
	}
	public void setConcertTicket_seq(String concertTicket_seq) {
		this.concertTicket_seq = concertTicket_seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getConcertCasting_seq() {
		return concertCasting_seq;
	}
	public void setConcertCasting_seq(String concertCasting_seq) {
		this.concertCasting_seq = concertCasting_seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	
	public long getSize() {
		return size;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getConcertDateSeq() {
		return concertDateSeq;
	}
	public void setConcertDateSeq(String concertDateSeq) {
		this.concertDateSeq = concertDateSeq;
	}
	public String[] getSeatRowArray() {
		return seatRowArray;
	}
	public void setSeatRowArray(String[] seatRowArray) {
		this.seatRowArray = seatRowArray;
	}
	public String[] getSeatColArray() {
		return seatColArray;
	}
	public void setSeatColArray(String[] seatColArray) {
		this.seatColArray = seatColArray;
	}
	public String[] getConcertAddressSeat_seqArray() {
		return concertAddressSeat_seqArray;
	}
	public void setConcertAddressSeat_seqArray(String[] concertAddressSeat_seqArray) {
		this.concertAddressSeat_seqArray = concertAddressSeat_seqArray;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getConcertAddressSeatSeqArray() {
		return concertAddressSeatSeqArray;
	}
	public void setConcertAddressSeatSeqArray(String concertAddressSeatSeqArray) {
		this.concertAddressSeatSeqArray = concertAddressSeatSeqArray;
	}
	public String[] getConcertTicket_seqArray() {
		return concertTicket_seqArray;
	}
	public void setConcertTicket_seqArray(String[] concertTicket_seqArray) {
		this.concertTicket_seqArray = concertTicket_seqArray;
	}
	public String getConcertTicketSeqArray() {
		return concertTicketSeqArray;
	}
	public void setConcertTicketSeqArray(String concertTicketSeqArray) {
		this.concertTicketSeqArray = concertTicketSeqArray;
	}

//	----------------------




}
