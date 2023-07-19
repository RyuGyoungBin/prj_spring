<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.company.app.infra.code.CodeServiceImpl"/>
<jsp:include page="../include/header.jsp"></jsp:include>
<main id="main" class="main">
<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1') }"/>
<c:forEach items="${listCodeGender }" var="listGender" varStatus="status">
	<c:out value="${listGender.name }"></c:out>
</c:forEach>
    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/concertList">Home</a></li>
          <li class="breadcrumb-item active">Data-Member</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form autocomplete="off" action="/memberXdmList" method="post" name="formList">
			  		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<div class="d-flex">
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-control form-control-sm p-2" id="use_YN">
								<option value="" selected>---장르---</option>
								<option value="1">발라드</option>
								<option value="2">락</option>
								<option value="3">랩</option>
								<option value="4">버스킹</option>
							</select>
						</div>
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-control form-control-sm p-2" id="date_">
								<option value="" selected>---장소---</option>
								<option value="1">서울</option>
								<option value="2">인천</option>
								<option value="3">경기</option>
							</select>
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="start_date" type="text" placeholder="시작일">
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="end_date" type="text" placeholder="종료일" min="">
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="" type="text" placeholder="">
						</div>
					</div>
					<div class="d-flex mb-3 align-items-center">
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="name" id="name" type="text" placeholder="name" value="<c:out value="${vo.name}"></c:out>">
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="gender" id="gender" type="text" placeholder="gender" value="<c:out value="${vo.gender}"></c:out>">
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="emailAccount" id="emailAccount" type="text" placeholder="emailAccount" value="<c:out value="${vo.emailAccount}"></c:out>">
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="id" id="id" type="text" placeholder="id" value="<c:out value="${vo.id}"></c:out>">
						</div>
						
						<div class="col-2 text-start ms-3 me-3">
							<button type="submit" class="btn btn-warning btn-sm me-2" id="search"><i class="bi bi-search"></i></button>
							<button type="reset" class="btn btn-danger btn-sm"><i class="bi bi-arrow-clockwise"></i></button>
						</div>
					</div>
				</form>
				
				<c:choose>
					<c:when test="${fn:length(memberList) eq 0}">
						<tr>
							<td class="text-center" colspan="9">There is no data!</td>
						</tr>	
					</c:when>
					
		                  	<c:otherwise>
		              <div class="overflow-hidden overflow-x-auto">
		              <!-- Table with stripped rows -->
		              <table class="table table-striped text-nowrap">
		                <thead>
		                  <tr>
		                  	<th scope="col">
								<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
							</th>
		                    <th>seq</th>
		                    <th>emailFull</th>
		                    <th>emailDomain</th>
		                    <th>emailAccount</th>
		                    <th>id</th>
		                    <th>password</th>
		                    <th>name</th>
		                    <th>dob</th>
		                    <th>gender</th>
		                    <th>phoneAgree</th>
		                    <th>phoneAgreeDate</th>
		                    <th>emailAgree</th>
		                    <th>emailAgreeDate</th>
		                    <th>memberType</th>
		                    <th>brn</th>
		                    <th>delNy</th>
		                    <th>zipCode</th>
		                    <th>address</th>
		                    <th>number</th>
		                  </tr>
		                </thead>
		                <tbody>
							<c:forEach items="${memberList}" var="list" varStatus="status">
		                  		<tr>
				                  	<th scope="col">
										<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
									</th>
				                    <td scope="row"><c:out value="${list.seq }"></c:out></td>
				                   <td><c:out value="${list.emailFull }"></c:out></td>
				                   <td><c:out value="${list.emailDomain}"></c:out></td>
				                   <td><c:out value="${list.emailAccount}"></c:out></td>
				                   <td><a href="/memberXdmForm?seq=<c:out value="${list.seq }"></c:out>"><c:out value="${list.id}"></c:out></a></td>
				                   <td><c:out value="${list.password}"></c:out></td>
				                   <td><c:out value="${list.name}"></c:out></td>
				                   <td><c:out value="${list.dob}"></c:out></td>
				                   <td>
				                   	<c:forEach items="${listCodeGender }" var="listGender" varStatus="status">
										<c:if test="${list.gender eq listGender.codeNum }"><c:out value="${listGender.name }"></c:out></c:if>
							       	</c:forEach>
								   </td>
				                   <td><c:out value="${list.phoneAgree}"></c:out></td>
				                   <td><c:out value="${list.phoneAgreeDate}"></c:out></td>
				                   <td><c:out value="${list.emailAgree}"></c:out></td>
				                   <td><c:out value="${list.emailAgreeDate}"></c:out></td>
				                   <td><c:out value="${list.memberType}"></c:out></td>
				                   <td><c:out value="${list.brn}"></c:out></td>
				                   <td><c:out value="${list.delNy}"></c:out></td>
				                   <td><c:out value="${list.zipCode}"></c:out></td>
				                   <td><c:out value="${list.address}"></c:out></td>
				                   <td><c:out value="${list.number}"></c:out></td>
			                 	</tr>
							</c:forEach>
		                </tbody>
		              </table>
		              </div>
					</c:otherwise>
				</c:choose>
              <!-- End Table with stripped rows -->
              <div class="container-fluid px-0 mt-2">
			    <div class="row">
			        <div class="col">
			            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
			            <ul class="pagination justify-content-center mb-0">
			                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
			                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="bi bi-chevron-double-left"></i></a></li>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
			                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
					</c:when>
					<c:otherwise>             
			                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>                
			<c:if test="${vo.endPage ne vo.totalPages}">                
			                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="bi bi-chevron-double-right"></i></a></li>
			</c:if>
			                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
			            </ul>
			        </div>
			    </div>
			</div>
            </div>
           
				<div class="d-flex px-4 pb-5">
					<div class="col">
						<button type="button" class="btn btn-danger btn-sm" id="delNot">X</button>
						<button class="btn btn-danger btn-sm" type="button" id="del"><i class="bi bi-trash"></i></button>
					</div>
					<div class="col text-end">
						<button type="button" class="btn btn-success btn-sm" id="excel"><i class="bi bi-file-earmark-excel"></i></button>
					</div>
				</div>
          </div>
		  
        </div>
      </div>
    </section>
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

  </main><!-- End #main -->

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
// paging
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "memberXdmList").submit();
	}
	
	//modal
 	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
 		  keyboard: true,
 		  backdrop: "static"
 		})
 	$("#del").on("click", function(){
 		$("#myModal").find("h1").text("삭제");
 		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
 		$("#myModal").find(".modal-body").empty();
 		$("#myModal").find(".modal-body").append("<p>정말 삭제하시겠습니까.</p>");
 		$("#myModal").find(".modal-body").append("<p>정말로 삭제하시겠습니까.</p>");
 		$("#modalOk").remove();
 		$(".modal-footer").append('<button type="button" class="btn btn-danger" id="modalOk">Ok</button>');
	 	myModal.show();
 		
 	})
 	$("#delNot").on("click", function(){
 		$("#myModal").find("h1").text("제거");
 		//$("#myModal").find(".modal-body").text("제거하시겠습니까");
 		$("#myModal").find(".modal-body").empty();
 		$("#myModal").find(".modal-body").append("<p>정말 제거하시겠습니까.</p>");
 		$("#modalOk").remove();
 		$(".modal-footer").append('<button type="button" class="btn btn-warning" id="modalOk">Ok</button>');
	 	myModal.show();
 	})
 	//tabel
  	 	$(document).eq(0).on("click", $("input:checkbox[name=tabel_check]").eq(0),function(){
	  	 	if($("input:checkbox[name=tabel_check]").eq(0).is(":checked") == true) {
	  	 		$("input:checkbox[name=tabel_check]").prop("checked", true);
	  	 	}
		});
	$("#member").addClass("active");
	
</script>
</body>
</html>