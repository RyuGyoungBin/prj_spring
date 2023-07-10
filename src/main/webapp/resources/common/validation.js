
	var reqId =  /^[a-zA-Z0-9]{2,5}$/;
	
	var reqNameKor = /^[ㄱ-ㅎ가-힣]{2,5}$/;
	
	var reqNameEng = /^[a-zA-Z]{2,10}$/;
	
	

	check = function(param){
		if(reqNameEng.test($.trim(param)) == false) {
			alert("공백없는 대소문자(2,10)만 입력 가능합니다.");
			$("#name").focus();
			return false;
		}
	}