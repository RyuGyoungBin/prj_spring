<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <body>
	<c:choose>
		<c:when test="${fn:length(listgroup) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>	
		</c:when>
		<c:otherwise><%-- ${listgroup} 자바에서 넘겨준 객체 이름 --%><!-- var="codegroup" jstl 블럭에서 사용할 변수 이름 -->
				<table>
				<thead>
					<tr>
						<th>seq</th>
						<th>name</th>
						<th>codeGroup_seq</th>
					</tr>
				</thead>
				<tbody>
			<c:forEach items="${listgroup}" var="codegroup" varStatus="status">
					<tr>
					<th><c:out value="${codegroup.seq }"></c:out></th>
					<td><c:out value="${codegroup.name }"></c:out></td>
					<td><c:out value="${codegroup.codeGroup_seq }"></c:out></td>
					</tr>
			</c:forEach>
				</tbody>
				</table>
		</c:otherwise>
	</c:choose>
  </body>
</html>



