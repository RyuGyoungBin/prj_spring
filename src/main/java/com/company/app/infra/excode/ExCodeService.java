package com.company.app.infra.excode;

import java.util.List;

public interface ExCodeService {
	
	public List<ExCode>  selectList(ExCodeVo vo);
	public ExCode selectOne(ExCodeVo vo);
	public int update(ExCode dto);
	public int delete(ExCode dto);
	public int insert(ExCode dto);
	public int updateDel(ExCode dto);
	public List<ExCode> selectJoin(ExCodeVo vo);
	public ExCode selectOneJoin(ExCodeVo vo);
}
