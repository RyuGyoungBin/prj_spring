package com.company.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	private String seq;
	private String name;
	private String nameKor;
	private String codeGroup_seq;
	private String delNy;
	private String groupname;
	private Integer codeNum;

	public static List<Code> cachedCodeArrayList = new ArrayList<>();

	public String getNameKor() {
		return nameKor;
	}
	public void setNameKor(String nameKor) {
		this.nameKor = nameKor;
	}
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
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	public Integer getCodeNum() {
		return codeNum;
	}
	public void setCodeNum(Integer codeNum) {
		this.codeNum = codeNum;
	}


}
