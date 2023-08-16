<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.company.app.infra.code.CodeServiceImpl"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>concert ticket system</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="/resources/concert/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/concert/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/concert/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/concert/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/concert/img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT --> 
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="/resources/concert/css/style.css" rel="stylesheet">
	<link href="/resources/concert/css/vendors.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
	<link href="/resources/concert/css/admin.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="/resources/concert/css/custom.css" rel="stylesheet">
	<!-- CALENDAR -->
	<link href="/resources/common/zabuto_calendar.min.css" rel="stylesheet">
	
	<style>
		ul#top_tools a {
		    color: #000;
		}
		th, td{
		  padding:10px;
		}
		.calbtn {
		  border:none;
		  background-color: transparent;
		  cursor: pointer;
		}
		li {
			list-style:none;
		}
		.disable {
			color: rgba(0,0,0,.5);
		}
		.select {background-color: rgb(255,255,0)}
		.pickUp {background-color: rgb(255,0,0); cursor:pointer;}
	</style>
</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<main>
		<div id="position" style="padding-top:90px;">
			<div class="container">
				<ul>
					<li><a href="index.html">Home</a>
					</li>
					<li><a href="sub.html">concert</a></li>
					<li>goods</li>
				</ul>
			</div>
		</div>
		
		<div class="margin_60 container">
			<div class="d-flex flex-column mb-4 ps-5">
				<h3 class="fw-bold"><c:out value="${item.concertTitle }"></c:out></h3>
			</div>
			<form name="form" method="post">
			<div class="d-flex mb-5">
				<div class="col-3 text-center pt-5">
					<c:set var="type" value="1"/>		<!-- #-> -->
		        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
		        	<c:forEach items="${uploaded}" var="uploaded" varStatus="statusUploaded">
					<c:if test="${uploaded.type eq type }">
						<img id="<c:out value="${name }"/>Preview" src="<c:out value="${uploaded.path }"/><c:out value="${uploaded.uuidName }"/>" class="card-img-center" style="width:194px; height:259px;">
					</c:if>
					</c:forEach>
				</div>
				<div class="col-4 ps-2 pt-5">
					<p>장소 : <span><a id="concertAddress"><c:out value="${item.concertAddress }"/> <c:out value="${item.concertAddressDetail }"/></a></span></p>
					<p>기간 : <span><c:out value="${item.concertDateMin }"/> - <c:out value="${item.concertDateMax }"/></span></p>
					<div class="d-flex">
						<div class="col-2">
							<p>가격 : </p>
						</div>
						<div>
							<c:forEach items="${seat}" var="seat" varStatus="statusUploaded">
							<c:set var="listCodeSeat" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
								<c:forEach items="${listCodeSeat }" var="listCodeSeat" varStatus="status">
									<c:if test="${seat.seatRank eq listCodeSeat.codeNum }"><p><span><c:out value="${listCodeSeat.name }"></c:out></span>석 : <span><c:out value="${seat.seatRankPrice }" />원</span></p></c:if>
						       	</c:forEach>
							</c:forEach>
						</div>
					</div>
					<p>출연진 : <span><c:out value="${item.name }"/></span></p>
					<div id="map"></div>
				</div>
				<div class="col-5 light">
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
				  <div class="text-center mb-3" id="concertTime">
				  	<c:forEach items="${date }" var="date" varStatus="statusUploaded">
					  	<input type="radio" class="btn-check" name="concertDateTime" id="option<c:out value="${date.seq }" />" autocomplete="off" value="<c:out value="${date.concertDateTime }" />" checked>
						<label class="btn btn-sm btn-secondary me-2" for="option<c:out value="${date.seq }" />"><span class="times"><c:out value="${date.concertDateTime }" /></span></label>
						<input type="hidden" value="<c:out value="${date.seq }" />" name="concertDate_seq">
				  	</c:forEach>
				  </div>
				  	<input type="hidden" name="concertDate" id="concertDate">
				  	<input type="hidden" name="concertAddress_seq" id="concertAddress_seq" value="${param.concertAddress_seq }">
				  <div class="d-flex justify-content-center">
						<div class="col-2">
							<p>잔여 좌석</p>
						</div>
						<c:set var="listCodeSeat" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
							<div class="col-2" id="concertSeat">
								<c:forEach items="${seat}" var="seat" varStatus="statusUploaded">
										<c:forEach items="${listCodeSeat }" var="listCodeSeat" varStatus="status">
											<c:if test="${seat.seatRank eq listCodeSeat.codeNum }"><p><span><c:out value="${listCodeSeat.name }"></c:out></span>석 : <span><c:out value="${seat.seatTotal - seat.seatN }" />석</span></p></c:if>
								       	</c:forEach>
								</c:forEach>
	<!-- 							<p><span>R</span>석 : <span>20</span>석</p> -->
								
							</div>
					</div>
					<div class=text-center>
					<c:choose>
						<c:when test="${empty sessionId }">
							<a class="btn btn-secondary loginModal" style="min-width:80px;" target=”_blank”>예매</a>
						</c:when>
						<c:otherwise>
							<a class="btn btn-secondary" style="min-width:80px;" target=”_blank” href="/concertUsrTicketDate?seq=<c:out value="${item.seq }"/>&concertAddress_seq=<c:out value="${item.concertAddress_seq }"/>&dateDefaultNy=1">예매</a>
						</c:otherwise>
					</c:choose>
					</div>
				</div>
			</div>
			</form>
			<!-- concertDetail -->
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1"><span>상세정보</span></a>
						</li>
						<li><a href="#section-2"><span>관람후기</span></a>
						</li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1" class="p-5">
						<div id="concertDetailText" class="mb-5">
							<p class="fw-bold">공연시간 정보</p>
							<p>예매가능시간: 전일17시(월~토 관람 시)까지/전일 11시(일요일 관람 시)까지</p>
							<p class="fw-bold">[공연일시]</p>
							<c:forEach items="${date}" var="date" varStatus="statusUploaded">
								<p>- <c:out value="${date.concertDate }"/> <c:out value="${date.concertDateTime }"/></p>
							</c:forEach>
							<p class="fw-bold">공지사항</p>
							<p>※ 티켓 예매 시 공연 안내사항에 동의한 것으로 간주하며, 본 내용은 공연 상황에 따라 추가·변경될 수 있습니다. 공연 관람에 지장이나 불이익을 받지 않도록 관람 전 반드시 공연 안내사항을 재확인 바랍니다.</p>
							<p>※ 본 공연은 동일좌석 재예매서비스 이용이 제한됩니다.</p>
							<p>※ 팬클럽 선예매 티켓, VIP 일부 좌석은 현장 수령 예정입니다. 자세한 내용은 예매 전 상세페이지를 반드시 확인 부탁드립니다.</p>
						</div>
						<div id="concertDetailImg" class="text-center">
							<c:set var="type" value="2"/>		<!-- #-> -->
				        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
				        	<c:forEach items="${uploaded}" var="uploaded" varStatus="statusUploaded">
							<c:if test="${uploaded.type eq type }">
								<img id="<c:out value="${name }"/>Preview" src="<c:out value="${uploaded.path }"/><c:out value="${uploaded.uuidName }"/>" class="card-img-center">
							</c:if>
							</c:forEach>
						</div>
					</section>
					<section id="section-2">
						<div class="d-flex justify-content-start align-items-center">
							<span>평점</span>
							<div class="rating ms-3">
							    <i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
							</div>
						</div>
						<div class="d-flex flex-wrap">
							<div class="card m-3" style="width: 100%;">
							  <div class="card-body">
							  	<div class="d-flex justify-content-start align-items-center">
								    <h5 class="card-title me-3">유저</h5>
								    <div class="rating d-flex justify-content-start align-items-center">
								    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
									</div>
									<div class="d-flex justify-content-start align-items-center">
										<p><span>1</span>/5</p>
									</div>
							  	</div>
							  	<div class="p-3">
								    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							  	</div>
							  </div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- end container -->
		
	</main>

<jsp:include page="../include/footer.jsp"></jsp:include>
   	<jsp:include page="../include/modal.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script src="/resources/concert/js/tabs.js"></script>
	<jsp:include page="../include/calendarScript.jsp"></jsp:include>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2793b1acd7ab778b17a809cbd8ebc3ea"></script>
	<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
	<script src="/resources/common/zabuto_calendar.min.js"></script>
    <!-- Specific scripts -->
	<script>
		
		new CBPFWTabs(document.getElementById('tabs'));

	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
		  keyboard: true,
		  backdrop: "static"
		})
	
	$(".loginModal").on("click", function(){
		$("#myModal").find("h1").text("로그인");
		$("#myModal").find(".modal-body").empty();
		$("#myModal").find(".modal-body").append('<form><div class="form-group"><label>ID</label><input type="text" class=" form-control " placeholder="Id" name="id" id="id" value="test1"></div><div class="form-group"><label>Password</label><input type="password" class=" form-control" placeholder="Password" id="password" name="password" value="Test123!"></div><p class="small"><a href="#">Forgot Password?</a></p><a href="#" class="btn_full" id="singinBtn">Sign in</a><a href="/signupUsrForm " class="btn_full_outline">Register</a></form>');
		$("#modalOk").remove();
		$("#modalClose").remove();
		
	 	myModal.show();
		
	})
	
	
	
	$("#concertAddress").on("click", function(){
		$("#myModal").find("h1").text("연세대학교 노천극장");
		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
		$("#myModal").find(".modal-body").empty();
		$("#myModal").find(".modal-body").append('<div id="map"></div>');
		$("#modalOk").remove();
		$("#modalClose").remove();
		
	 	myModal.show();
		
	})

	
	
	
	$(document).on("click", "#singinBtn", function(){
	 	var objId = $("#id");
		var objPw = $("#password");
		
		validationInst = function(){
			if(checkId(objId) == false) return false;
			if(checkPw(objPw) == false) return false;
				
		}
		if(validationInst() == false) return false;
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/loginUsrProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(),
				"password" : $("#password").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/concertUsrDetail";
				} else {
					alert("그런 회원 없습니다.");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	})
	
	$(document).on("ready","#map", function(){
		var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
		var map = new kakao.maps.Map(container, options);
	})
	

	
		
	
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
	                         	timeDiv +='<label class="btn btn-sm btn-secondary me-2" for="option'+value.seq+'"><span class="times">'+value.concertDateTime+'</span></label>';
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