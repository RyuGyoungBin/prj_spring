package com.company.app.concert;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.infra.code.Code;
import com.company.app.infra.code.CodeServiceImpl;
import com.company.app.infra.code.CodeVo;


@Controller
public class ConcertController {

	@Autowired
	ConcertServiceImpl service;
	@Autowired
	CodeServiceImpl codeService;

	@RequestMapping("/concertUsrMain")
	public String concertMain(ConcertVo vo, CodeVo codeVo, Model model) {
		List<Concert> list = service.selectConcertList(vo);
		System.out.println(vo.getSearchType());
		model.addAttribute("concertList", list);
		return"usr/infra/concert/concert";
	}
	@RequestMapping("/concertUsrDetail")
	public String concertDetail(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> list = service.selectUploaded(vo);
		List<Concert> seat = service.selectSeatGroup(vo);
		List<Concert> date = service.selectDate(vo);
		model.addAttribute("item", concert);
		model.addAttribute("uploaded", list);
		model.addAttribute("seat", seat);
		model.addAttribute("date", date);
		return"usr/infra/concert/concertDetail";
	}
	@RequestMapping("/concertUsrTicketDate")
	public String concertUsrTicketDate(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> list = service.selectUploaded(vo);
		List<Concert> seat = service.selectSeatGroup(vo);
		List<Concert> date = service.selectDate(vo);
		model.addAttribute("item", concert);
		model.addAttribute("uploaded", list);
		model.addAttribute("seat", seat);
		model.addAttribute("date", date);
		return"usr/infra/concert/concertUsrTicketDate";
	}
	@RequestMapping("/concertUsrTicketSeat")
	public String concertUsrTicketSeat(ConcertVo vo, CodeVo codeVo, Model model) {
		Concert concert = service.selectConcertOne(vo);
		List<Concert> seat = service.selectSeat(vo);
		List<Concert> seatGroup = service.selectSeatGroup(vo);
		List<Concert> seatRow = service.selectSeatRow(vo);
		
		model.addAttribute("item", concert);
		model.addAttribute("seat", seat);
		model.addAttribute("seatGroup", seatGroup);
		model.addAttribute("row", seatRow);
		return"usr/infra/concert/concertUsrTicketSeat";
	}
	@RequestMapping("/concertXdmList")
	public String concertXdmList(@ModelAttribute("vo") ConcertVo vo, Model model) {
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Concert> list = service.selectList(vo);
			model.addAttribute("concertList", list);
		} else {
//			by pass
		}
		return"xdm/infra/concert/concertXdmList";
	}
	@RequestMapping("/concertXdmForm")
	public String concertXdmForm(ConcertVo vo, Model model) {
		Concert item = service.selectOne(vo);
		List<Concert> uploaded = service.selectUploaded(vo);
		model.addAttribute("list", item);
		model.addAttribute("listUploaded", uploaded);
		return"xdm/infra/concert/concertXdmForm";
	}

	@RequestMapping("/concertXdmInsert")
	public String concertInsert(Concert dto) throws Exception {
		System.out.println("sdfsd");
		service.insertConcert(dto);
		return "redirect:/concertXdmList";
	}
	
	@RequestMapping("/concertUsrRegistration")
	public String concertUsrRegistration() {
		return"usr/infra/concert/concertUsrRegistration";
	}
	
	@ResponseBody
	@RequestMapping("/seatXdmView")
	public Map<String, Map> seatView(ConcertVo vo, Model model) {
		Map<String, Map> returnTotal = new HashMap<>();
		Map<String, Object> returnMap = new HashMap<>();
		Map<String, List<Concert>> returnSeat = new HashMap<>();
		int rtMember = service.selectSeatCount(vo);
		List<Concert> concert = service.selectSeat(vo);
		if (rtMember > 0) {
			returnMap.put("rtMember", rtMember);
			returnSeat.put("rtConcert", concert);
			returnTotal.put("seat", returnSeat);
			returnTotal.put("rtMap", returnMap);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnTotal;
	}
	
	@ResponseBody
	@RequestMapping("/selectConcertDate")
	public Map<String, List<Concert>> selectConcertDate(ConcertVo vo, Model model) {
		Map<String, List<Concert>> returnMap = new HashMap<>();
		List<Concert> rtDate = service.selectDate(vo);
		System.out.println(rtDate.size());
		if (rtDate.size() > 0) {
			returnMap.put("rtDate", rtDate);
			model.addAttribute("date", rtDate);
		} else {
		}
		return returnMap;
	}
	
	@SuppressWarnings("static-access")
	@ResponseBody
	@RequestMapping("/selectConcertDateTimeSeat")
	public Map<String, Map> selectConcertDateTimeSeat(ConcertVo vo, Model model) throws Exception {
		Map<String, Map> returnTotal = new HashMap<>();
		Map<String, List<Concert>> returnMap = new HashMap<>();
		Map<String, List<Code>> returnCodeMap = new HashMap<>();
		List<Concert> rtSeat = service.selectSeatGroup(vo);
		List<Code> rtCode = codeService.selectListCachedCode("9");
		System.out.println(rtSeat.size());
		if (rtSeat.size() > 0) {
			returnMap.put("rtSeat", rtSeat);
			returnCodeMap.put("rtCode", rtCode);
			returnTotal.put("code", returnCodeMap);
			returnTotal.put("seat", returnMap);
		} else {
		}
		return returnTotal;
	}
	
	@RequestMapping("/insertSeat")
	public String insertSeat(Concert dto) {
		service.insertSeat(dto);
		return "redirect:/test";
	}
	
	@RequestMapping("/deleteConcert")
	public String deleteConcert(Concert dto) {
		service.deleteConcert(dto);
		return "redirect:/concertXdmList";
	}
	
	@RequestMapping("/updateConcert")
	public String updateConcert(Concert dto) {
		service.updateConcert(dto);
		return "redirect:/concertXdmList";
	}
	
	@RequestMapping("/ueleteConcert")
	public String ueleteConcert(Concert dto) {
		service.ueleteConcert(dto);
		return "redirect:/concertXdmList";
	}
	@RequestMapping("/test")
	public String test(Concert dto) {
		return "/test";
	}
	@RequestMapping("/kakaopaySuccess")
	public String kakaopaySuccess(Concert dto) {
		service.insertTicket(dto);
		return "";
	}
	
	@RequestMapping("excelConcertXdmDownload")
    public void excelDownload(ConcertVo vo, HttpServletResponse httpServletResponse) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		String excelName = "";
		String excel = vo.getExcelName();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String now_dt = format.format(now);
		excelName = excel+" "+now_dt;
		if (vo.getTotalRows() > 0) {
			List<Concert> list = service.selectList(vo);
			
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
	        String[] tableHeader = {"콘서트 코드","콘서트 종류", "콘서트 제목", "사용여부", "콘서트 기본값", "콘서트 등록자코드", "콘서트 우편번호", "콘서트 주소", "콘서트 상세주소", "콘서트 날짜", "콘서트 시간", "콘서트 출연진"};

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
	        	cell.setCellValue(Integer.parseInt(list.get(i).getConcertType()));
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getConcertTitle());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getDelNy());
	        	
	        	cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getDefaultNy());
	        	
	        	cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getMemberSeq()));
	        	
	        	cell = row.createCell(6);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getConcertZipCode()));
	        	
	        	cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getConcertAddress());
	        	
	        	cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getConcertAddressDetail());
	        	
	        	cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getConcertDate() != null) cell.setCellValue(list.get(i).getConcertDate());
	        	
	        	cell = row.createCell(10);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getConcertDateTime() != null) cell.setCellValue(list.get(i).getConcertDateTime());
	        	
	        	cell = row.createCell(11);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename="+excelName+".xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }

}
