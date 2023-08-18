<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html lang="ko">
	<form name="form" method="post">
	<label for="id" class=" col-form-label" >id</label>
    <input type="text" class="form-control" name="id" id="id">
    
    <label for="password" class=" col-form-label" >password</label>
    <input type="text" class="form-control" name="password" id="password">
    
    <label for="passwordcheck" class=" col-form-label" >password check</label>
    <input type="text" class="form-control" name="passwordcheck" id="passwordcheck">
    
    <label for="email" class=" col-form-label" >email</label>
    <input type="text" class="form-control" name="emailFull" id="email">
    
    <label for="name" class=" col-form-label" >name</label>
    <input type="text" class="form-control" name="name" id="name">
    
    <button type="button" id="btn">회원가입</button>
	</form>
	
	<script>
	var reqId =  /^[a-zA-Z0-9]{2,20}$/;
	var reqKor = /^[ㄱ-ㅎ가-힣]{2,10}$/;
	var reqEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	var reqPw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/;
	
		var objName = $("#name");
		var objId = $("#id");
		var objPw = $("#password");
		var objPwCheck = $("#passwordcheck");
		var objEmail = $("#email");
		
		checkName = function(obj){
			if(reqName.test($.trim(obj.val())) == false) {
				alert("이름을 다시입력하세요")
				obj.focus();
				return false;
			} else {
			}
		}
		checkId = function(obj){
			if(reqId.test($.trim(obj.val())) == false) {
				alert("아이디을 다시입력하세요")
				obj.focus();
				return false;
			} else {
			}
		}
		checkPw = function(obj){
			if(reqPw.test($.trim(obj.val())) == false) {
				alert("비밀번호을 다시입력하세요")
				obj.focus();
				return false;
			} else {
			}
		}
		pwCheck = function(obj){
			if(!($.trim(obj.val()) == $.trim(objPw.val()))) == false) {
				alert("비밀번호를 다시입력하세요")
				obj.focus();
				return false;
			} else {
			}
		}
		checkEmail = function(obj){
			if(reqEmail.test($.trim(obj.val())) == false) {
				alert("이메일을 다시입력하세요")
				obj.focus();
				return false;
			} else {
			}
		}
	
		validationInst = function(){
			if(checkId(objId) == false) return false;
			if(checkPw(objPw) == false) return false;
			if(pwCheck(objPwCheck) == false) return false;
			if(checkName(objName) == false) return false;
			if(checkEmail(objEmail) == false) return false;
		}
		
		${"#btn"}.on("click", function(){
			if(validationInst() == false) return false;
			$("form[name=form]").attr("action", "/insertMember").submit();
		})
	</script>

</html>