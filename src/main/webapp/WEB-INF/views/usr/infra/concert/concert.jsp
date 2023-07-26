<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">

<jsp:include page="../include/head.jsp"></jsp:include>
<jsp:include page="../include/header.jsp"></jsp:include>


	
	<!-- End section -->
	<main>
		<div id="position" style="padding-top:90px;">
			<div class="container">
				<ul>
					<li><a href="#">Home</a>
					</li>
					<li>concert</li>
				</ul>
			</div>
		</div>
		
		<div class="margin_60 container">
			<div class="d-flex justify-content-around">
				<div class="col-2 border">
					<div>
						<div class="border-bottom p-3 fw-bold">콘서트</div>
						<nav>
							<ul class="d-flex flex-column">
								<li><a href="" class="active">발라드</a></li>
								<li class="my-2"><a href="">락</a></li>
								<li><a href="">힙합</a></li>
								<li class="my-2"><a href="">재즈</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-9 d-flex flex-column">
					<h3 class="fw-bold">발라드</h3>
					<table class="text-center">
						<thead class="border-bottom">
							<tr>
								<th colspan="2">상품명</th>
								<th>장소</th>
								<th>기간</th>
								<th>출연진</th>
							</tr>
						</thead>
						<tbody class="border-bottom">
							<tr>
								<th class="py-3 border-end">
									<img src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="card-img-center" alt="...">
								</th>
								<th>
									<span><a href="/concertUsrDetail">2023 성시경의 축가 콘서트</a></span>
								</th>
								<th>
									<span>연세대학교 노천극장</span>
								</th>
								<th>
									<span>2023/07/12 - 2023/07/18</span>
								</th>
								<th>
									<span>성시경</span>
								</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
<!-- 			<nav aria-label="Page navigation example"> -->
<!-- 			  <ul class="pagination justify-content-center"> -->
<!-- 			    <li class="page-item"> -->
<!-- 			      <a class="page-link" href="#" aria-label="Previous"> -->
<!-- 			        <span aria-hidden="true">&laquo;</span> -->
<!-- 			      </a> -->
<!-- 			    </li> -->
<!-- 			    <li class="page-item"><a class="page-link active" href="#">1</a></li> -->
<!-- 			    <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 			    <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 			    <li class="page-item"> -->
<!-- 			      <a class="page-link" href="#" aria-label="Next"> -->
<!-- 			        <span aria-hidden="true">&raquo;</span> -->
<!-- 			      </a> -->
<!-- 			    </li> -->
<!-- 			  </ul> -->
<!-- 			</nav> -->
		</div>
		<!-- end container -->
		
	</main>
	<!-- End main -->
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
   	<jsp:include page="../include/modal.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script>
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
					alert(response.rtMember.name);
					location.href = "/concertUsrMain";
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