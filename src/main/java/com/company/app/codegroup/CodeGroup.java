package com.company.app.codegroup;

public class CodeGroup {

	
//	디비 컬럼명 첫글자는 소분자
//	seq는 편의상 디비에는 int지만 자바에서는 String으로 사용된다
//	주로 테이블의 칼럼명과 일치
	
	private String seq;
	private String name;
//	-----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
