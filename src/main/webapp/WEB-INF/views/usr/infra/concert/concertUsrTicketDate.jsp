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
  <link href="/resources/common/zabuto_calendar.min.css" rel="stylesheet">
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
			    <div class="calendar" id="calendar"></div>
				<!-- 달력 End -->
			</section>
			<div>
				<ul class="d-flex justify-content-center p-0 mb-3">
			  		<li class="d-flex me-2"><div class="bg-danger bg-opacity-50" style="width:20px;"></div>공연 날짜</li>
			  		<li class="d-flex mx-2"><div class="bg-warning bg-opacity-50" style="width:20px;"></div>선택된 날짜</li>
				</ul>
			</div>
		</div>
		<div class="col-1 pt-5">
		  	<div class="text-center mb-3" id="concertTime">
			  	<c:forEach items="${date }" var="date" varStatus="statusUploaded">
				  	<input type="radio" class="btn-check" name="concertDateTime" id="option<c:out value="${date.seq }" />" autocomplete="off" value="<c:out value="${date.concertDateTime }" />" checked>
					<label class="btn btn-sm btn-secondary my-2" for="option<c:out value="${date.seq }" />"><span class="times"><c:out value="${date.concertDateTime }" /></span></label>
					<input type="hidden" value="<c:out value="${date.seq }" />" name="concertDate_seq">
			  	</c:forEach>
		  	</div>
			<input type="hidden" name="concertDate" id="concertDate">
		  	<input type="hidden" name="concertAddress_seq" id="concertAddress_seq" value="${param.concertAddress_seq }">
		</div>
		<div class="col-1 pt-5">
			<p>잔여 좌석</p>
			<div class="" id="concertSeat">
				<c:forEach items="${seat}" var="seat" varStatus="statusUploaded">
						<c:forEach items="${listCodeSeat }" var="listCodeSeat" varStatus="status">
							<c:if test="${seat.seatRank eq listCodeSeat.codeNum }"><p><span><c:out value="${listCodeSeat.name }"></c:out></span>석 : <span><c:out value="${seat.seatTotal - seat.seatN }" />석</span></p></c:if>
				       	</c:forEach>
				</c:forEach>
<!-- 							<p><span>R</span>석 : <span>20</span>석</p> -->
				
			</div>
		</div>
		<div class="col-5 d-flex flex-column pe-5">
			<div class="d-flex mb-4 pt-5">
				<div class="col-4">
					<c:set var="type" value="1"/>		<!-- #-> -->
		        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
		        	<c:forEach items="${uploaded}" var="uploaded" varStatus="statusUploaded">
					<c:if test="${uploaded.type eq type }">
						<img id="<c:out value="${name }"/>Preview" src="<c:out value="${uploaded.path }"/><c:out value="${uploaded.uuidName }"/>" class="card-img-center" style="width:194px; height:259px;">
					</c:if>
					</c:forEach>
				</div>
				<div class="col-8 pt-5 d-flex flex-column">
					<p class="h5 mb-5">제목 : <span><c:out value="${item.concertTitle }"/></span></p>
					<p class="mt-2 mb-5">장소 : <span><c:out value="${item.concertAddress }"/> <c:out value="${item.concertAddressDetail }"/></span></p>
					<p>출연진 : <span><c:out value="${item.name }"/></span></p>
				</div>
			</div>
			<div>
				<p>티켓 가격</p>
				<div class="ps-5">
					<c:forEach items="${seat}" var="seat" varStatus="statusUploaded">
					<c:set var="listCodeSeat" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
						<c:forEach items="${listCodeSeat }" var="listCodeSeat" varStatus="status">
							<c:if test="${seat.seatRank eq listCodeSeat.codeNum }"><p><span><c:out value="${listCodeSeat.name }"></c:out></span>석 : <span><c:out value="${seat.seatRankPrice }" />원</span></p></c:if>
				       	</c:forEach>
					</c:forEach>
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
			<a type="button" class="btn btn-secondary" id="seatBtn">좌석 선택</a>
		</div>
	</div>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script src="/resources/common/zabuto_calendar.min.js"></script>
	<script>
		
	</script>
	<script type="text/javascript">
	 $(document).ready(function () {
         $("#calendar").zabuto_calendar({
             classname: 'table clickable',
             year: 2023,
             month: 6,
             language: 'kr',
             events: [
                 {
                     "date": "2023-06-02",
                     "markup": "<div class=\"badge rounded-pill bg-success able\">[day]</div>"
                     
                 },
                 
             ]
             
         
         });
     });
	 $(function(){
	     var $el = $('#calendar');
	     $el.on('zabuto:calendar:day', function (e) {
	             $("#concertDate").val(e.value);
	             $.ajax({
	       			async: true 
	       			,cache: false
	       			,type: "post"
	//        			,dataType:"json"
	       			,url: "/selectConcertDate"
	       			/* ,data : $("#formLogin").serialize() */
	       			,data : { "concertDate" : $("#concertDate").val(),
	       				"concertAddress_seq" : $("#concertAddress_seq").val()}
	       			,success: function(response) {
	       				if(response.rtDate != null) {
	       					$("#concertTime").empty();
		       				 $.each(response.rtDate,function(index, value) { // 값이 여러개 일 때는 반복문 사용
// 		                     	alert(index);
// 	                         	alert(value.seq); 
// 		                     	alert(value.concertDate); 
// 	                         	alert(value.concertDateTime);
	                         	timeDiv ='';
	                         	timeDiv +='<input type="radio" class="btn-check" name="concertDateTime" id="option'+value.seq+'" autocomplete="off" value="'+value.concertDateTime+'" checked>';
	                         	timeDiv +='<label class="btn btn-sm btn-secondary my-2" for="option'+value.seq+'"><span class="times">'+value.concertDateTime+'</span></label>';
	                         	timeDiv +='<input type="hidden" value="'+value.seq+'" name="concertDate_seq" id="concertDate_seq'+value.seq+'">';
	                         	$("#concertTime").append(timeDiv);
		                     })
	                         	timeStr();
		       				 
	       				} else {
	       					alert("데이터가 없습니다.");
	       				}
	       			}
	       			,error : function(jqXHR, textStatus, errorThrown){
	       				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	       			}
	       		});
	    		 
	     });
		 
	 })
		
	var code = '<c:set var="listCodeSeat" value="${CodeServiceImpl.selectListCachedCode('9') }"/>';
	var foreachS = '<c:forEach items="listCodeSeat" var="listCodeSeat">';
	var foreachE = '</c:forEach>';
	var codeNum = '${listCodeSeat.codeNum}';
	var codeName = '${listCodeSeat.name}';
	div = '';
	div += foreachS;
	div += codeNum;
	console.log(codeNum);
	div += foreachE;
	$("#concertSeat").append(div);
	 $(document).on("click",".times",function(){
		 $.ajax({
    			async: true 
    			,cache: false
    			,type: "post"
//        			,dataType:"json"
    			,url: "/selectConcertDateTimeSeat"
    			/* ,data : $("#formLogin").serialize() */
    			,data : { "concertDate_seq" : $(this).parent().next().val()}
    			,success: function(response) {
    				if(response.rtSeat != null) {
    					$("#concertSeat").empty();
    					console.log(response.rtSeat)
	       				 $.each(response.rtSeat,function(index, value) { // 값이 여러개 일 때는 반복문 사용
						seatDiv ='';
// 						if(value.seatRank == code.codeNum)
// 							 $.each(response.rtSeat,function(index, value){
								 
// 							 }
							
                      	seatDiv +='<p><span>'+value.seatRank+'</span>석 : <span>'+(value.seatTotal +-+value.seatN)+'석</span></p>';
                      	$("#concertSeat").append(seatDiv);
                      	$("#seatBtn").attr("href", "/concertUsrTicketSeat?concertDate_seq="+value.concertDate_seq+"");
                      	
	                     })
    				} else {
    					alert("데이터가 없습니다.");
    				}
    			}
    			,error : function(jqXHR, textStatus, errorThrown){
    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    			}
    		});
	 })
// 	 $(".times").substr(0,5);
// 	 console.log($(".times").length)
// 	 console.log($(".times").eq(0).text().substr(0,5))
	timeStr();
	 function timeStr(){
		 for(var i = 0;i < $(".times").length;i++){
			 $(".times").eq(i).text((i+1)+"회차 "+$(".times").eq(i).text().substr(0,5));
		 }
	 }
    </script>
</body>
</html>