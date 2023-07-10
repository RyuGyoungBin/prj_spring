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
	                  	<label for="codeGroup_seq" class=" col-form-label">codeGroup_seq</label>
                    	<%-- <input type="text" class="form-control" name="codeGroup_seq" id="codeGroup_seq" value="<c:out value="${list.codeGroup_seq }"></c:out>"> --%>
                    	<select class="form-control form-control-sm p-2" name="codeGroup_seq" id="codeGroup_seq">
                    		<c:forEach items="${group}" var="group" varStatus="status">
                    			<option value="<c:out value='${group.seq }'></c:out>"><c:out value="${group.name}"></c:out></option>
                    		</c:forEach>
						</select>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="delNy" class=" col-form-label">delNy</label>
                    	<input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${list.delNy }"></c:out>">
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
		if(check($.trim($("#name").val())) == false){
			return false;
		}
		
	}
	
	validationInst = function(){
		if(validationUpdt() == false) return false;
	}
  	
  	
	  	$("#btnDelete").on("click", function(){
			$("form[name=form]").attr("action", "/codeXdmDelete").submit();
		});
	 	
	 	$("#btnUpdate").on("click", function(){
	 		if(validationUpdt() == false) return false;
			$("form[name=form]").attr("action", "/codeXdmUpdate").submit();
		});
	 	
	 	$("#btnInsert").on("click", function(){
	 		if(validationInst() == false) return false;
			$("form[name=form]").attr("action", "/codeXdmInsert").submit();
		});
	 	$("#btnDelNy").on("click", function(){
			$("form[name=form]").attr("action", "/codeXdmDelNy").submit();
		});
	 	$("#codeGroup_seq").val("<c:out value='${list.codeGroup_seq}'></c:out>").prop("selected", true);
  	</script>

</body>

</html>