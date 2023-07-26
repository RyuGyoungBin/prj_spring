<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width user-scalable=no, initial-scale=1.0">
  <title>concert ticket system</title>
  <!-- COMMON CSS -->
	<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="/resources/concert/css/style.css" rel="stylesheet">
	<link href="/resources/concert/css/vendors.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
	<link href="/resources/concert/css/admin.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="/resources/concert/css/custom.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <jsp:include page="../include/calendarCss.jsp"></jsp:include>
  <style>
  	li {
  		list-style:none;
  	}
  	th, td{
		  padding:10px;
	}
	.calbtn {
	  border:none;
	  background-color: transparent;
	  cursor: pointer;
	}
	#ticketSystem li:after {
		content:">";
		margin:auto 5px;
	}
	#ticketSystem li:last-of-type:after {
		content:"";
		margin:auto 5px;
	}
	#ticketDate ul li:after {
		content:",";
		margin:auto 5px;
	}
	#ticketDate ul li:last-of-type:after {
		content:"";
		margin:auto 5px;
	}
	.disable {
			color: rgba(0,0,0,.5);
		}
	.select {background-color: rgb(255,255,0)}
	.pickUp {background-color: rgb(255,0,0); cursor:pointer;}
  </style>
</head>
<body>
	<div class="border-bottom p-5 pb-0">
		<div class="container">
			<ul class="d-flex" id="ticketSystem">
				<li>관람일 선택</li>
				<li>좌석 선택</li>
				<li>결재</li>
			</ul>
		</div>
	</div>
	<div class="d-flex">
		<div class="col-5 light p-5 text-center">
			<section class="text-center mb-3">
			    <!-- 달력 Start -->
			    <div class="calendar-wrapper" id="calendar-wrapper"></div>
				<!-- 달력 End -->
			</section>
			<div>
				<ul class="d-flex justify-content-center p-0 mb-3">
			  		<li class="d-flex me-2"><div class="bg-danger bg-opacity-50" style="width:20px;"></div>공연 날짜</li>
			  		<li class="d-flex mx-2"><div class="bg-warning bg-opacity-50" style="width:20px;"></div>선택된 날짜</li>
				</ul>
			</div>
			<div class="ps-4">예매 가능 날짜</div>
			<div id="ticketDate">
				<ul class="d-flex justify-content-center">
					<li class="me-2">11일</li>
					<li class="me-2">13일</li>
					<li class="me-2">16일</li>
				</ul>
			</div>
		</div>
		<div class="col-1 pt-5">
			<div class="mb-4">회차</div>
			<div class="text-center mb-3 d-flex flex-column">
			  	<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
				<label class="btn btn-sm btn-secondary mb-3 w-75" for="option1">1회차<span>11:00</span></label>
				
				<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
				<label class="btn btn-sm btn-secondary w-75" for="option2">2회차<span>15:00</span></label>
			</div>
		</div>
		<div class="col-1 pt-5">
			<p>잔여 좌석</p>
			<p>R석 : <span></span></p>
			<p>S석 : <span></span></p>
			<p>Y석 : <span></span></p>
		</div>
		<div class="col-5 d-flex flex-column pe-5">
			<div class="d-flex mb-4 pt-5">
				<div class="col-4">
					<img src="/resources/concert/img/post.png" class="object-fit-cover" style="width:100%; height:100%;">
				</div>
				<div class="col-8 pt-5 d-flex flex-column">
					<p class="h5 mb-5">제목 : <span>월요일은 한주의 시작입니다</span></p>
					<p class="mt-2 mb-5">장소 : <span></span></p>
					<p>출연진 : <span></span></p>
				</div>
			</div>
			<div>
				<p>티켓 가격</p>
				<div class="ps-5">
					<p>R석 : <span></span></p>
					<p>S석 : <span></span></p>
					<p>Y석 : <span></span></p>
				</div>
			</div>
		</div>
	</div>
	<div class="d-flex p-5">
		<div class="col-8">
			<p>예매시 주의사항</p>
			<p>얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다</p>
			<p>관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리 청춘에서만 구할 수 있는 것이다 청춘은 인생의 황금시대다 우리는 이 황금시대의 가치를 충분히 발휘하기 위하여 이 황금시대를 영원히 붙잡아
			</p>
		</div>
		<div class="col-4 text-center">
			<button type="button" class="btn btn-secondary" onclick="location.href='/concertUsrTicketSeat'">좌석 선택</button>
		</div>
	</div>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/calendarScript.jsp"></jsp:include>
	<script>
		
	</script>
</body>
</html>