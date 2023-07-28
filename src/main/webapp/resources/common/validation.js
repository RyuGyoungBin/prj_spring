
	var reqId =  /^[a-zA-Z0-9]{2,20}$/;
	
	var reqKor = /^[ㄱ-ㅎ가-힣]{2,10}$/;
	
	var reqEng = /^[a-zA-Z]{2,20}$/;
	
	var reqEmailAccount = /^[\a-z\.-]+\.[a-z\.]{2,6}$/;
	
	var reqPw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/;
	
	var reqDob = /^[0-9]{6}$/;
	
	var reqPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	
	

	check = function(obj){
		if(reqEng.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>공백없는 대소문자(2,20)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkKor = function(obj){
		if(reqKor.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>공백없는 한글(2,20)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkId = function(obj){
		if(reqId.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>공백없는 대소문자 또는 숫자(2,20)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkEmailDomain = function(obj){
		if(reqId.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.parent().siblings(".validation").remove();
			obj.parent().parent().append("<div class='p-2 text-danger validation'>공백없는 대소문자(2,10)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkEmailAccount = function(obj){
		if(reqEmailAccount.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.parent().siblings(".validation").remove();
			obj.parent().parent().append("<div class='p-2 text-danger validation'>공백없는 소문자 + . + 공백없는 소문자(2,6)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.parent().siblings(".validation").remove();
		}
	}
	checkPw = function(obj){
		if(reqPw.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>최소 8자리 이상 영문 대소문자, 숫자, 특수문자가 각각 1개 이상 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	pwCheck = function(obj){
		if(!($.trim(obj.val()) == $.trim(objPw.val()))) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>비밀번호가 일치하지 않습니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkName = function(obj){
		if(reqKor.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>공백없는 한글(2,5)만 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkDob = function(obj){
		if(reqDob.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>공백없는 숫자(6, 000000) 입력 가능합니다.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkPhone = function(obj){
		if(reqPhone.test($.trim(obj.val())) == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>휴대폰 번호만 입력 가능합니다.<br>000-0000-0000</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkAddress = function(obj){
		if($.trim(obj.val()) == "" || $.trim(obj.val()) == null) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>우편번호찾기 버튼을 이용해주세요.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	
	checkAgree = function(obj){
		if(obj.is(":checked") == false) {
			obj.addClass("border-danger");
			obj.siblings(".validation").remove();
			obj.parent().append("<div class='p-2 text-danger validation'>약관에 동의해주세요.</div>");
			obj.focus();
			return false;
		} else {
			obj.removeClass("border-danger");
			obj.siblings(".validation").remove();
		}
	}
	