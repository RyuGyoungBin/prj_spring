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
			  	<div class="d-flex flex-wrap justify-content-around">
	                <div class=" col-5 mb-3">
	                  	<label for="seq" class=" col-form-label" >seq</label>
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동생성" value="<c:out value="${list.seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="concertType" class=" col-form-label">concertType</label>
                    	<input type="text" class="form-control" name="concertType" id="concertType" value="<c:out value="${list.concertType }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="concertTitle" class=" col-form-label">concertTitle</label>
                    	<input type="text" class="form-control" name="concertTitle" id="concertTitle" value="<c:out value="${list.concertTitle }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                	<label for="concertDetailText" class=" col-form-label">concertDetailText</label>
                    	<textarea type="text" class="form-control" name="concertDetailText" id="concertDetailText"><c:out value="${list.concertDetailText }"></c:out></textarea>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="defaultNy" class=" col-form-label">defaultNy</label>
                    	<input type="text" class="form-control" name="defaultNy" id="defaultNy" value="<c:out value="${list.defaultNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="defaultNy" class=" col-form-label">memberSeq</label>
                    	<input type="text" class="form-control" name="memberSeq" id="memberSeq" value="<c:out value="${list.memberSeq }"></c:out>">
	                </div>
	                <div class="col-12 d-flex flex-wrap justify-content-around py-4 mb-4 align-items-center">
						<div class="form-group col-12 col-xl-5">
							<label>Zip code</label>
							<input class="form-control" name="concertZipCode" id="registerZipCode" type="text" placeholder="우편번호" value="<c:out value="${list.concertZipCode }"></c:out>" readonly>
						</div>
						<div class="form-group col-12 col-xl-5 mb-0">
							<input type="button" onclick="address1()" value="우편번호 찾기" class="btn btn-secondary">
						</div>
						<div class="form-group col-12 col-xl-5">
							<label>Address</label>
							<input class="form-control" name="concertAddress" id="registerAddress" type="text" placeholder="주소" value="<c:out value="${list.concertAddress }"></c:out>" readonly>
						</div>
						<div class="form-group col-12 col-xl-5">
							<label>Address detail</label>
							<input class="form-control" name="concertAddressDetail" id="registerAddressDetail" type="text" placeholder="상세주소" value="<c:out value="${list.concertAddressDetail }"></c:out>">
						</div>
                    </div>
                    <div class=" col-5 mb-3">
	                  	<label for="concertDate" class=" col-form-label">concertDate</label>
                    	<input type="date" class="form-control" name="concertDate" id="concertDate" value="<c:out value="${list.concertDate }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="concertTime" class=" col-form-label">concertTime</label>
                    	<input type="time" class="form-control" name="concertDateTime" id="concertDateTime" value="<c:out value="${list.concertDateTime }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="dateDefaultNy" class=" col-form-label">dateDefaultNy</label>
                    	<input type="datetime" class="form-control" name="dateDefaultNy" id="dateDefaultNy" value="<c:out value="${list.dateDefaultNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">casting</label>
                    	<input type="datetime" class="form-control" name="name" id="name" value="<c:out value="${list.name }"></c:out>">
	                </div>
	                
				</div>
				<c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/concertXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/concertXdmList'"><i class="bi bi-list"></i></button>
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
  	
  	
//   		var objName = $("#name");
  	
//   		validationUpdt = function(){
//   			if(check(objName) == false) return false;
//   		}
  		
//   		validationInst = function(){
//   			if(validationUpdt() == false) return false;
//   		}
  	
	  	$("#btnDelete").on("click", function(){
			$("form[name=form]").attr("action", "/codeGroupXdmDelete").submit();
		});
	 	
	 	$("#btnUpdate").on("click", function(){
	 		if(validationUpdt() == false) return false;
			$("form[name=form]").attr("action", "/codeGroupXdmUpdate").submit();
		});
	 	
	 	$("#btnInsert").on("click", function(){
// 	 		if(validationInst() == false) return false;
			$("form[name=form]").attr("action", "/concertXdmInsert").submit();
		});
	 	$("#btnDelNy").on("click", function(){
			$("form[name=form]").attr("action", "/codeGroupXdmDelNy").submit();
		});
		 $("#concert").addClass("active");
  	</script>

</body>

</html>