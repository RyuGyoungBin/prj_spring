<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>login</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="/resources/concert/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/concert/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/concert/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/concert/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/concert/img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="/resources/concert/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/concert/css/style.css" rel="stylesheet">
	<link href="/resources/concert/css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="/resources/concert/css/custom.css" rel="stylesheet">
        
</head>
<body>

    <!-- Header================================================== -->
    <header>
        
    </header><!-- End Header -->
    
	<main>
    <section>
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                    		<div class="text-center"></div>
                            <hr>
                            <form name="formList" method="post">
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" class=" form-control " placeholder="Id" value="abcde" id="id" name="id">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class=" form-control" placeholder="Password" value="Qwer123!" id="password" name="password">
                                </div>
                                <button type="button" class="btn_full" id="loginBtn">Sign in</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->
	
	

	<!-- Common scripts -->
	<script src="/resources/concert/js/jquery-3.6.4.min.js"></script>
	<script src="/resources/concert/js/common_scripts_min.js"></script>
	<script src="/resources/concert/js/functions.js"></script>
	<jsp:include page="../include/validation.jsp"></jsp:include>
	<script>
		
		var objId = $("#id");
		var objPw = $("#password");
		
		validationUpdt = function(){
	 		if(checkId(objId) == false) return false;
	 		if(checkPw(objPw) == false) return false;
	 		
	 	}
	 	
	 	$("#loginBtn").on("click", function(){
	 		if(validationUpdt() == false) return false;
// 	 		$("form[name=formList]").attr("action", "/indexXdmView").submit();
	 		$.ajax({
	 			async: true 
	 			,cache: false
	 			,type: "post"
	 			/* ,dataType:"json" */
	 			,url: "/loginProc"
	 			/* ,data : $("#formLogin").serialize() */
	 			,data : { "id" : $("#id").val(),
	 				"password" : $("#password").val()}
	 			,success: function(response) {
	 				if(response.rt == "success") {
	 					alert(response.rtMember.name);
	 					location.href = "/indexXdmView";
	 				} else {
	 					alert("그런 회원 없습니다.");
	 				}
	 			}
	 			,error : function(jqXHR, textStatus, errorThrown){
	 				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	 			}
	 		});
	 	});
	</script>
	


  </body>
</html>