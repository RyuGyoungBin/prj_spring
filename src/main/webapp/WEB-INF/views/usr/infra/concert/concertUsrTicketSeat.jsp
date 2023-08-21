<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.company.app.infra.code.CodeServiceImpl"/>
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
	.row {
		width: 250px;
	}
	.seat {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		font-size:0;
	}	
	.seat0 {
		background: #dc354580;
	}
	
	.seat1 {
		background: #ffc10780;
	}
	
	.seat2 {
		background: #19875480;
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
			<h3><c:out value="${item.concertTitle }"/></h3>
		</div>
		<div class="d-flex p-5 justify-content-center">
			<div class="col-6 d-flex flex-column align-items-center">
				<div class="border d-flex justify-content-center align-items-center mb-3" style="width:160px; height:80px;">무대</div>
				<div class="seatContainer position-relative mb-3">
		            <div class="row">
		            	<c:forEach items="${seat}" var="seat" varStatus="statusUploaded">
		            		<div class="seat seat${seat.seatRank } <c:if test="${seat.seatNy eq 1 }">disable</c:if>" ><c:out value="${seat.seatRow }"/><c:out value="${seat.seatCol }"/></div>
		            	</c:forEach>
		            </div>
		            <div class="position-absolute top-0 start-100" style="transform:translate(17px);">
		            	<c:forEach items="${row}" var="row" varStatus="statusUploaded">
		            		<div class="seatRow"><c:out value="${row.seatRow }"/></div>
		            	</c:forEach>
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
					<div class="col-6" id="seat">
					<c:forEach items="${seatGroup}" var="seatGroup" varStatus="statusUploaded">
						<c:set var="listCodeSeat" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
						<c:forEach items="${listCodeSeat }" var="listCodeSeat" varStatus="status">
							<c:if test="${seatGroup.seatRank eq listCodeSeat.codeNum }"><p><span><c:out value="${listCodeSeat.name }"></c:out></span>석 : <span id='seat${listCodeSeat.name }Ny'><c:out value="${seatGroup.seatTotal - seatGroup.seatN }" />석</span></p></c:if>
				       	</c:forEach>
					</c:forEach>
					</div>
					<div class="col-6">
					<c:forEach items="${seatGroup}" var="seatGroup" varStatus="statusUploaded">
						<p><span class="seatPrice" id="price${seatGroup.seatRank }"><fmt:formatNumber value="${seatGroup.seatRankPrice }" pattern="#,###" /></span>원</p>
					</c:forEach>
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
						<button type="button" class="btn btn-secondary" id="btn-kakaopay">선택완료</button>
					</div>
					<div>
						<button type="button" class="btn btn-secondary" style="width:95px;" onclick="location.href='/concertUsrTicketDate?seq=${param.seq}&concertAddress_seq=${param.concertAddress_seq}'">이전</button>
						<button type="button" class="btn btn-secondary" style="width:95px;" id="reSelectBtn">다시 선택</button>
						<input type="hidden" name="seq" value="${param.seq }">
						<input type="hidden" name="concertAddress_seq" value="${param.concertAddress_seq }">
						<input type="hidden" name="concertDate_seq" value="${param.concertDate_seq }">
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
		var sum = 0;
		<c:forEach items="${seatGroup}" var="seatGroup" varStatus="statusUploaded">
			var price${seatGroup.seatRank} = ${seatGroup.seatRankPrice};
		</c:forEach>

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
						alert("")
					}
				}
			}
			<c:forEach items="${seatGroup}" var="seatGroup" varStatus="statusUploaded">
			var select${seatGroup.seatRank} = $(".seat${seatGroup.seatRank}.select").length;
			</c:forEach>
			
			<c:forEach items="${seatGroup}" var="seatGroup" varStatus="statusUploaded">
				sum += (select${seatGroup.seatRank} * price${seatGroup.seatRank});
			</c:forEach>
			sum = sum.toLocaleString('ko-KR');
			
		$("#totalPrice").text(sum + "원");
		sum=0;
		})
			
// 		$("#seatRNy").text($(".seatR").length-$(".seatR.disable").length);
// 		$("#seatYNy").text($(".seatY").length-$(".seatY.disable").length);
// 		$("#seatSNy").text($(".seatS").length-$(".seatS.disable").length);
		$("#reSelectBtn").on("click", function(){
			$(".seatContainer .row div").removeClass("select");
			$("#selectSeat").empty();
			sum = 0;
			$("#totalPrice").text(sum + "원");
			
		})
		
		
	$(function(){
        $("#btn-kakaopay").on("click", function(){
        	$.ajax({
    			url:"/kakaopay",
    			dataType:"json" ,
    			success:function(data){
    				alert(data);
    			},
    			error:function(error){
    				alert("asd");
    			}
   			});
		});
	});

	</script>
</body>
</html>