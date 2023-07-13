<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:include page="../include/header.jsp"></jsp:include>
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/concertList">Home</a></li>
          <li class="breadcrumb-item active">Form</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form name="form" method="post">
			  	<div class="d-flex flex-wrap justify-content-around fs-8">
	                <div class=" col-5 mb-3">
	                  	<label for="seq" class=" col-form-label" >seq</label>
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동완성" value="<c:out value="${list.seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">name</label>
                    	<input type="text" class="form-control" name="name" id="name" value="<c:out value="${list.name }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="id" class=" col-form-label">id</label>
                    	<input type="text" class="form-control" name="id" id="id" value="<c:out value="${list.id }"></c:out>" readonly>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="emailDomain" class=" col-form-label">email</label>
                    	<div class="d-flex justify-content-between align-items-center">
                           <input type="text" class=" form-control" placeholder="EmailDomain" name="emailDomain" id="emailDomain" style="width:45%;" value="<c:out value="${list.emailDomain }"></c:out>">
                           @
                           <input type="text" class=" form-control" placeholder="EmailAccount" name="emailAccount" id="emailAccount" style="width:45%;" value="<c:out value="${list.emailAccount }"></c:out>">
                      	</div>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="password" class=" col-form-label">password</label>
                    	<input type="text" class="form-control" name="password" id="password" value="<c:out value="${list.password }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="gender" class=" col-form-label">gender</label>
                    	<select class="form-control" name="gender" id="gender">
                    		<option value="0" <c:if test="${list.gender eq '0'}">selected</c:if>>남자</option>
                    		<option value="1"<c:if test="${list.gender eq '1'}">selected</c:if>>여자</option>
                    		<option value="2"<c:if test="${list.gender eq '2'}">selected</c:if>>기타</option>
                    	</select>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="dob" class=" col-form-label">dob</label>
                    	<input type="text" class="form-control" name="dob" id="dob" value="<c:out value="${list.dob }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="dob" class=" col-form-label">Phone</label>
                    	<input type="text" class="form-control" name="number" id="phone" value="<c:out value="${list.number }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="dob" class=" col-form-label">member type</label>
                    	<select class="form-control" name="memberType" id="memberType">
                    		<option value="0" <c:if test="${list.memberType eq '0'}">selected</c:if>>사용자</option>
                    		<option value="1"<c:if test="${list.memberType eq '1'}">selected</c:if>>판매자</option>
                    	</select>
	                </div>
<!-- 	                <div class="col-11 border d-flex flex-wrap justify-content-around position-relative py-4 mb-4 phoneBox"> -->
<!--                     	<div class=" position-absolute top-0 end-0 "> -->
<!-- 	                     	<button type="button" class="btn btn-sm btn-danger RemoveBtn">-</button> -->
<!-- 	                     	<button type="button" class="btn btn-light plusBtn">+</button> -->
<!--                     	</div> -->
<%--                     	<c:forEach items="listPhone" var="listPhone" varStatus="status"> --%>
<!--                     	<div class="form-group col-12 col-xl-5"> -->
<%-- 	                     	<input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray" <c:if test="${listPhone.defaultNy eq '1'}">checked</c:if>checked > --%>
<!-- 	                     	<input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0"> -->
<!-- 	                     	<label>Phone number</label> -->
<%--                          	<input type="text" class=" form-control" name="numberArray" id="phone1" placeholder="Phone number"  value="<c:out value="${listPhone.number }"></c:out>"> --%>
<!--                         </div> -->
<%--                     	</c:forEach> --%>
<!--                     </div> -->
	                <div class="col-12 border d-flex flex-wrap justify-content-around py-4 mb-4 align-items-center">
						<div class="form-group col-12 col-xl-5">
							<label>Zip code</label>
							<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호" value="<c:out value="${list.zipCode }"></c:out>">
						</div>
						<div class="form-group col-12 col-xl-5 mb-0">
							<input type="button" onclick="address1()" value="우편번호 찾기" class="btn btn-secondary">
						</div>
						<div class="form-group col-12 col-xl-5">
							<label>Address</label>
							<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소" value="<c:out value="${list.address }"></c:out>">
						</div>
						<div class="form-group col-12 col-xl-5">
							<label>Address detail</label>
							<input class="form-control" name="addressDetail" id="registerAddressDetail" type="text" placeholder="상세주소" value="<c:out value="${list.addressDetail }"></c:out>">
						</div>
                    </div>
				</div>
				<c:choose>
					<c:when test="${empty param.seq }">
						<div class="d-flex justify-content-between my-5 text-center">
							<div class="col-2">
								<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeXdmList'"><i class="bi bi-list"></i></button>
							</div>
							<div class="col-2">
								<button id="btnInsert" type="button" class="btn btn-success">save</button>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="d-flex justify-content-between my-5 text-center">
							<div class="col-2">
								<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeXdmList'"><i class="bi bi-list"></i></button>
								<button id="btnDelete" type="button" class="btn btn-danger">delete</button>
								<button id="btnDelNy" type="button" class="btn btn-danger">uele</button>
							</div>
							<div class="col-2">
								<button id="btnUpdate" type="button" class="btn btn-success">update</button>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
              </form>
              <!-- End Table with stripped rows -->

            </div>
          </div>
		  
        </div>
      </div>
    </section>
  </main><!-- End #main -->

  <jsp:include page="../include/footer.jsp"></jsp:include>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <jsp:include page="../include/validation.jsp"></jsp:include>
  	<script>
  	
	var objEmailDomain = $("#emailDomain");
	var objEmailAccount = $("#emailAccount");
	var objPw = $("#password");
	var objName = $("#name");
	var objDob = $("#dob");
	var objPhone = $("#phone");
	var objZipCode = $("#registerZipCode");
	var objAddress = $("#registerAddress");
	var objAddressDetail = $("#registerAddressDetail");
	
  	
  	validationUpdt = function(){
		if(checkName(objName) == false) return false;
		if(checkEmailDomain(objEmailDomain) == false) return false;
		if(checkEmailAccount(objEmailAccount) == false) return false;
		if(checkPw(objPw) == false) return false;
		if(checkDob(objDob) == false) return false;
		if(checkPhone(objPhone) == false) return false;
		if(checkAddress(objZipCode) == false) return false;
		if(checkAddress(objAddress) == false) return false;
		
	}
	
	validationInst = function(){
		if(validationUpdt() == false) return false;
	}
  	
  	
	 	
	 	var i =2;
		$(".plusBtn").on("click", function(){
			$(".phoneBox").append('<div class="form-group col-12 col-xl-5 mt-2"><input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray"><input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0"><label>Phone number</label><input type="text" class=" form-control" name="numberArray" id="phone'+i+'" placeholder="Phone number"></div>');
			i++;
		});
		$(function(){
			$(".RemoveBtn").on("click", function(){
				if($(".phoneBox").find(".form-group").length>1){
					$(".phoneBox").find(".form-group").last().remove();
				}
			});
			
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
		$("#btnUpdate").on("click", function(){
			console.log("dasf");
			if(validationUpdt() == false) return false;
			$("form[name=form]").attr("action", "/memberupdate").submit();
		})
		$("#btnDelNy").on("click", function(){
			$("form[name=form]").attr("action", "/memberupdateDel").submit();
		})
		$("#btnDelete").on("click", function(){
			$("form[name=form]").attr("action", "/memberdelete").submit();
		})
  	</script>

</body>

</html>