<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
                    	<h2><a href="/indexUsrView" title="logo">LOGO</a></h2>
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
                                <a href="/concertMain;" class="show-submenu link-dark header_link">발라드 </a>
                            </li>
                            <li class="submenu">
                                <a href="/concertMain" class="show-submenu link-dark header_link">락 </a>
                            </li>
                             <li class="submenu">
                                <a href="/concertMain" class="show-submenu link-dark header_link">힙합 </a>
                            </li>
                            <li class="submenu">
                                <a href="/concertMain" class="show-submenu link-dark header_link">재즈 </a>
                            </li>
                         </ul>
                    </div><!-- End main-menu -->
                    <div class="col-1">
	                    <ul id="top_tools">
	                        <li>
	                            <a href="javascript:void(0);" class="search-overlay-menu-btn link-dark header_link"><i class="icon_search"></i></a>
	                        </li>
	                        <li>
	                            <div class="dropdown">
	                                <a class="cart_bt dropdown link-dark header_link"><i class="bi bi-person-square"></i></a>
	                                <ul class="dropdown-menu" id="cart_items">
	                                	<c:choose>
	                                		<c:when test="${not empty sessionId }">
	                                			<li><strong>Id:<c:out value="${sessionId }"></c:out> </strong>
			                                    <li><strong><a class="dropdown-item" id="logoutBtn">logout</a></strong></li>
			                            		<li><strong><a href="/mymenuUsrView" class="dropdown-item">mymenu</a></strong></li>
	                                		</c:when>
	                                		<c:otherwise>
			                                    <li><strong><a class="dropdown-item" id="loginModal">login</a></strong></li>
			                                    <li><strong><a href="/signupUsrForm" class="dropdown-item">sinup</a></strong></li>
	                                		</c:otherwise>
	                                	</c:choose>
	                                </ul>
	                            </div><!-- End dropdown-cart-->
	                        </li>
	                    </ul>
                    </div>
                </nav>
            </div>
        </div><!-- container -->
    </header><!-- End Header -->