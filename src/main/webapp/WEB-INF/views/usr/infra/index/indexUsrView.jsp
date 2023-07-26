<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../include/head.jsp"></jsp:include>
<jsp:include page="../include/header.jsp"></jsp:include>
	<main>
		<div id="carousel-home">
            <div class="owl-carousel owl-theme">
                 <div class="owl-slide cover" style="background-image: url(/resources/concert/img/2281123.jpg);">
                </div>
                <!--/owl-slide-->
                <div class="owl-slide cover" style="background-image: url(/resources/concert/img/2281123.jpg);">
                </div>
                <!--/owl-slide-->
                <div class="owl-slide cover" style="background-image: url(/resources/concert/img/2281123.jpg);">
                </div>
                <!--/owl-slide-->
            </div>
            <div id="icon_drag_mobile"></div>
        </div>
        <!-- news --------------------------------------------------------------------------------------------------  -->
        <div class="container margin_60">

			<div class="main_title">
				<h2>Concert <span>Top</span> rank</h2>
				<p>concert new desk</p>
			</div>
			<div class="d-flex align-items-center">
				<nav class="col-2 border text-center mt-0" id="rankTab">
					<ul class="d-flex flex-column justify-content-around ps-0 mb-0" style="height: 300px;">
						<li><span class="#list1">전체</span></li>
						<li><span class="#list2">발라드</span></li>
						<li><span class="#list3">락</span></li>
						<li><span class="#list4">힙합</span></li>
						<li><span class="#list5">재즈</span></li>
					</ul>
				</nav>
				<div class="col-10 py-2 px-3 rankList" id="list1">
					<div class="d-flex justify-content-around align-items-center overflow-hidden" style="width: 100%">
						<div class="tour_container mb-0">
                        	<div class="ribbon_3 popular"><span>1</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" alt="" class="img-fluid">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" alt="" class="img-fluid">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0">
                        	<div class="ribbon_3 popular"><span>3</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" alt="" class="img-fluid">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0">
                        	<div class="ribbon_3 popular"><span>4</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" alt="" class="img-fluid">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
					</div>
				</div>
				<div class="col-10 py-2 px-3 d-none rankList" id="list2">
					<div class="d-flex justify-content-around overflow-hidden" style="width: 100%">
                        <div class="tour_container mb-0" style="width: 20%;">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0" style="width: 20%;">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0" style="width: 20%;">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
                        <div class="tour_container mb-0" style="width: 20%;">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <div class="positoin-relative">
                                <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;">
                                <div class="position-absolute bottom-0 text-center p-2 d-none postTitle">
                                    <span>2023 성시경의 축가 콘서트</span>
                                </div>
                            </div>
                        </div>
					</div>
				</div>
				
				
			</div>
			<hr class="mt-5 mb-5">
		</div>
		<!-- End container -->
        <!-- rank --------------------------------------------------------------------------------------------------  -->
		<div class="main_title">
			<h2><span>New</span> Concert</h2>
		</div>

<!--         <div class="white_bg"> -->
<!--         <div class="container margin_60 rank"> -->
<!--             <div class="d-flex justify-content-around overflow-hidden" style="width: 100%"> -->
<!--                 <div class="tour_container mb-0" style="width: 20%;"> -->
<!--                     <div class="positoin-relative"> -->
<!--                         <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;"> -->
<!--                         <div class="position-absolute bottom-0 text-center p-2 d-none postTitle"> -->
<!--                             <span>2023 성시경의 축가 콘서트</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="tour_container mb-0" style="width: 20%;"> -->
<!--                     <div class="positoin-relative"> -->
<!--                         <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;"> -->
<!--                         <div class="position-absolute bottom-0 text-center p-2 d-none postTitle"> -->
<!--                             <span>2023 성시경의 축가 콘서트</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="tour_container mb-0" style="width: 20%;"> -->
<!--                     <div class="positoin-relative"> -->
<!--                         <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;"> -->
<!--                         <div class="position-absolute bottom-0 text-center p-2 d-none postTitle"> -->
<!--                             <span>2023 성시경의 축가 콘서트</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="tour_container mb-0" style="width: 20%;"> -->
<!--                     <div class="positoin-relative"> -->
<!--                         <img src="/resources/concert/img/구름아래소극장.jpg" alt="" class="img-fluid" style="width: 100%; object-fit: cover;"> -->
<!--                         <div class="position-absolute bottom-0 text-center p-2 d-none postTitle"> -->
<!--                             <span>2023 성시경의 축가 콘서트</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!-- 			</div> -->
<!--         </div> -->
<!--         /container -->
<!--         </div> -->
        <!-- /white_bg -->
        
        

		
	</main>
	<!-- End main -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/modal.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script>
	
		var swiper = new Swiper(".mySwiper", {
		      slidesPerView: 4,
		      spaceBetween: 30,
		      pagination: {
		        el: ".swiper-pagination",
		        clickable: true,
		      },
	  });
		
		$("#tabs li a").on("click", function(){
			$("#tabs li a").removeClass("bg-info");
			$(this).addClass("bg-info");
			
		})
		
		$(".header_link").removeClass("link-dark").addClass("link-light");
		$(function(){
			$(window).scroll(function(){
	
		        if ($(window).scrollTop() == 0) {
		        	$(".header_link").removeClass("link-dark").addClass("link-light");
		        } else {
					$(".header_link").removeClass("link-light").addClass("link-dark");
		        }
		    });
		});
		
		var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
	 		  keyboard: true,
	 		  backdrop: "static"
	 		})
	 	$(".loginModal").on("click", function(){
	 		$("#myModal").find("h1").text("로그인");
	 		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
	 		$("#myModal").find(".modal-body").empty();
	 		$("#myModal").find(".modal-body").append('<form><div class="form-group"><label>ID</label><input type="text" class=" form-control " placeholder="Id" name="id" id="id" value="test1"></div><div class="form-group"><label>Password</label><input type="password" class=" form-control" placeholder="Password" id="password" name="password" value="Test123!"></div><p class="small"><a href="#">Forgot Password?</a></p><a href="#" class="btn_full" id="singinBtn">Sign in</a><a href="/signupUsrForm " class="btn_full_outline">Register</a></form>');
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
	 					location.href = "/indexUsrView";
	 				} else {
	 					alert("그런 회원 없습니다.");
	 				}
	 			}
	 			,error : function(jqXHR, textStatus, errorThrown){
	 				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	 			}
	 		});
	 		
// 			$("form[name=singupForm]").attr("action", "/indexUsrView").submit();
	 	})
	 	
// 		$(".tour_container").hover(function(){
// 			$(this).find(".postTitle").toggleClass("d-none");
// 		})
		
		$("#rankTab span").on("click", function(){
			var target = "";
			target = $(this).prop('class');
			targetHref = target.slice(-6);
			$(".rankList").addClass("d-none");
			$(targetHref).removeClass("d-none");
			$("#rankTab span").parent().removeClass("text-primary");
			$(this).parent().addClass("text-primary");
			
		})
	 	
	 	

	</script>
	
    
    

</body>

</html>