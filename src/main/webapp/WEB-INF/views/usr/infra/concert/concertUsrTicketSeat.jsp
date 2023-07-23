<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	#selectSeat span:after {
		content:", "
	}
	#selectSeat span:last-of-type:after {
		content:" "
	}
	
	.seatR {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #dc354580;
		font-size:0;
	}
	
	.seatS {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #ffc10780;
		font-size:0;
	}
	
	.seatY {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #19875480;
		font-size:0;
	}
	
	.disable {
		background: rgba(0,0,0,.5);
	}
	.select {
		background: #0dcaf080;
	}
	.seatRow{margin:1px;}

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
	<div class="d-flex flex-column">
		<div class="text-center">
			<h3>TITLE</h3>
		</div>
		<div class="d-flex p-5 justify-content-center">
			<div class="col-6 d-flex flex-column align-items-center">
				<div class="border d-flex justify-content-center align-items-center mb-3" style="width:160px; height:80px;">스크린</div>
				<div class="seatContainer position-relative mb-3">
		            <div class="row">
		                <div class="seatR disable">a1</div>
		                <div class="seatR">a2</div>
		                <div class="seatR">a3</div>
		                <div class="seatR">a4</div>
		                <div class="seatR">a5</div>
		                <div class="seatR">a6</div>
		                <div class="seatR">a7</div>
		                <div class="seatR">a8</div>
		                <div class="seatR">a9</div>
		                <div class="seatR">a10</div>
		                <div class="seatR">a11</div>
		            </div>
		
		            <div class="row">
		                <div class="seatR">b1</div>
		                <div class="seatR">b2</div>
		                <div class="seatR">b3</div>
		                <div class="seatR">b4</div>
		                <div class="seatR">b5</div>
		                <div class="seatR">b6</div>
		                <div class="seatR">b7</div>
		                <div class="seatR">b8</div>
		                <div class="seatR">b9</div>
		                <div class="seatR">b10</div>
		                <div class="seatR">b11</div>
		            </div>
		
		            <div class="row">
		                <div class="seatS">c1</div>
		                <div class="seatS">c2</div>
		                <div class="seatS">c3</div>
		                <div class="seatS">c4</div>
		                <div class="seatS">c5</div>
		                <div class="seatS">c6</div>
		                <div class="seatS">c7</div>
		                <div class="seatS">c8</div>
		                <div class="seatS">c9</div>
		                <div class="seatS">c10</div>
		                <div class="seatS">c11</div>
		            </div>
		
		            <div class="row">
		                <div class="seatS">d1</div>
		                <div class="seatS">d2</div>
		                <div class="seatS">d3</div>
		                <div class="seatS">d4</div>
		                <div class="seatS">d5</div>
		                <div class="seatS">d6</div>
		                <div class="seatS">d7</div>
		                <div class="seatS">d8</div>
		                <div class="seatS">d9</div>
		                <div class="seatS">d10</div>
		                <div class="seatS">d11</div>
		            </div>
		
		            <div class="row">
		                <div class="seatY">e1</div>
		                <div class="seatY">e2</div>
		                <div class="seatY">e3</div>
		                <div class="seatY">e4</div>
		                <div class="seatY">e5</div>
		                <div class="seatY">e6</div>
		                <div class="seatY">e7</div>
		                <div class="seatY">e8</div>
		                <div class="seatY">e9</div>
		                <div class="seatY">e10</div>
		                <div class="seatY">e11</div>
		            </div>
		
		            <div class="row">
		                <div class="seatY">f1</div>
		                <div class="seatY">f2</div>
		                <div class="seatY">f3</div>
		                <div class="seatY">f4</div>
		                <div class="seatY">f5</div>
		                <div class="seatY">f6</div>
		                <div class="seatY">f7</div>
		                <div class="seatY">f8</div>
		                <div class="seatY">f9</div>
		                <div class="seatY">f10</div>
		                <div class="seatY">f11</div>
		            </div>
		            <div class="position-absolute top-0 start-100" style="transform:translate(17px);">
		            	<div class="seatRow">a</div>
		            	<div class="seatRow">b</div>
		            	<div class="seatRow">c</div>
		            	<div class="seatRow">d</div>
		            	<div class="seatRow">e</div>
		            	<div class="seatRow">f</div>
		            </div>
		        </div>
		        <div>
				  	<ul class="d-flex justify-content-center p-0 mb-1">
				  		<li class="d-flex me-2"><div class="bg-danger bg-opacity-50" style="width:20px;"></div>R석</li>
				  		<li class="d-flex mx-2"><div class="bg-warning bg-opacity-50" style="width:20px;"></div>S석</li>
				  		<li class="d-flex ms-2"><div class="bg-success bg-opacity-50" style="width:20px;"></div>Y석</li>
				  	</ul>
				  </div>
				  <div>
				  	<ul class="d-flex justify-content-center p-0 mb-3">
				  		<li class="d-flex me-2"><div class="bg-info bg-opacity-50" style="width:20px;"></div>선택좌석</li>
				  		<li class="d-flex ms-2"><div class="bg-dark bg-opacity-50" style="width:20px;"></div>선택불가</li>
				  	</ul>
				  </div>
			</div>
			<div class="col-3 border d-flex flex-column p-3">
				<p class="h5 mb-3">잔여좌석/가격</p>
				<div class="d-flex border-bottom mb-3">
					<div class="col-6">
						<p><span>R</span>석 : <span id="seatRNy"></span>석</p>
						<p><span>S</span>석 : <span id="seatSNy"></span>석</p>
						<p><span>Y</span>석 : <span id="seatYNy"></span>석</p>
					</div>
					<div class="col-6">
						<p><span id="price1">15000</span>원</p>
						<p><span id="price2">13000</span>원</p>
						<p><span id="price3">10000</span>원</p>
					</div>
				</div>
				<div class="mb-3 pb-3 border-bottom">
					<p class="h5">선택좌석</p>
					<div id="selectSeat">
					</div>
				</div>
				<div class="mb-3 pb-3 border-bottom">
					<p>가격</p>
					<span id="totalPrice">0</span>
				</div>
				<div class="p-3 text-center">
					<div class="mb-1">
						<button type="button" class="btn btn-secondary">선택완료</button>
					</div>
					<div>
						<button type="button" class="btn btn-secondary" style="width:95px;" onclick="location.href='/concertUsrTicketDate'">이전</button>
						<button type="button" class="btn btn-secondary" style="width:95px;" id="reSelectBtn">다시 선택</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
		var sum = 0;
		var RPrice = 15000;
		var SPrice = 13000;
		var YPrice = 10000;
		
		$(".seatContainer .row div").on("click", function(){
			if($(this).hasClass("disable") == false){
				if($(this).hasClass("select") == true){
					$(this).removeClass("select");
					$("#"+$(this).text()+"").remove();
				} else {
					if($(".seatContainer .row div.select").length < 3){
						$(this).addClass("select");
						$("#selectSeat").append("<span id='"+$(this).text()+"'>"+$(this).text()+"</span>");
					} else {
						
					}
				}
			}
			var RSelect = $(".seatR.select").length;
			var SSelect = $(".seatS.select").length;
			var YSelect = $(".seatY.select").length;
			console.log($(".seatContainer .row div.select").length)
			console.log("RSelect" + RSelect);
			console.log("SSelect" + SSelect);
			console.log("YSelect" + YSelect);
			
		$("#totalPrice").text(RSelect * RPrice + SSelect * SPrice + YSelect * YPrice + "원");
		})
			
		$("#seatRNy").text($(".seatR").length-$(".seatR.disable").length);
		$("#seatYNy").text($(".seatY").length-$(".seatY.disable").length);
		$("#seatSNy").text($(".seatS").length-$(".seatS.disable").length);
		$("#reSelectBtn").on("click", function(){
			$(".seatContainer .row div").removeClass("select");
			$("#selectSeat").empty();
			RSelect = $(".seatR.select").length;
			SSelect = $(".seatS.select").length;
			YSelect = $(".seatY.select").length;
			$("#totalPrice").text(RSelect * RPrice + SSelect * SPrice + YSelect * YPrice + "원");
			
		})
		
		
	</script>
</body>
</html>