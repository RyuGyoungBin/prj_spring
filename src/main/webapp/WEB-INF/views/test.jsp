<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<form name="form"></form>
<input type="text" name="seatRow" placeholder="seatRow">
<input type="text" name="seatCol"placeholder="seatCol">
<input type="text" name="seatRank"placeholder="seatRank">
<input type="text" name="seatRankPrice"placeholder="seatRankPrice">
<input type="text" name="concertDate_seq"placeholder="concertDate_seq">
<button type="button" id="btn">btn</button>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	$("#btn").on("click",function(){
		$("form[name=form]").attr("action", "/insertSeat").submit();
	})
	
</script>

</html>