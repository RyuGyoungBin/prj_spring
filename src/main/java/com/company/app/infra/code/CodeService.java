package com.company.app.infra.code;

import java.util.List;

public interface CodeService {

	public int selectOneCount(CodeVo vo);

	public List<Code> selectList(CodeVo vo);

	public Code selectOne(CodeVo vo);

	public int update(Code dto);

	public int delete(Code dto);

	public int insert(Code dto);

	public int updateDel(Code dto);

	public Code selectOneJoin(CodeVo vo);

	public List<Code> selectListJoin(CodeVo vo);

}
