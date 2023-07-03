<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">

<form name="formList" method="post">
	<div class="form-group my-5 p-2 border d-flex align-content-center">
		<select name="shOption">
			<option value="0">Y</option>
			<option value="1">N</option>
		</select>
		<input type="text" placeholder="shkey" value="" name="shkey" class="mx-3" >
		<button type="button" class="btn btn-secondary me-3" id="btn">검색</button>
		<button type="button" class="btn btn-secondary" id="addBtn" onclick="location.href='/codeGroupForm'">추가</button>
	</div>
</form>
<c:choose>
	<c:when test="${fn:length(listgroup) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise><%-- ${listgroup} 자바에서 넘겨준 객체 이름 --%><!-- var="codegroup" jstl 블럭에서 사용할 변수 이름 -->
		<c:forEach items="${listgroup}" var="codegroup" varStatus="status">
			<a href="/codeGroupForm?seq=<c:out value="${codegroup.seq }"></c:out>"><c:out value="${codegroup.seq }"></c:out><c:out value="${codegroup.name }"></c:out></a><br>
		</c:forEach>
	</c:otherwise>
</c:choose>



<script src="/resources/concert/js/jquery-3.6.4.min.js"></script>
<script src="/resources/concert/js/common_scripts_min.js"></script>
<script src="/resources/concert/js/functions.js"></script>
<script>
	$("#btn").on("click", function(){
		// 자기 자신을 다시 호출해 준다
//	$("form[name=formList]").attr("method","post");
		$("form[name=formList]").attr("action", "/codeGroupList").submit();
		
		
		//alert("123");
	});
</script>