<!-- Common scripts -->
    <script src="/resources/concert/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/concert/js/common_scripts_min.js"></script>
    <script src="/resources/concert/js/functions.js"></script>
	
	<!-- NOTIFY BUBBLES  -->
	<!-- <script src="/resources/concert/js/notify_func.js"></script> -->
	<script>
		$(function(){
			$(window).scroll(function(){

		        if ($(window).scrollTop() == 0) {
		        	$(".header_link").removeClass("link-dark").addClass("link-light");
		        } else {
					$(".header_link").removeClass("link-light").addClass("link-dark");
		        }
		    });
		});
	
	</script>