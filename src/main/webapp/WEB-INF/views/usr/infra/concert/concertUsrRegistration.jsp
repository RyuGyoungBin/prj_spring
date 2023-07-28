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
    <link rel="shortcut icon" href="/concertUsrRegistrationimg/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/concertUsrRegistrationimg/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/concertUsrRegistrationimg/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/concertUsrRegistrationimg/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/concertUsrRegistrationimg/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="/resources/concert/css/style.css" rel="stylesheet">
	<link href="/resources/concert/css/vendors.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
	<link href="/concertUsrRegistrationcss/admin.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="/concertUsrRegistrationcss/custom.css" rel="stylesheet">
	<style>
		ul#top_tools a {
		    color: #000;
		}
		#concertDateTime span:after {
			content:", ";
			margin-right:5px;
		}
		#concertDateTime span:last-of-type:after {
			content:"";
		}
	</style>
</head>

<body>

    <div id="preloader">
        <div class="sk-spinner sk-spinner-wave">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div>
    <!-- End Preload -->

    <div class="layer"></div>
    <!-- Mobile menu overlay mask -->

    <!-- Header================================================== -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div id="logo_home">
                    	<h2><a href="index.html" title="logo">LOGO</a></h2>
                    </div>
                </div>
                <nav class="col-9 d-flex justify-content-end">
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu col-11">
                        <div id="header_menu">
                            <img src="img/logo_sticky.png" width="160" height="34" alt="City tours">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul class="text-end me-5">
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-dark">발라드 </a>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-dark">락 </a>
                            </li>
                             <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-dark">힙합 </a>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-dark">버스킹 </a>
                            </li>
                    </div><!-- End main-menu -->
                    <div class="col-1">
	                    <ul id="top_tools">
	                        <li>
	                            <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
	                        </li>
	                        <li>
	                            <div class="dropdown dropdown-cart">
	                                <a class="cart_bt dropdown"><i class="bi bi-person-square"></i></a>
	                                <ul class="dropdown-menu" id="cart_items">
	                                    <li><strong><a href="login.html">logout</a></strong></li>
	                            		<li><strong><a href="mymenu.html" id="wishlist_link">mymenu</a></strong></li>
	                                </ul>
	                            </div><!-- End dropdown-cart-->
	                        </li>
	                    </ul>
                    </div>
                </nav>
            </div>
        </div><!-- container -->
    </header><!-- End Header -->
	<div class="d-flex flex-column">
		<div style="min-height:100px;"></div>
	</div>
	<!-- End section -->
	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="#index.html">Home</a>
					</li>
					<li><a href="mymenu.html">mymenu</a></li>
					<li>concert registration</li>
				</ul>
			</div>
		</div>
		
		<div class="margin_60 container">
			<form>
				<div class="d-flex">
					<div class="col-3 flex-wrap">
						<div>
							<img src="img/post.png" style="width:240px; height:360px;">
						</div>
						<input type="file">
					</div>
					<div class="col-6">
						<div class="form-group">
							<label for="genre" class="form-label">장르</label>
							<select class="form-select mb-5 w-10" aria-label="Default select example" id="genre">
							  <option value="0">발라드</option>
							  <option value="1">락</option>
							  <option value="2">힙합</option>
							</select>
						</div>
						<div class="form-group">
							<label for="title" class="form-label">제목</label>
		 					<input class="form-control form-control-sm p-2" name="concertTitle" id="concertTitle" type="text" placeholder="title" required>	
						</div>
						<div class="form-group d-flex justify-content-between align-items-center">
							<div class="col-5">
								<label><i class="icon-calendar-7"></i> Date</label>
								<input class="date-pick form-control" type="text" id="concertDate">
							</div>
							<div class="col-5">
								<label>Time</label>
								<input type="time" id="concertTime" class="form-control">
							</div>
							<div class="col-1 text-center">
								<button type="button" class="btn btn-sm btn-info" id="concertDateAdd">+</button>
							</div>
						</div>
						<div id="concertDateTime">
						</div>
					</div>
				</div>
				<div class="d-flex flex-column mt-5">
					<span>장소 등록</span>
					<div class="d-flex mb-5">
						<div style="width:400px; height:400px;" class="border me-3">
							map
						</div>
						<div class="col-5">
							<div class="form-group">
								<label for="title" class="form-label">우편번호</label>
			 					<input class="form-control form-control-sm p-2" name="concertZipCode" id="concertZipCode" type="text" required disabled>	
							</div>
							<div class="form-group">
								<label for="title" class="form-label">주소</label>
			 					<input class="form-control form-control-sm p-2" name="concertAddress" id="concertAddress" type="text" required disabled>	
							</div>
							<div class="form-group">
								<label for="title" class="form-label">상세 주소</label>
			 					<input class="form-control form-control-sm p-2" name="concertAddressDetail" id="concertAddressDetail" type="text" placeholder="상세주소" required>	
							</div>
						</div>
					</div>
				</div>
				<div class="d-flex flex-wrap">
					<span class="col-12 mb-5">좌석 등록</span>
					<div class="col-4 flex-wrap">
						<div>
							<img src="img/post.png" style="width:360px; height:240px;">
						</div>
						<input type="file">
					</div>
					<div class="col-6">
						<div class="form-group">
							<label for="title" class="form-label">제목</label>
		 					<input class="form-control form-control-sm p-2" id="title" type="text" placeholder="title" required>	
						</div>
						<div class="form-group d-flex justify-content-between align-items-center">
							<div class="col-5">
								<label><i class="icon-calendar-7"></i> Date</label>
								<input class="date-pick form-control" type="text" id="concertDate">
							</div>
							<div class="col-5">
								<label>Time</label>
								<input type="time" id="concertTime" class="form-control">
							</div>
							<div class="col-1 text-center">
								<button type="button" class="btn btn-sm btn-info" id="concertDateAdd">+</button>
							</div>
						</div>
						<div id="concertDateTime">
						</div>
					</div>
				</div>
				<div class="d-flex flex-column">
					<span class="mb-3">상세설명</span>
					<textarea name="concertDetailText"></textarea>
				</div>
				<button type="button" class="btn btn-sm" id="registrationBtn">등록</button>
			</form>
		</div>
		<!-- end container -->
		
	</main>
	<!-- End main -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
   	<jsp:include page="../include/modal.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script src="/resources/concert/js/tabs.js"></script>
	<jsp:include page="../include/calendarScript.jsp"></jsp:include>
    <!-- Specific scripts -->
    <script>
    </script>
	<script>
		$(function() {
		      $('input.date-pick').daterangepicker({
		          autoUpdateInput: true,
		          singleDatePicker: true,
		          autoApply: true,
		          minDate:new Date(),
		          showCustomRangeLabel: false,
		          locale: {
		            format: 'YY-MM-DD',
		          }
		          });
	    });
		var i=1;
		$("#concertDateAdd").on("click", function(){
			$("#concertDateTime").append("<button type='button' class='btn btn-sm btn-danger p-0 me-2 concertDel'>x</button><span>"+$("#concertDate").val()+" "+$("#concertTime").val()+"</span><input type='hidden' name='concertDate' value='$("#concertDate").val()'><input type='hidden' name='concertDate' value='$("#concertDateTime").val()'>")
		});
		$(document).on("click",".concertDel", function(){
			$(this).next().remove();
			$(this).remove();
		});
		
		$("#registrationBtn").on("click", function(){
			
			for(var j=1; j<=$("#concertDateTime span").length; j++){
				console.log($("#concertDateTime span:nth-of-type("+j+")").text());
			}			
			
		});
	</script>
	

</body>

</html>