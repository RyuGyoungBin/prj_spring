package com.company.app.infra.codegroup;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "/codeGroupXdmList")
	public String codeGroupXdmList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setShkey(vo.getShkey() == null ? "": vo.getShkey());
		vo.setParamsPaging(service.selectOneCount(vo));

		if(vo.getTotalRows()>0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
//			by pass
		}
	    return "xdm/infra/codegroup/codeGroupXdmList";
	}

//	vo.setCGshkey(vo.getCGshkey() == null ? "": vo.getCGshkey());
//	List<CodeGroup> list = service.selectList(vo);
//	model.addAttribute("list", list);
//    return "xdm/infra/codegroup/codeGroupXdmList";
	@RequestMapping(value = "/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {
		CodeGroup codegroup = service.selectOne(vo);
		model.addAttribute("list", codegroup);
		return "xdm/infra/codegroup/codeGroupXdmForm";
	}
	@RequestMapping(value = "/codeGroupXdmDelete")
	public String concertDelete(CodeGroup dto) {

		service.delete(dto);

		return "redirect:/codeGroupXdmList";
	}

	@RequestMapping(value = "/codeGroupXdmUpdate")
	public String concertUpdate(CodeGroup dto) {

		service.update(dto);

		return "redirect:/codeGroupXdmList";
	}
	@RequestMapping(value = "/codeGroupXdmInsert")
	public String concertInsert(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupXdmList";
	}
	@RequestMapping(value = "/codeGroupXdmDelNy")
	public String concertDelNy(CodeGroup dto) {
		service.updateDel(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("excelCodeGroupXdmDownload")
    public void excelDownload(CodeGroupVo vo, HttpServletResponse httpServletResponse) throws Exception {
		vo.setShkey(vo.getShkey() == null ? "": vo.getShkey());
		vo.setParamsPaging(service.selectOneCount(vo));
		String excelName = "";
		String excel = vo.getExcelName();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String now_dt = format.format(now);
		excelName = excel+" "+now_dt;
		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("첫번째 시트");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"코드그룹 코드", "코드그룹 이름", "사용여부"};

	        row = sheet.createRow(rowNum++);
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getDelNy()));
	        	
	            
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename="+excelName+".xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
