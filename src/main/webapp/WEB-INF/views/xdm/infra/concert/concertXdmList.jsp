<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:include page="../include/header.jsp"></jsp:include>
<style>
	.seatR {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #dc354580;
		font-size:0;
	}
	
	.seatS {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #ffc10780;
		font-size:0;
	}
	
	.seatY {
		width: 20px;
		height: 20px;
		margin: 1px;
		padding: 0;
		background: #19875480;
		font-size:0;
	}
	
	.disable {
		background: rgba(0,0,0,.5);
	}

  </style>
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/concertList">Home</a></li>
          <li class="breadcrumb-item active">Data-CodeGroup</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form autocomplete="off" action="/codeGroupXdmList" method="post" name="formList">
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
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-control form-control-sm p-2" id="">
								<option value="1" selected></option>
								<option value="2"></option>
							</select>
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="" id="name" type="text" placeholder="name">
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
					<c:when test="${fn:length(concertList) eq 0}">
						<tr>
							<td class="text-center" colspan="9">There is no data!</td>
						</tr>	
					</c:when>
					
		                  	<c:otherwise>
		              <!-- Table with stripped rows -->
		              <div class="overflow-hidden overflow-x-auto">
		              
		              <table class="table table-striped text-nowrap">
		                <thead>
		                  <tr>
		                  	<th scope="col"><input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check"></th>
		                    <th>seq</th>
		                    <th>concertType</th>
		                    <th>concertTitle</th>
		                    <th>concertDetailText</th>
		                    <th>delNy</th>
		                    <th>defaultNy</th>
		                    <th>memberSeq</th>
		                    <th>concertZipCode</th>
		                    <th>concertAddress</th>
		                    <th>concertAddressDetail</th>
		                    <th>concertDate</th>
		                    <th>concertDateTime</th>
		                    <th>name</th>
		                    <th>seat</th>
		                  </tr>
		                </thead>
		                <tbody>
							<c:forEach items="${concertList}" var="list" varStatus="status">
		                  		<tr>
				                  	<th scope="col">
										<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
									</th>
									<td><c:out value="${list.seq }"></c:out></td>
				                    <td><c:out value="${list.concertType }"></c:out></td>
  				                    <td><a href="/concertXdmForm?seq=<c:out value="${list.seq }"></c:out>&concertDateSeq=<c:out value="${list.concertDateSeq}"></c:out>"><c:out value="${list.concertTitle }"></c:out></a></td>
				                    <td><c:out value="${list.concertDetailText }"></c:out></td>
				                   <td><c:out value="${list.defaultNy}"></c:out></td>
				                   <td><c:out value="${list.delNy}"></c:out></td>
				                   <td><c:out value="${list.memberSeq}"></c:out></td>
				                   <td><c:out value="${list.concertZipCode}"></c:out></td>
				                   <td><c:out value="${list.concertAddress}"></c:out></td>
				                   <td><c:out value="${list.concertAddressDetail}"></c:out></td>
				                   <td>
				                   		<input type="hidden" value="<c:out value="${list.concertDateSeq}"></c:out>">
				                   		<c:out value="${list.concertDate}"></c:out>
				                   </td>
				                   <td><c:out value="${list.concertDateTime}"></c:out></td>
				                   <td><c:out value="${list.name}"></c:out></td>
				                   	<td>
				                   		<a class="btn seatView">click</a>
				                   		<input type="hidden" value="<c:out value="${list.concertDateSeq}"></c:out>" name="concertDateSeq" id="concertDateSeq<c:out value="${list.concertDateSeq}"></c:out>">
				                   </td>
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
					<button type="button" class="btn btn-primary btn-sm" id="plus" onclick = "location.href = '/concertXdmForm'">+</button>
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
	<div class="modal fade" id="seatModal">
		<div class="modal-dialog modal-dialog-centered">
	    	<div class="modal-content">
	   			<div class="modal-header">
	      			<h1 class="modal-title fs-5">좌석</h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      		<div class="modal-body d-flex justify-content-center">
	      		</div>
	    	</div>
	 	</div>
	</div>

  </main><!-- End #main -->

  <jsp:include page="../include/footer.jsp"></jsp:include>
  <script>
//	paging
		goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "concertXdmList").submit();
		}
		
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

		
	 //modal
	 	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
	 		  keyboard: true,
	 		  backdrop: "static"
	 		})
	 
	 	var seatModal = new bootstrap.Modal(document.getElementById('seatModal'), {
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

		
	 $("#concert").addClass("active");
	 //seatView
	 $(document).on("click", ".seatView", function(){
		 	var objSeq = $(this).next();
		 	console.log(objSeq.val());
		 	jQuery.ajaxSettings.traditional = true;
	 		$.ajax({
	 			async: true 
	 			,cache: false
	 			,type: "post"
	 			/* ,dataType:"json" */
	 			,url: "/seatXdmView"
	 			/* ,data : $("#formLogin").serialize() */
	 			,data : { "concertDate_seq" : objSeq.val()}
	 			,success: function(response) {
	 				if(response.rt == "success") {
	 					$("#seatModal").find(".modal-body").empty();
	 					
		      			<jsp:useBean id="CodeServiceImpl" class="com.company.app.infra.code.CodeServiceImpl"/>
		      				
							<c:forEach items="${seatList }" var="seatList" varStatus="status">
								<c:set var="seatList" value="${seatList}"/>
								<c:forEach items="${listSeatRank }" var="listSeatRank" varStatus="status">
									<c:if test="${list.gender eq listGender.codeNum }"><c:out value="${listGender.name }"></c:out></c:if>
						       	</c:forEach>
								<c:out value="${listGender.name }"></c:out>
				      			<div class="seatR"></div>
							</c:forEach>
			      			
		      			</div>
	 					var divImage = "";
	 					divImage += '<div class="d-flex flex-wrap">';
	 					divImage += '<c:forEach items="${seatList }" var="seatList" varStatus="status">	';
	 					divImage += '<c:forEach items="${listSeatRank }" var="listSeatRank" varStatus="status">	';
	 					divImage += '<div class="seat<c:if test="${seatList.seatRank eq listSeatRank.codeNum }"><c:out value="${listSeatRank.name }"></c:out></c:if>" />"></div>';
	 					divImage += '</c:forEach>	';
	 					divImage += '</c:forEach>	';
	 					divImage += '</div> ';
	 					
	 					$("#seatModal").find(".modal-body").append(divImage);
	 				 	seatModal.show();
	 				} else {
	 					alert("좌석이 없습니다");
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