<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">

<form>
	<input type="text" name="seq" id="seq" readonly value="<c:out value="${codeOne.seq }"></c:out>">
	<input type="text" name="name" id="name" value="<c:out value="${codeOne.name }"></c:out>">
	<button type="button" class="btn btn-info" id="btn">btn</button>
</form>

<script src="/resources/concert/js/jquery-3.6.4.min.js"></script>
<script src="/resources/concert/js/common_scripts_min.js"></script>
<script src="/resources/concert/js/functions.js"></script>