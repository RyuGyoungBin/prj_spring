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
				<h2>Concert <span>Top</span> news</h2>
				<p>concert new desk</p>
			</div>

            <div class="owl-carousel owl-theme list_carousel add_bottom_30" style="height:360px;">
                <div class="item" >
                	<div class="card" style="width: 18rem;">
	                	<div class="ribbon_3 popular"><span>1</span></div>
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
                <!-- /item -->
                <div class="item" >
                	<div class="card" style="width: 18rem;">
	                	<div class="ribbon_3 popular"><span>1</span></div>
					  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
					  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
                </div>
                <!-- /item -->
                <div class="item" >
                	<div class="card" style="width: 18rem;">
	                	<div class="ribbon_3 popular"><span>1</span></div>
					  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
					  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
                </div>
                <!-- /item -->
                <div class="item" >
                	<div class="card" style="width: 18rem;">
	                	<div class="ribbon_3 popular"><span>1</span></div>
					  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
					  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
                </div>
                <!-- /item -->
                <div class="item" >
                	<div class="card" style="width: 18rem;">
	                	<div class="ribbon_3 popular"><span>1</span></div>
					  <img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-top" alt="...">
					  <div class="card-body position-absolute bottom-0 border-0 bg-dark-subtle">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
                </div>
                <!-- /item -->
            </div>
            <!-- /carousel -->
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
	<script>
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
	 		$("#myModal").find(".modal-body").append('<form><div class="form-group"><label>ID</label><input type="text" class=" form-control " placeholder="Id"></div><div class="form-group"><label>Password</label><input type="password" class=" form-control" placeholder="Password"></div><p class="small"><a href="#">Forgot Password?</a></p><a href="#" class="btn_full">Sign in</a><a href="/signupUsrForm " class="btn_full_outline">Register</a></form>');
	 		$("#modalOk").remove();
	 		$("#modalClose").remove();
	 		
		 	myModal.show();
	 		
	 	})
	 	
	</script>
    
    

</body>

</html>