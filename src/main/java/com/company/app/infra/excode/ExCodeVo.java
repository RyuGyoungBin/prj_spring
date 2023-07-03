package com.company.app.infra.excode;

public class ExCodeVo {
	public String seq;
	public String shkey;
	public Integer shOption;
	public String codeGroup_seq;
	public String pageStart;
	public String perPageNum;

//	---------
	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getShkey() {
		return shkey;
	}

	public void setShkey(String shkey) {
		this.shkey = shkey;
	}

	public Integer getShOption() {
		return shOption;
	}

	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}

	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}

	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}

	public String getPageStart() {
		return pageStart;
	}

	public void setPageStart(String pageStart) {
		this.pageStart = pageStart;
	}

	public String getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(String perPageNum) {
		this.perPageNum = perPageNum;
	}

}
