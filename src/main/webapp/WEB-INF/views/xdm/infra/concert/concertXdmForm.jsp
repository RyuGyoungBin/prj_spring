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
			  <form name="form" method="post" autocomplete="off" enctype="multipart/form-data">
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
	                	<div class="col-sm-12 text-center">
        				<label class="col-form-label">profile</label>
			      		<c:set var="type" value="1"/>		<!-- #-> -->
			        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
							<c:choose>
								<c:when test="${seq eq 0 }">
									<img id="<c:out value="${name }"/>Preview" src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="rounded-circle mx-auto d-block" width="100" height="100">
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${fn:length(listUploaded) eq 0 }">
											<img id="<c:out value="${name }"/>Preview" src="/resources/concert/img/2023 성시경의 축가 콘서트.jpg" class="rounded-circle mx-auto d-block" width="100" height="100">
										</c:when>
										<c:otherwise>
											<c:set var="GetNy" value="0"/>
											<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
												<c:if test="${listUploaded.type eq type }">
										        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" value="<c:out value="${listUploaded.seq }"/>"/>
										        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"/>  
													<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
													<c:set var="GetNy" value="1"/>		
												</c:if>
											</c:forEach>
											<c:if test="${GetNy eq 0 }">
												<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
											</c:if>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
				            
							<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
							<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
							<label for="<c:out value="${name }"/>" class="form-label input-file-button"><b>+</b></label>
				 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
				        </div>
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
                    	<input type="hidden" value="${param.concertDateSeq }" name="concertDateSeq">
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
	                <!--                     이미지첨부 -->
                    <div class="col-5 mb-3">
			        	<c:set var="type" value="2"/>		<!-- #-> -->
			        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
			        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
			        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
			            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
			 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
						<div id="<c:out value="${name }"/>Preview" class="addScroll bg-dark-subtle" style="min-height: 200px;">
							<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
								<c:if test="${listUploaded.type eq type }">
									<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
										<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
										<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
									</div>
								</c:if>
							</c:forEach>
						</div>
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
<script src="/resources/common/commonXdm.js"></script>
<script src="/resources/common/imgconstantsXdm.js"></script>
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
			$("form[name=form]").attr("action", "/deleteConcert").submit();
		});
	 	
	 	$("#btnUpdate").on("click", function(){
// 	 		if(validationUpdt() == false) return false;
			$("form[name=form]").attr("action", "/updateConcert").submit();
		});
	 	
	 	$("#btnInsert").on("click", function(){
// 	 		if(validationInst() == false) return false;
			$("form[name=form]").attr("action", "/concertXdmInsert").submit();
		});
	 	$("#btnDelNy").on("click", function(){
			$("form[name=form]").attr("action", "/ueleteConcert").submit();
		});
		 $("#concert").addClass("active");
//	 		파일첨부
			upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
				
//				objName 과 seq 는 jsp 내에서 유일 하여야 함.
//				memberProfileImage: 1
//				memberImage: 2
//				memberFile : 3

//				uiType: 1 => 이미지형
//				uiType: 2 => 파일형
//				uiType: 3 => 프로필형

				var files = $("#" + objName +"")[0].files;
				var filePreview = $("#" + objName +"Preview");
				var numbering = [];
				var maxNumber = 0;
				
				if(uiType == 1) {
					var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
					var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
					
					for(var i=0; i<tagIds.length; i++){
						var tagId = tagIds[i].getAttribute("id").split("_");
						numbering.push(tagId[2]);
					}
					
					if(uploadedFilesCount > 0){
						numbering.sort();
						maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
					}
				} else if(uiType == 2){
					var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
					var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

					for(var i=0; i<tagIds.length; i++){
						var tagId = tagIds[i].getAttribute("id").split("_");
						numbering.push(tagId[2]);
					}
					
					if(uploadedFilesCount > 0){
						numbering.sort();
						maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
					}
				} else {
					// by pass
				}
				
				$("#" + objName + "MaxNumber").val(maxNumber);

				var totalFileSize = 0;
				var filesCount = files.length;
				var filesArray = [];
				
				allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
				allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
				allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
				
				if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
				
				for (var i=0; i<filesCount; i++) {
					if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
					if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

					totalFileSize += files[i].size;
					
					filesArray.push(files[i]);
				}

				if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
				
				if (uiType == 1) {
					for (var i=0; i<filesArray.length; i++) {
						var file = filesArray[i];

						var picReader = new FileReader();
					    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
					    picReader.readAsDataURL(file);
					}			
				} else if(uiType == 2) {
					for (var i = 0 ; i < filesCount ; i++) {
						addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
					}
				} else if (uiType == 3) {
					var fileReader = new FileReader();
					 fileReader.onload = function () {
						 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
					 }	
					 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				} else {
					return false;
				}
				return false;
			}
			
			
			addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
				return function(event) {
					var imageFile = event.target;
					var sort = parseInt(maxNumber) + i;

					var divImage = "";
					divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
					divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
					divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
					divImage += '</div> ';
					
					filePreview.append(divImage);
			    };
			}
			
			
			delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
				
				$("#imgDiv_"+type+"_"+sort).remove();
				
				var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
				var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

				if(objDeleteSeq.val() == "") {
					objDeleteSeq.val(deleteSeq);
				} else {
					objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
				}
				
				if(objDeletePathFile.val() == "") {
					objDeletePathFile.val(pathFile);
				} else {
					objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
				}
			}
			
			
			addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

				var sort = parseInt(maxNumber) + i;
				
				var li ="";
				li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
				li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
				li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
				li += name;
				li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
				li +='</li>';
				
				filePreview.append(li);
			}
			
			
			delLi = function(objName, type, sort, deleteSeq, pathFile) {
				
				$("#li_"+type+"_"+sort).remove();

				var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
				var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

				if(objDeleteSeq.val() == "") {
					objDeleteSeq.val(deleteSeq);
				} else {
					objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
				}
				
				if(objDeletePathFile.val() == "") {
					objDeletePathFile.val(pathFile);
				} else {
					objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
				}
			}
			
			openViewer = function (type, sort) {
				var str = '<c:set var="tmp" value="'+ type +'"/>';
				$("#modalImgViewer").append(str);
				$("#modalImgViewer").modal("show");
			}
  	</script>

</body>

</html>