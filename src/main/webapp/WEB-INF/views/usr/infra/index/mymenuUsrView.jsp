<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../include/head.jsp"></jsp:include>
<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="d-flex flex-column">
		<div style="min-height:150px;"></div>
		<div class="col-lg-12 d-flex">
			<div class="col-lg-2"></div>
			<div class="col-lg-8 d-flex align-items-center text-center justify-content-center" style="min-height:220px;">
				<div class="col-lg-2 col-md-2">
					<div class="img_list">
						<img src="/resources/concert/img/tour_box_1.jpg" alt="Image">
					</div>
				</div>
				<div class="col-lg-8 col-md-8 ps-5 text-start border-start ms-5">
					<h2 class="mb-5">"<strong></strong>"님의 페이지입니다</h2>
					<button type="button" class="btn btn-sm btn-secondary mt-3" onclick="location.href='/informationUsrForm'">개인 정보 수정</button>
				</div>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<div style="min-height:100px;"></div>
	</div>
	<!-- End section -->
	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="/indexUsrView">Home</a>
					</li>
					<li>mymenu</li>
				</ul>
			</div>
		</div>
		
		<div class="margin_60 container">
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-booking"><span>예매중인 표</span></a>
						</li>
						<li><a href="#section-2" class="icon-wishlist"><span>관람후기</span></a>
						</li>
						<li><a href="#section-3" class="icon-settings" disable><span>등록</span></a>
						</li>
					</ul>
				</nav>
				<div class="content">

					<section id="section-1">

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-4 col-md-4 position-relative">
									<div class="img_list">
										<a href="single_tour.html"><img src="/resources/concert/img/tour_box_1.jpg" alt="Image">
										</a>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="tour_list_desc d-flex justify-content-around flex-column">
										<h3 class="p-0">타이틀 : <strong>장기동</strong></h3>
										<div>
											<span>날짜 :</span>
											<span>2023-06-12</span>
										</div>
										<div>
											<span>시간 :</span>
											<span>10:05</span>
										</div>
										<div>
											<span>장소 :</span>
											<span>김포시 장기동</span>
											<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 d-flex flex-column justify-content-around align-items-center ps-0">
									<div class="text-center">
										<p class="text-danger">취소시 주의사항</p>
										<p>수수료가 부과됩니다</p>
									</div>
									<button type="button" class="btn btn-danger">취소/환불</button>
								</div>
							</div>
							<!-- End row -->
						</div>
						<!-- End strip booking -->
					</section>
					<!-- End section 1 -->

					<section id="section-2">

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-4 col-md-4 position-relative">
									<div class="img_list">
										<a href="single_tour.html"><img src="/resources/concert/img/tour_box_1.jpg" alt="Image">
										</a>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="tour_list_desc d-flex justify-content-around flex-column">
										<h3 class="p-0">타이틀 : <strong>장기동</strong></h3>
										<div>
											<span>사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을</span>
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 d-flex flex-column justify-content-around align-items-center ps-0">
									<div class="text-center">
										<p class=""></p>
										<p></p>
									</div>
									<button type="button" class="btn btn-primary">수정/등록</button>
								</div>
							</div>
							<!-- End row -->
						</div>
						<!-- End strip booking -->
					</section>
					<!-- End section 2 -->

					<section id="section-3">

						<div class="strip_booking">
							<div class="text-end mb-3">
								<button type="button" class="btn btn-secondary">등록</button>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 position-relative">
									<div class="img_list">
										<a href="single_tour.html"><img src="/resources/concert/img/tour_box_1.jpg" alt="Image">
										</a>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="tour_list_desc d-flex justify-content-around flex-column">
										<h3 class="p-0">타이틀 : <strong>장기동</strong></h3>
										<div>
											<span>날짜 :</span>
											<span>2023-06-12</span>
										</div>
										<div>
											<span>시간 :</span>
											<span>10:05</span>
										</div>
										<div>
											<span>장소 :</span>
											<span>김포시 장기동</span>
											<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 d-flex flex-column justify-content-around align-items-center ps-0">
									<div class="text-center">
										<p class="text-danger"></p>
										<p></p>
									</div>
									<button type="button" class="btn btn-secondary">수정</button>
								</div>
							</div>
							<!-- End row -->
						</div>
						<!-- End strip booking -->
					</section>
					<!-- End section 3 -->
					</div>
					<!-- End content -->
				</div>
				<!-- End tabs -->
			</div>
			<!-- end container -->
		
	</main>
	<!-- End main -->
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
    <!-- Specific scripts -->
	<script src="/resources/concert/js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
	</script>
	

</body>

</html>