package com.company.app.concert;

public class ConcertVo {
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
	private String concertDate_seq;
//	concertDate
	private String concertDate;
	private String concertDateTime;
	private String concertAddress_seq;
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
//	concertUploaded
	private Integer type;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private String size;
	private String pseq;
//	paging
	private int thisPage = 1;									// 현재 페이지
//	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
//	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
	
	private int rowNumToShow = 10;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// 쿼리 시작 row
//	-----
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
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}
	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}
	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}
	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
	public void setParamsPaging(int totalRows) {
		
//		setThisPage(3);

		setTotalRows(totalRows);

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
		System.out.println("getThisPage():" + getThisPage());
		System.out.println("getTotalRows():" + getTotalRows());
		System.out.println("getRowNumToShow():" + getRowNumToShow());
		System.out.println("getTotalPages():" + getTotalPages());
		System.out.println("getStartPage():" + getStartPage());
		System.out.println("getEndPage():" + getEndPage());		
		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
		
	}
	
}
