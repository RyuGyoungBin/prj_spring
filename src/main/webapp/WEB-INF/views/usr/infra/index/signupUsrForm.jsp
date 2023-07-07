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
                                    <input type="text" class=" form-control"  placeholder="id" name="id">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                	<label>Email</label>
                                	<div class="d-flex justify-content-between align-items-center">
	                                    <input type="text" class=" form-control" placeholder="EmailDomain" name="emailDomain" style="width:45%;">
	                                    @
	                                    <input type="text" class=" form-control" placeholder="EmailAccount" name="emailAccount" style="width:45%;">
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
                                    <input type="text" class=" form-control" placeholder="User name" name="name">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                               		<label>DOB</label>
                                    <input type="text" class=" form-control" placeholder="dob" name="dob">
                                </div>
                                <div class="form-group col-12 col-xl-5">
                               		<label>gender</label>
                                    <select class=" form-control" name="gender">
                                    	<option value="1">남</option>
                                    	<option value="2">여</option>
                                    	<option value="3">기타</option>
                                    </select>
                                </div>
                                <div class="form-group col-12 col-xl-5">
                                </div>
                                <div class="col-12 border d-flex flex-wrap justify-content-around position-relative pt-4 mb-4 phoneBox">
                                	<div class=" position-absolute top-0 end-0 ">
	                                	<button type="button" class="btn btn-sm btn-danger RemoveBtn">-</button>
	                                	<button type="button" class="btn btn-light plusBtn">+</button>
                                	</div>
                                	<div class="form-group col-12 col-xl-5">
	                                	<input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray" checked>
	                                	<label>Phone number</label>
	                                    <input type="text" class=" form-control" name="numberArray" id="phone1" placeholder="Phone number">
	                                </div>
                                </div>
                                
                                <div class="col-12 border d-flex flex-wrap justify-content-around pt-4 mb-4 align-items-center">
									<div class="form-group col-12 col-xl-5">
										<label>Zip code</label>
										<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호">
									</div>
									<div class="form-group col-12 col-xl-5 mb-0">
										<input type="button" onclick="address1()" value="우편번호 찾기" class="">
									</div>
									<div class="form-group col-12 col-xl-5">
										<label>Address</label>
										<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소">
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
		                                <input class="form-check-input agree" type="checkbox" value="1" name="agree">
	                                </div>
                                </div>
                               <div class="col-12 ps-5 pe-5">
	                                <p>약관</p>
	                                <span>품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
	                                <div class="form-check form-check-reverse">
	                                문자 수신 동의
		                                <input class="form-check-input agree" type="checkbox" value="1" name="phoneAgree">
	                                </div>
                                </div>
                                <div class="col-12 ps-5 pe-5">
	                                <p>약관</p>
	                                <span>품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
	                                <div class="form-check form-check-reverse">
	                                이메일 수신 동의
		                                <input class="form-check-input agree" type="checkbox" value="1" name="emailAgree">
	                                </div>
                                </div>
                                
                                <div id="pass-info" class="clearfix"></div>
                                <button class="btn_full" id="singup">Create an account</button>
                            </form>
                        </div>
                        <button type="button" id="bbb" class="btn">bcgsd</button>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->

	<div id="toTop"></div><!-- Back to top button -->

	<jsp:include page="../include/script.jsp"></jsp:include>

	<!-- Specific scripts -->
	<script src="/resources/concert/js/pw_strenght.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- Specific scripts -->
	<script>
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
		
		var i =2;
		$(".plusBtn").on("click", function(){
			$(".phoneBox").append('<div class="form-group col-12 col-xl-5"><input class="form-check-input phone" type="radio" value="0" name="phoneMarkArray"><input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0"><label>Phone number</label><input type="text" class=" form-control" name="numberArray" id="phone'+i+'" placeholder="Phone number"></div>');
			i++;
		});
		$(function(){
			$(".RemoveBtn").on("click", function(){
				if($(".phoneBox").find(".form-group").length>1){
					$(".phoneBox").find(".form-group").last().remove();
				}
			});
			
		})
		$("#singup").on("click", function(){
				$("form[name=singupForm]").attr("action", "/memberinsert").submit();				
		});
		
		/* $("#bbb").on("click", function(){
			for(var i = 0; i < $("input[name=phoneMarkArray]").length; i++){
				if($("input[name=phoneMarkArray]").eq(i).is(":checked")==true){
					$(this).siblings().find(".phoneMarkHidden").remove();
				} else {
				}
				
			}
			
		}) */
		
		
		
			
		
		
	</script>
	</body>
</html>