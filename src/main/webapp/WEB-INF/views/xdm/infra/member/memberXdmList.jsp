<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:include page="../include/header.jsp"></jsp:include>
<main id="main" class="main">

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
			  <form autocomplete="off" action="codeXdmList" method="post">
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
								<input class="form-control form-control-sm p-2" name="shkey" id="name" type="text" placeholder="name" value="">
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
		              <table class="table table-striped">
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
				                   <td><c:out value="${list.id}"></c:out></td>
				                   <td><c:out value="${list.password}"></c:out></td>
				                   <td><c:out value="${list.name}"></c:out></td>
				                   <td><c:out value="${list.dob}"></c:out></td>
				                   <td><c:out value="${list.gender}"></c:out></td>
				                   <td><c:out value="${list.phoneAgree}"></c:out></td>
				                   <td><c:out value="${list.phoneAgreeDate}"></c:out></td>
				                   <td><c:out value="${list.emailAgree}"></c:out></td>
				                   <td><c:out value="${list.emailAgreeDate}"></c:out></td>
				                   <td><c:out value="${list.memberType}"></c:out></td>
				                   <td><c:out value="${list.brn}"></c:out></td>
				                   <td><c:out value="${list.delNy}"></c:out></td>
			                 	</tr>
							</c:forEach>
		                </tbody>
		              </table>
		              </div>
					</c:otherwise>
				</c:choose>
              <!-- End Table with stripped rows -->

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
	$("#member").addClass("active");
</script>
</body>
</html>