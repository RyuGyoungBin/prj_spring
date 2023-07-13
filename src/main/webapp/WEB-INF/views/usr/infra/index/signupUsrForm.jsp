<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
	<main>
    <section>
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-10 col-lg-8 col-md-6 col-sm-8">
                	<div id="login">
                    		<div class="text-center"><img src="" alt="Image" width="160" height="34"></div>
                            <hr>
                           <form class="d-flex flex-wrap justify-content-around" name="singupForm" method="post">
                                <div class="form-group col-12 col-xl-5">
                                	<label>Id</label>
                                    <input type="text" class=" form-control"  placeholder="id" name="id" id="id">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                	<label>Email</label>
                                	<div class="d-flex justify-content-between align-items-center">
	                                    <input type="text" class=" form-control" placeholder="EmailDomain" name="emailDomain" style="width:45%;" id="emailDomain">
	                                    @
	                                    <input type="text" class=" form-control" placeholder="EmailAccount" name="emailAccount" style="width:45%;" id="emailAccount">
                                	</div>
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                	<label>Password</label>
                                    <input type="password" class=" form-control" id="password1" placeholder="Password" name="password">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                	<label>Confirm password</label>
                                    <input type="password" class=" form-control" id="password2" placeholder="Confirm password">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                	<label>User name</label>
                                    <input type="text" class=" form-control" placeholder="User name" name="name" id="name">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                               		<label>DOB</label>
                                    <input type="text" class=" form-control" placeholder="dob" name="dob" id="dob">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                               		<label>gender</label>
                                    <select class=" form-control" name="gender">
                                    	<option value="0">남</option>
                                    	<option value="1">여</option>
                                    	<option value="2">기타</option>
                                    </select>
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                </div>
<!--                                 <div class="col-12 border d-flex flex-wrap justify-content-around position-relative pt-4 mb-4 phoneBox"> -->
<!--                                 	<div class=" position-absolute top-0 end-0 "> -->
<!--s 	                                	<button type="button" class="btn btn-light plusBtn">+</button> -->
<!--                                 	</div> -->
                                	<div class="form-group col-12 col-xl-5">
	                                	<input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray" checked>
	                                	<input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0">
	                                	<label>Phone number</label>
<!--                                 		<button type="button" class="btn btn-sm btn-danger RemoveBtn float-end">-</button> -->
	                                    <input type="text" class=" form-control" name="numberArray" id="phone0" placeholder="Phone number">
	                                </div>
<!--                                 </div> -->
                                
                                <div class="col-12 border d-flex flex-wrap justify-content-around pt-4 mb-4 align-items-center">
									<div class="form-group col-12 col-xl-5">
										<label>Zip code</label>
										<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호" readonly>
									</div>
									<div class="form-group col-12 col-xl-5 mb-0">
										<input type="button" onclick="address1()" value="우편번호 찾기" class="btn btn-secondary">
									</div>
									<div class="form-group col-12 col-xl-5">
										<label>Address</label>
										<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소" readonly>
									</div>
									<div class="form-group col-12 col-xl-5">
										<label>Address detail</label>
										<input class="form-control" name="addressDetail" id="registerAddressDetail" type="text" placeholder="상세주소">
									</div>
                                </div>
                                
                                <div class="col-12 ps-5 pe-5">
	                                <p>약관</p>
	                                <span>품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
	                                <div class="form-check form-check-reverse">
	                                약관 동의
		                                <input class="form-check-input agree" type="checkbox" value="1" name="agree" id="agree">
	                                </div>
                                </div>
                               <div class="col-12 ps-5 pe-5">
	                                <p>약관</p>
	                                <span>품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
	                                <div class="form-check form-check-reverse">
	                                문자 수신 동의
		                                <input class="form-check-input agree" type="checkbox" value="1" name="phoneAgree" id="phoneAgree">
	                                </div>
                                </div>
                                <div class="col-12 ps-5 pe-5">
	                                <p>약관</p>
	                                <span>품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
	                                <div class="form-check form-check-reverse">
	                                이메일 수신 동의
		                                <input class="form-check-input agree" type="checkbox" value="1" name="emailAgree" id="emailAgree">
	                                </div>
                                </div>
                                
                                <div id="pass-info" class="clearfix"></div>
                                <button type="button" class="btn_full" id="singupBtn">Create an account</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->
	
	<div id="toTop"></div><!-- Back to top button -->

	<jsp:include page="../include/script.jsp"></jsp:include>
	<jsp:include page="../include/validation.jsp"></jsp:include>

	<!-- Specific scripts -->
	<script src="/resources/concert/js/pw_strenght.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- Specific scripts -->
	<script>
		var objId = $("#id");
		var objEmailDomain = $("#emailDomain");
		var objEmailAccount = $("#emailAccount");
		var objPw = $("#password1");
		var objPwCheck = $("#password2");
		var objName = $("#name");
		var objDob = $("#dob");
		var objPhone = $("#phone0");
		var objZipCode = $("#registerZipCode");
		var objAddress = $("#registerAddress");
		var objAddressDetail = $("#registerAddressDetail");
		var objAgree = $("#agree");
		var idajaxck = 0;
		
		validationInst = function(){
// 			if(checkId(objId) == false) return false;
			if(checkEmailDomain(objEmailDomain) == false) return false;
			if(checkEmailAccount(objEmailAccount) == false) return false;
			if(checkPw(objPw) == false) return false;
			if(pwCheck(objPwCheck) == false) return false;
			if(checkName(objName) == false) return false;
			if(checkDob(objDob) == false) return false;
// 			for(var p=0; p<objNumber.length; p++){
// 				if(checkPhone(objPhone.eq(p)) == false) return false;
// 			}
			if(checkPhone(objPhone) == false) return false;
			if(checkAddress(objZipCode) == false) return false;
			if(checkAddress(objAddress) == false) return false;
			if(checkAgree(objAgree) == false) return false;
		}
		
		
// 		e.keyCode == 13 || e.keyCode == 9
		$("#id").on("blur", function(e){
// 			if () {
				if(checkId(objId) == false) return false;
		 		$.ajax({
		 			async: true 
		 			,cache: false
		 			,type: "post"
		 			/* ,dataType:"json" */
		 			,url: "/UsridProc"
		 			/* ,data : $("#formLogin").serialize() */
		 			,data : { "id" : $("#id").val()
		 				}
		 			,success: function(response) {
		 				if(response.rt == "success") {
		 					$("#id").removeClass("border-danger");
		 					$("#id").siblings(".validation").remove();
		 					$("#id").parent().append("<div class='p-2 text-success validation'>사용 가능한 아이디입니다.</div>");
		 					idajaxck = 1;
		 				} else {
		 					$("#id").addClass("border-danger");
		 					$("#id").siblings(".validation").remove();
		 					$("#id").parent().append("<div class='p-2 text-danger validation'>사용 불가능한 아이디입니다.</div>");
		 					$("#id").focus();
		 					idajaxck = 0;
		 				}
		 			}
		 			,error : function(jqXHR, textStatus, errorThrown){
		 				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		 			}
		 		})
// 			}
		})
	
	
		function address1() {
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
	                document.getElementById("registerZipCode").value = data.zonecode;
	                document.getElementById("registerAddress").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("registerAddressDetail").focus();
	            }
	        }).open();
	    }
		
// 		var i =1;
// 		$(".plusBtn").on("click", function(){
// 			$(".phoneBox").append('<div class="form-group col-12 col-xl-5"><input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray"><input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0"><label>Phone number</label><button type="button" class="btn btn-sm btn-danger RemoveBtn float-end">-</button><input type="text" class=" form-control" name="numberArray" id="phone'+i+'" placeholder="Phone number"></div>');
// 			i++;
//  		});
		
// 		$(document).on("click", ".RemoveBtn", function(){
// 			if($(".RemoveBtn").length > 1){
// 				$(this).parent().remove();
// 			}
// 		});
			
		$(function(){
			
			$("#singupBtn").on("click", function(){
				if(idajaxck == 1){
					console.log(idajaxck);
	// 				var objArray = $("input[name=numberArray]");
					if(validationInst() == false) return false;
					$("form[name=singupForm]").attr("action", "/memberinsert").submit();				
				} else {
					alert("아이디를 확인해주세요");
					$("#id").focus();
				}
			});
			
		})
		
		
		
		
		
		
		
			
		
		
	</script>
	</body>
</html>