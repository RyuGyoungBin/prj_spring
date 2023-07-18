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
			<div class="d-flex flex-column">
				<h3 class="fw-bold">발라드</h3>
			</div>
			<div class="d-flex flex-column border-bottom pt-3 pb-3">
				<div class="d-flex" style="min-height:200px;">
					<div class="col-3">
						<img>
					</div>
					<div class="col-7 d-flex flex-column justify-content-around">
						<h4>제목 :<span class="concertTitle"></span></h4>
						<p>기간 :<span class="concertDate"></span></p>
						<p>장소 :<span class="concertAddress"></span></p>
						<p>출연진 :<span class="ConcertCast"></span></p>
					</div>
				</div>
			</div>
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link active" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
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
			,url: "/loginUsrProc"
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