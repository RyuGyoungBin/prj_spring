<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">

<jsp:include page="../include/head.jsp"></jsp:include>

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
                            <img src="/resources/concert/img/logo_sticky.png" width="160" height="34" alt="City tours">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul class="text-end me-5">
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-light header_link">발라드 </a>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-light header_link">락 </a>
                            </li>
                             <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-light header_link">힙합 </a>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu link-light header_link">재즈 </a>
                            </li>
                         </ul>
                    </div><!-- End main-menu -->
                    <div class="col-1">
	                    <ul id="top_tools">
	                        <li>
	                            <a href="javascript:void(0);" class="search-overlay-menu-btn link-light header_link"><i class="icon_search"></i></a>
	                        </li>
	                        <li>
	                            <div class="dropdown">
	                                <a class="cart_bt dropdown link-light header_link"><i class="bi bi-person-square"></i></a>
	                                <ul class="dropdown-menu" id="cart_items">
	                                    <li><strong><a href="login.html" class="dropdown-item">logout</a></strong></li>
	                                    <li><strong><a href="" class="dropdown-item">login</a></strong></li>
	                                    <li><strong><a href="/signupUsrForm" class="dropdown-item">sinup</a></strong></li>
	                            		<li><strong><a href="mymenu.html" class="dropdown-item">mymenu</a></strong></li>
	                                </ul>
	                            </div><!-- End dropdown-cart-->
	                        </li>
	                    </ul>
                    </div>
                </nav>
            </div>
        </div><!-- container -->
    </header><!-- End Header -->
	
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
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
	
	</script>
    
    

</body>

</html>