<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../include/headSwiper.jsp"></jsp:include>
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
				<h2>Concert <span>Top</span> news</h2>
				<p>concert new desk</p>
			</div>
			<div id="tabs" class="tabs d-flex ">
				<nav class="col-2 d-flex justify-content-center">
					<ul class="col-12 d-flex flex-column">
						<li><a href="#section-1" class="icon-booking"><span>전체</span></a>
						</li>
						<li><a href="#section-2" class="icon-wishlist"><span>발라드</span></a>
						</li>
<!-- 						<li><a href="#section-3" class="icon-settings"><span>락</span></a> -->
<!-- 						</li> -->
<!-- 						<li><a href="#section-3" class="icon-settings"><span>힙합</span></a> -->
<!-- 						</li> -->
<!-- 						<li><a href="#section-3" class="icon-settings"><span>재즈</span></a> -->
						</li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">
						<div class="swiper mySwiper">
						    <div class="swiper-wrapper">
						      <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">성시경의 축가 콘서트</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/구름아래소극장.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">구름아래소극장</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/소향씨어터신한카드홀.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">소향씨어터신한카드홀</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/한전아트센터.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">한전아트센터</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">성시경의 축가 콘서트</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
						    </div>
						</div>
					</section>
					
					
					
					<section id="section-3">
						<div class="swiper mySwiper">
						    <div class="swiper-wrapper">
						      <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">성시경의 축가 콘서트</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/구름아래소극장.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">구름아래소극장</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/소향씨어터신한카드홀.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">소향씨어터신한카드홀</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/한전아트센터.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">한전아트센터</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
							  <div class="swiper-slide">
							  	<div class="card" style="width: 100%;">
			<!-- 	                	<div class="ribbon_3 popular"><span>1</span></div> -->
								  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
								  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
								    <h5 class="card-title">성시경의 축가 콘서트</h5>
								    <div class="card-text">
								    	<p>기간</p>
								    	<p>시간</p>
								    	<p>장소</p>
								    </div>
								  </div>
								</div>
							  </div>
						    </div>
						</div>
					</section>
				</div>
			</div>
			<hr class="mt-5 mb-5">
		</div>
		<!-- End container -->
        <!-- rank --------------------------------------------------------------------------------------------------  -->
		<div class="main_title">
			<h2>Concert <span>Top</span> rank</h2>
		</div>

        <div class="white_bg">
        <div class="container margin_60 rank">
            <div class="row small-gutters categories_grid">
				<div class="col-sm-12 col-md-6 tour_container">
                	<div class="ribbon_3 popular"><span>1</span></div>
                    <a href="all_tours_list.html">
                        <img src="/resources/concert/img/img_cat_home_1.jpg" alt="" class="img-fluid">
                        <div class="tour_title wrapper">
                            <h2 class="text-light"><strong>Versailles</strong> tour</h2>
                            <p class="rating">
                            	<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </p>
	                        <!-- end rating -->
                        </div>
                    </a>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="row small-gutters mt-md-0 mt-sm-2">
                        <div class="col-sm-6 tour_container">
                        	<div class="ribbon_3 popular"><span>2</span></div>
                            <a href="all_tours_list.html">
                                <img src="/resources/concert/img/img_cat_home_2.jpg" alt="" class="img-fluid">
                                <div class="wrapper">
                                    <h2>Tours</h2>
                                    <p class="rating">
	                            		<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
		                            </p>
			                        <!-- end rating -->
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 tour_container">
                        	<div class="ribbon_3 popular"><span>3</span></div>
                            <a href="all_hotels_list.html">
                                <img src="/resources/concert/img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper">
                                    <h2>Hotels</h2>
                                    <p class="rating">
		                            	<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
		                            </p>
			                        <!-- end rating -->
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 mt-sm-2 tour_container">
                        	<div class="ribbon_3 popular"><span>4</span></div>
                            <a href="all_hotels_list.html">
                                <img src="/resources/concert/img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper">
                                    <h2>Hotels</h2>
                                    <p class="rating">
		                            	<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
		                            </p>
			                        <!-- end rating -->
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 mt-sm-2 tour_container">
                        	<div class="ribbon_3 popular"><span>5</span></div>
                            <a href="all_restaurants_list.html">
                                <img src="/resources/concert/img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper">
                                    <h2>Restaurants</h2>
                                    <p class="rating">
		                            	<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
		                            </p>
			                        <!-- end rating -->
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!--/categories_grid-->
        </div>
        <!-- /container -->
        </div>
        <!-- /white_bg -->
        
        

		
	</main>
	<!-- End main -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/modal.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	<script src="/resources/concert/js/tabs.js"></script>
	<script>
	
		new CBPFWTabs(document.getElementById('tabs'));
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
	 	$("#loginModal").on("click", function(){
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
	 	
 	  var swiper = new Swiper(".mySwiper", {
	      slidesPerView: 4,
	      spaceBetween: 30,
	      pagination: {
	        el: ".swiper-pagination",
	        clickable: true,
	      },
    });
	 	
	 	

	</script>
	
    
    

</body>

</html>