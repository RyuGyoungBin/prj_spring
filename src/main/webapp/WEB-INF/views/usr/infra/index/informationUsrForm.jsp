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
		<div style="min-height:100px;"></div>
	</div>
	<!-- End section -->
	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="/indexUsrView">Home</a>
					</li>
					<li><a href="/mymenuUsrView">mymenu</a></li>
					<li>information</li>
				</ul>
			</div>
		</div>
		
		<div class="margin_60 container">
			<div class="row">
			<div class="col-md-6">
				<h4>Your profile</h4>
				<ul id="profile_summary">
					<li>User email : <span><c:out value="${listOne.emailFull }"/></span>
					</li>
					<li>User name : <span><c:out value="${listOne.name }"/></span>
					</li>
					<li>Phone number : <span><c:out value="${listOne.number }"/></span>
					</li>
					<li>Date of birth : <span><c:out value="${listOne.dob }"/></span>
					</li>
					<li>zipcode : <span><c:out value="${listOne.zipCode }"/></span>
					</li>
					<li>address : <span><c:out value="${listOne.address }"/></span>
					</li>
					<li>address detail : <span><c:out value="${listOne.addressDetail }"/></span>
					</li>
				</ul>
			</div>
		</div>
		<!-- End row -->

		<div class="divider"></div>
		<div class="row">
			<div class="col-md-12">
				<h4>Edit profile</h4>
			</div>
		</div>
		<form name="formList" method="post">
		<input type="hidden" class=" form-control" name="seq" id="seq" value="<c:out value="${listOne.seq }"/>">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Password</label>
                    <input type="password" class=" form-control" name="password" id="password1" placeholder="Password">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Confirm password</label>
                    <input type="password" class=" form-control" id="password2" placeholder="Confirm password">
				</div>
			</div>
		</div>
		<!-- End row -->
		<div class="row">
			<div class="col-12 border d-flex flex-wrap justify-content-around position-relative pt-4 mb-4 phoneBox">
	           	<div class=" position-absolute top-0 end-0 ">
	            	<button type="button" class="btn btn-sm btn-danger RemoveBtn">-</button>
	            	<button type="button" class="btn btn-light plusBtn">+</button>
	           	</div>
	           	<div class="form-group col-12 col-xl-5">
	            	<input class="form-check-input phone" type="radio" value="1" name="phoneMark" checked>
	            	<label>Phone number</label>
	                <input type="text" class=" form-control" name="number" id="number" placeholder="Phone number">
	            </div>
            </div>
		</div>
		<!-- End row -->

		<hr>
		<div class="row">
			<div class="col-md-12">
				<span class="h5">Edit address</span>
				<a class="btn btn-sm btn-secondary"  onclick="address()">우편번호 찾기</a>
			</div>
		</div>
		<!-- End row -->
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Zip code</label>
					<input class="form-control" name="zipCode" id="zipCode" type="text" placeholder="우편번호">
				</div>
			</div>
			<div class="col-md-6"></div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Address</label>
					<input class="form-control" name="address" id="address" type="text" placeholder="주소">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Address detail</label>
					<input class="form-control" name="addressDetail" id="addressDetail" type="text" placeholder="상세주소">
				</div>
			</div>
		</div>
		</form>
		<!-- End row -->

		<hr>
		
			<!-- Drop Zone -->
			<hr>
			<div class="d-flex justify-content-between">
				<button type="button" class="btn_1 green" id="updateBtn">Update Profile</button>
				<button type="button" class="btn_1 " id="deleteBtn" style="background: #dc3545;">Delete ID</button>
			</div>
		
		</div>
	</main>
	<!-- End main -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">
	    	<div class="modal-content">
	   			<div class="modal-header">
	      			<h1 class="modal-title fs-5"></h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      		<div class="modal-body">
	      		</div>
	      		<div class="modal-footer">
		        	<button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
		        	<button type="button" class="btn btn-secondary" id="modalOk">Ok</button>
	      		</div>
	    	</div>
	 	</div>
	</div>
    
   <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- Specific scripts -->
	<script>
	function address() {
        new daum.Postcode({
            oncomplete: function(data) {
            	var addr = ""; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("zipCode").value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addressDetail").focus();
            }
        }).open();
    };
	
	var i =2;
	$(".plusBtn").on("click", function(){
		$(".phoneBox").append('<div class="form-group col-12 col-xl-5"><input class="form-check-input phone" type="radio" value="1" name="PhoneMark"><label>Phone number</label><input type="tel" class=" form-control" id="phone'+i+'" placeholder="Phone number"></div>');
		i++;
	});
	$(function(){
		$(".RemoveBtn").on("click", function(){
			$(".phoneBox").find(".form-group").last().remove();
		});
		
	});
	//modal
 	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
 		  keyboard: true,
 		  backdrop: "static"
 		});
 	$("#deleteBtn").on("click", function(){
 		$("#myModal").find("h1").text("아이디 삭제");
 		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
 		$("#myModal").find(".modal-body").empty();
 		$("#myModal").find(".modal-body").append("<p>정말 삭제하시겠습니까.</p>");
 		$("#myModal").find(".modal-body").append("<p>정말로 삭제하시겠습니까.</p>");
 		$("#modalOk").remove();
 		$(".modal-footer").append('<button type="button" class="btn btn-danger" id="modalOk">Ok</button>');
	 	myModal.show();
 		
 	});
 	
 	$("#updateBtn").on("click", function(){
 		$("form[name=formList]").attr("action", "/informationUsrUpdate").submit();
 	});
	</script>
	

</body>

</html>