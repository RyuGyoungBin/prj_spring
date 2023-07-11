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
                    	<input type="text" class="form-control" name="id" id="id" value="<c:out value="${list.id }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="emailDomain" class=" col-form-label">email</label>
                    	<div class="d-flex justify-content-between align-items-center">
                           <input type="text" class=" form-control" placeholder="EmailDomain" name="emailDomain" id="emailDomain" style="width:45%;" value="<c:out value="${list.emailDomain }"></c:out>">
                           @
                           <input type="text" class=" form-control" placeholder="EmailAccount" name="emailAccount" style="width:45%;" value="<c:out value="${list.emailAccount }"></c:out>">
                      	</div>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="password" class=" col-form-label">password</label>
                    	<input type="text" class="form-control" name="password" id="password" value="<c:out value="${list.password }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="gender" class=" col-form-label">gender</label>
                    	<input type="text" class="form-control" name="gender" id="gender" value="<c:out value="${list.gender }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">name</label>
                    	<input type="text" class="form-control" name="name" id="name" value="<c:out value="${list.name }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="dob" class=" col-form-label">dob</label>
                    	<input type="text" class="form-control" name="dob" id="dob" value="<c:out value="${list.dob }"></c:out>">
	                </div>
	                <div class="col-11 border d-flex flex-wrap justify-content-around position-relative py-4 mb-4 phoneBox">
                    	<div class=" position-absolute top-0 end-0 ">
	                     	<button type="button" class="btn btn-sm btn-danger RemoveBtn">-</button>
	                     	<button type="button" class="btn btn-light plusBtn">+</button>
                    	</div>
                    	<c:forEach items="listPhone" var="listPhone" varStatus="status">
                    	<div class="form-group col-12 col-xl-5">
	                     	<input class="form-check-input phone" type="radio" value="1" name="phoneMarkArray" <c:if test="${listPhone.defaultNy eq '1'}">checked</c:if>checked >
	                     	<input name="phoneMarkArray" class="phoneMarkHidden" type="hidden" value="0">
	                     	<label>Phone number</label>
                         	<input type="text" class=" form-control" name="numberArray" id="phone1" placeholder="Phone number"  value="<c:out value="${listPhone.number }"></c:out>">
                        </div>
                    	</c:forEach>
                    </div>
	                <div class="col-12 border d-flex flex-wrap justify-content-around pt-4 mb-4 align-items-center">
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
  <jsp:include page="../include/validation.jsp"></jsp:include>
  	<script>
  	
  	validationUpdt = function(){
		if(reqNameEng.test($.trim($("#name").val())) == false){
			alert("공백없는 대소문자(2,10)만 입력 가능합니다.");
			$("#name").focus();
			return false;
		}
		
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
  	</script>

</body>

</html>