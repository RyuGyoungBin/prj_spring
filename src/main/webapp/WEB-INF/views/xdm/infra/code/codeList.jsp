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
          <li class="breadcrumb-item active">Data-Code</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form autocomplete="off" action="/codeList" method="post">
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
							<select class="form-control form-control-sm p-2" name="codeGroup_seq" id="codeGroup_seq">
								<option value="">---codeGroup_seq---</option>
                    		<c:forEach items="${group}" var="group" varStatus="status">
                    			<option value="<c:out value='${group.seq }'></c:out>"><c:out value="${group.name}"></c:out></option>
                    		</c:forEach>
							</select>
						</div>
					</div>
					<div class="d-flex mb-3 align-items-center">
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-control form-control-sm p-2" id="">
								<option value="1" selected></option>
								<option value="2"></option>
							</select>
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="shkey" id="name" type="text" placeholder="name">
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<select class="form-control form-control-sm p-2" name="shOption" id="shOption">
									<option value="" selected>---delNy---</option>
									<option value="0">Y</option>
									<option value="1">N</option>
								</select>
						</div>
						<div class="col-2 text-start ms-3 me-3">
							<button type="submit" class="btn btn-warning btn-sm me-2" id="search"><i class="bi bi-search"></i></button>
							<button type="reset" class="btn btn-danger btn-sm"><i class="bi bi-arrow-clockwise"></i></button>
						</div>
					</div>
				</form>
				
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td class="text-center" colspan="9">There is no data!</td>
						</tr>	
					</c:when>
					
		                  	<c:otherwise>
		              <!-- Table with stripped rows -->
		              <table class="table table-striped">
		                <thead>
		                  <tr>
		                  	<th scope="col">
								<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
							</th>
		                    <th>seq</th>
		                    <th>name</th>
		                    <th>codeGroup_name</th>
		                    <th>delNy</th>
		                  </tr>
		                </thead>
		                <tbody>
							<c:forEach items="${list}" var="list" varStatus="status">
		                  		<tr>
				                  	<th scope="col">
										<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
									</th>
				                    <td scope="row"><c:out value="${list.seq }"></c:out></td>
				                   <td><a href="/codeForm?seq=<c:out value="${list.seq }"></c:out>"><c:out value="${list.name }"></c:out></a></td>
				                   <td><c:out value="${list.groupname}"></c:out></td>
				                   <td><c:out value="${list.delNy}"></c:out></td>
			                 	</tr>
							</c:forEach>
		                </tbody>
		              </table>
					</c:otherwise>
				</c:choose>
              <!-- End Table with stripped rows -->
              <ul class="btn-group pagination">
			    <c:if test="${pageMaker.prev }">
			    <li>
			        <a href='<c:url value="/board/boardList?page=${pageMaker.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a>
			    </li>
			    </c:if>
			    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
			    <li>
			        <a href='<c:url value="/board/boardList?page=${pageNum }"/>'><i class="fa">${pageNum }</i></a>
			    </li>
			    </c:forEach>
			    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
			    <li>
			        <a href='<c:url value="/board/boardList?page=${pageMaker.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a>
			    </li>
			    </c:if>
			  </ul>
              

            </div>
           
				<div class="d-flex px-4 pb-5">
					<div class="col">
						<button type="button" class="btn btn-danger btn-sm" id="delNot">X</button>
						<button class="btn btn-danger btn-sm" type="button" id="del"><i class="bi bi-trash"></i></button>
					</div>
					<div class="col text-end">
						<button type="button" class="btn btn-success btn-sm" id="excel"><i class="bi bi-file-earmark-excel"></i></button>
						<button type="button" class="btn btn-primary btn-sm" id="plus" onclick = "location.href = '/codeForm'">+</button>
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
  	// search
  	 	$("#start_date").datepicker({
  	 	});
  	 	$("#end_date").datepicker({
  	 		maxDate : "+1m +1w",
  	 		minDate : "-1y"
  	 	});
  		$("#start_date").on("change", function(){
  			console.log($("#start_date").val())
  			$("#end_date").datepicker({
  				minDate: $("#start_date").val()
  			});
  		});

//	  	 	for(i = 0; i < $("input:checkbox[name=tabel_check]").length; i++) {
//			    console.log($("input:checkbox[name=tabel_check]").eq(i).is(":checked"));	
	
		
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
	 	//tabel
		$( "thead tr th:first-child a" ).contents().unwrap().wrap( '<span></span>' );
		
	 $(".datatable-search").remove();
	 
	 $(".datatable-sorter").on("click", function(){
	 	$("input[name=tabel_check]").prop("checked", false);
	 });
	 $("#code").addClass("active");
	 $(".datatable-top").prepend($(".datatable-info"));
	 $(function(){
		 	$("div.datatable-bottom").addClass("d-flex justify-content-center");
		 	$("nav.datatable-pagination").addClass("float-none");
	 	}); 
	 	
	</script>
</body>
</html>