<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
	
	<!-- CUSTOM CSS -->
	<link href="/resources/concert/css/custom.css" rel="stylesheet">
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
				<h3 class="fw-bold">TITLE</h3>
			</div>
			<div class="d-flex mb-5">
				<div class="col-3 text-center pt-5">
					<img src="/resources/concert/img/testimonial_1.jpg" alt="Image">
				</div>
				<div class="col-4 ps-2 pt-5">
					<p>장소 : <span></span></p>
					<p>기간 : <span></span></p>
					<div class="d-flex">
						<div class="col-2">
							<p>가격 : </p>
						</div>
						<div>
							<p><span>R</span>석 : <span>15,000원</span></p>
							<p><span>S</span>석 : <span>13,000원</span></p>
							<p><span>A</span>석 : <span>10,000원</span></p>
						</div>
					</div>
					<p>출연진 : <span></span></p>
				</div>
				<div class="col-5 light">
					<section class="text-center mb-3">
					    <!-- 달력 Start -->
					    <div id="wrapper">
					        <span id="day" style="display: none;"></span>
					        <span id="date" style="display: none;"></span>
					        <span id="month" class="h4"></span>
					      </div>
					      <div id="calendar-wrapper" class="d-flex justify-content-around align-items-center">
					        <div id="prev" class="button-wrapper col-1">
					          <button type="button" id="prev-button" class="calbtn">
					            <i class="bi bi-caret-left-fill"></i>
					          </button>
					        </div>
					        <div id="table-wrapper">
						        <h3 id="week"></h3>
						        <table id="calendar-table">
						          <thead>
						          <tr>
						            <th>SUN</th>
						            <th>MON</th>
						            <th>TUE</th>
						            <th>WED</th>
						            <th>THU</th>
						            <th>FRI</th>
						            <th>SAT</th>
						          </tr>
						          </thead>
						        </table>
					        </div>
				        	<div id="next" class="button-wrapper col-1">
					          <button type="button" id="next-button" class="calbtn">
					            <i class="bi bi-caret-right-fill"></i>
				          	</div>
				        </div>
				    <!-- 달력 End -->
				  </section>
				  <div>
				  	<ul class="d-flex justify-content-center p-0 mb-3">
				  		<li class="d-flex me-2"><div class="bg-danger bg-opacity-50" style="width:20px;"></div>공연 날짜</li>
				  		<li class="d-flex mx-2"><div class="bg-warning bg-opacity-50" style="width:20px;"></div>선택된 날짜</li>
				  	</ul>
				  </div>
				  <div class="text-center mb-3">
				  	<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
					<label class="btn btn-sm btn-secondary me-2" for="option1">1회차<span>11:00</span></label>
					
					<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
					<label class="btn btn-sm btn-secondary ms-2" for="option2">2회차<span>15:00</span></label>
				  </div>
				  <div class="d-flex justify-content-center">
						<div class="col-2">
							<p>잔여 좌석</p>
						</div>
						<div class="col-2">
							<p><span>R</span>석 : <span>20</span>석</p>
							<p><span>S</span>석 : <span>10</span>석</p>
							<p><span>A</span>석 : <span>5</span>석</p>
						</div>
					</div>
					<div class=text-center>
						<button type="button" class="btn btn-secondary" style="min-width:80px;">예매</button>
					</div>
				</div>
			</div>
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
						<div id="concertDetailText">
							<p>끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의
							</p>
							<p>실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리 청춘에서만 구할 수 있는 것이다 청춘은 인생의 황금시대다 우리는 이 황금시대의 가치를
							</p>
							<p>구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게 일월과 같은 예가 되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의</p>
						</div>
						<div id="concertDetailImg">
							<!-- <img> -->
						</div>
					</section>
					<section id="section-2">
						<div>
							<p>평점</p>
							<div class="rating">
							    <i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
							</div>
						</div>
						<div class="d-flex flex-wrap">
							<div class="card m-3" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <div class="rating">
							    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
								</div>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							  </div>
							</div>
							<div class="card m-3" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <div class="rating">
							    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
								</div>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							  </div>
							</div>
							<div class="card m-3" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <div class="rating">
							    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
								</div>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							  </div>
							</div>
							<div class="card m-3" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <div class="rating">
							    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
								</div>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							  </div>
							</div>
							<div class="card m-3" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <div class="rating">
							    	<i class="icon-smile h6"></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6 "></i><i class="icon-smile h6"></i>
								</div>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
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
    <!-- Specific scripts -->
	<script>
		const $calendarTable = document.querySelector("#calendar-table");
		let today = new Date();
		const DATE = new Date();
		const WEEK = new Array("SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT");
		const $day = document.querySelector("#day");
		const $date = document.querySelector("#date");
		const MONTH = new Array("JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC");
		const $month = document.querySelector("#month");
		const tbody = document.createElement("tbody");
		$calendarTable.append(tbody);
	
		const $prevButton = document.querySelector("#prev-button");
		$prevButton.addEventListener("click",handlePrevMonthClick);
		const $nextButton = document.querySelector("#next-button");
		$nextButton.addEventListener("click",handleNextMonthClick);
	
		createCal();
	
		function createCal() {
		  $day.textContent = WEEK[today.getDay()];
		  $date.textContent = today.getDate();
		  $month.textContent = `${MONTH[today.getMonth()]} ${today.getFullYear()}`;
	
		  const firstDate = new Date(today.getFullYear(),today.getMonth(),1);
		  const lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
	
		  while(tbody.rows.length > 0){
		    tbody.deleteRow(tbody.rows.length-1);
		  }
		  let row = tbody.insertRow();
		  let cell = "";
		  let count = 0;
	
		  for(let i = 0; i<firstDate.getDay();i++){
		    console.log(i);
		    cell = row.insertCell();
		    count++;
		  }
		  for(let j = 1;j<=lastDate.getDate();j++){
		    if(count % 7 === 0){
		      row = tbody.insertRow();
		    }
		    cell = row.insertCell();
		    cell.textContent = j;
		    count++;
		  }
	
		}
	
		function handleNextMonthClick() {
		  today = new Date(today.getFullYear(),today.getMonth() + 1,today.getDate());
		  createCal();
		}
	
		function handlePrevMonthClick(){
		  today = new Date(today.getFullYear(),today.getMonth() - 1,today.getDate());
		  createCal();
		}
		
		$("td").addClass("disable rounded-pill");
		
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
		  keyboard: true,
		  backdrop: "static"
		})
	$("#loginModal").on("click", function(){
		$("#myModal").find("h1").text("로그인");
		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
		$("#myModal").find(".modal-body").empty();
		$("#myModal").find(".modal-body").append('<form><div class="form-group"><label>ID</label><input type="text" class=" form-control " placeholder="Id" name="id" id="id" value="abcde"></div><div class="form-group"><label>Password</label><input type="password" class=" form-control" placeholder="Password" id="password" name="password" value="Qwer123!"></div><p class="small"><a href="#">Forgot Password?</a></p><a href="#" class="btn_full" id="singinBtn">Sign in</a><a href="/signupUsrForm " class="btn_full_outline">Register</a></form>');
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
			,url: "/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(),
				"password" : $("#password").val()}
			,success: function(response) {
				if(response.rt == "success") {
					alert(response.rtMember.name);
					location.href = "/indexUsrView";
				} else {
					alert("그런 회원 없습니다.");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	})
	</script>
	

</body>

</html>