<!-- Common scripts -->
    <script src="/resources/concert/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/concert/js/common_scripts_min.js"></script>
    <script src="/resources/concert/js/functions.js"></script>
	
	<!-- NOTIFY BUBBLES  -->
	<!-- <script src="/resources/concert/js/notify_func.js"></script> -->
	<script>
		$("#logoutBtn").on("click", function(){
	 		$.ajax({
	 			async: true 
	 			,cache: false
	 			,type: "post"
	 			/* ,dataType:"json" */
	 			,url: "/logoutProc"
	 			/* ,data : $("#formLogin").serialize() */
	 			,data : { }
	 			,success: function(response) {
	 					location.href = "/indexUsrView";
	 			}
	 			,error : function(jqXHR, textStatus, errorThrown){
	 				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	 			}
	 		});
	 	})
	</script>