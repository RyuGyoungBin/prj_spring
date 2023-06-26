<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

codelist
<c:choose>
	<c:when test="${fn:length(codeList) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise><%-- ${listgroup} 자바에서 넘겨준 객체 이름 --%><!-- var="codegroup" jstl 블럭에서 사용할 변수 이름 -->
		<c:forEach items="${codeList}" var="code" varStatus="status">
			<c:out value="${code.seq }"></c:out>
			<c:out value="${code.name }"></c:out>
			<c:out value="${code.codeGroup_seq }"></c:out><br>
		</c:forEach>
	</c:otherwise>
</c:choose>