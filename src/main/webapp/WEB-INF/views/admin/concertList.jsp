<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / Data - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/admin/assets/img/favicon.png" rel="icon">
  <link href="/resources/admin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/simple-datatables/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/themes/smoothness/jquery-ui.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>

  <!-- Template Main CSS File -->
  <link href="/resources/admin/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="admin/index.html" class="logo d-flex align-items-center">
        <img src="/resources/admin/assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">NiceAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="admin/#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="admin/#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="admin/#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="admin/#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="admin/#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="admin/#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="admin/#">
                <img src="/resources/admin/assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="admin/#">
                <img src="/resources/admin/assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="admin/#">
                <img src="/resources/admin/assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="admin/#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="admin/#" data-bs-toggle="dropdown">
            <img src="/resources/admin/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Kevin Anderson</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="admin/users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="/adminLogin">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/index.html">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/users-profile.html">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-faq.html">
          <i class="bi bi-question-circle"></i>
          <span>F.A.Q</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-contact.html">
          <i class="bi bi-envelope"></i>
          <span>Contact</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-register.html">
          <i class="bi bi-card-list"></i>
          <span>Register</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-login.html">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Login</span>
        </a>
      </li><!-- End Login Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-error-404.html">
          <i class="bi bi-dash-circle"></i>
          <span>Error 404</span>
        </a>
      </li><!-- End Error 404 Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin/pages-blank.html">
          <i class="bi bi-file-earmark"></i>
          <span>Blank</span>
        </a>
      </li><!-- End Blank Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin/index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form autocomplete="off" action="/concertList">
					<div class="d-flex">
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-select form-select-sm d-flex p-2" id="use_YN">
								<option value="1" selected></option>
								<option value="2"></option>
							</select>
						</div>
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-select form-select-sm d-flex p-2" id="date_">
								<option value="1" selected></option>
								<option value="2"></option>
							</select>
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="start_date" type="text" placeholder="시작일">
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="end_date" type="text" placeholder="종료일" min="">
						</div>
					</div>
					<div class="d-flex mb-3 align-items-center">
						<div class="col-2 text-end ms-3 me-3">
							<select class="form-select form-select-sm d-flex p-2" id="">
								<option value="1" selected></option>
								<option value="2"></option>
							</select>
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" id="end_date" type="text" placeholder="검색어">
						</div>
						<div class="col-2 text-start ms-3 me-3">
							<button type="submit" class="btn btn-warning btn-sm me-2"><i class="bi bi-search"></i></button>
							<button type="reset" class="btn btn-danger btn-sm"><i class="bi bi-arrow-clockwise"></i></button>
						</div>
					</div>
				</form>
				<div class="d-flex mt-4 mb-2">
					<div class="col text-start">
						<div>total : 
							<span id="totalNum">0</span>
						</div>
					</div>
					<div class="col-1 text-end">
						<select class="form-select form-select-sm d-flex" id="viewNum">
							<option value="1" selected>10</option>
							<option value="2">30</option>
							<option value="3">50</option>
							<option value="4">100</option>
						</select>
					</div>
				</div>
              <!-- Table with stripped rows -->
              <table class="table table-striped">
                <thead>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Position</th>
                    <th scope="col">Age</th>
                    <th scope="col">Start Date</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="row">1</th>
                    <td>Brandon Jacob</td>
                    <td>Designer</td>
                    <td>28</td>
                    <td>2016-05-25</td>
                  </tr>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="row">2</th>
                    <td>Bridie Kessler</td>
                    <td>Developer</td>
                    <td>35</td>
                    <td>2014-12-05</td>
                  </tr>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="row">3</th>
                    <td>Ashleigh Langosh</td>
                    <td>Finance</td>
                    <td>45</td>
                    <td>2011-08-12</td>
                  </tr>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="row">4</th>
                    <td>Angus Grady</td>
                    <td>HR</td>
                    <td>34</td>
                    <td>2012-06-11</td>
                  </tr>
                  <tr>
                  	<th scope="col">
						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
					</th>
                    <th scope="row">5</th>
                    <td>Raheem Lehner</td>
                    <td>Dynamic Division Officer</td>
                    <td>47</td>
                    <td>2011-04-19</td>
                  </tr>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
            <div class="d-flex justify-content-center">
					<nav aria-label="...">
						<ul class="pagination">
					 		<li class="page-item disabled">
					 			<a class="page-link">Previous</a>
					    	</li>
					    	<li class="page-item active" aria-current="page">
					    		<a class="page-link" href="#">1</a>
				    		</li>
						    <li class="page-item disabled">
						    	<a class="page-link" href="#">Next</a>
					    	</li>
						</ul>
					</nav>
				</div>
				<div class="d-flex px-4 pb-5">
					<div class="col">
						<button type="button" class="btn btn-danger btn-sm" id="delNot">X</button>
						<button class="btn btn-danger btn-sm" type="button" id="del"><i class="bi bi-trash"></i></button>
					</div>
					<div class="col text-end">
						<button type="button" class="btn btn-success btn-sm" id="excel"><i class="bi bi-file-earmark-excel"></i></button>
						<button type="button" class="btn btn-primary btn-sm" id="plus" onclick = "location.href = 'sub_01.html'">+</button>
					</div>
				</div>
          </div>
		  
        </div>
      </div>
    </section>
    <div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">
	    	<div class="modal-content">
	   			<div class="modal-header">
	      			<h1 class="modal-title fs-5"></h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      		<div class="modal-body">
	      		</div>
	      		<div class="modal-footer">
		        	<button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
		        	<button type="button" class="btn btn-secondary" id="modalOk">Ok</button>
	      		</div>
	    	</div>
	 	</div>
	</div>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->
  
  <a href="admin/#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/admin/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/admin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/admin/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/admin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/admin/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/admin/assets/js/main.js"></script>
  	<script>
  	// search
  	 	$("#start_date").datepicker({
  	 	});
  	 	$("#end_date").datepicker({
  	 		maxDate : "+1m +1w",
  	 		minDate : "-1y"
  	 	});
  		$("#start_date").on("change", function(){
  			console.log($("#start_date").val())
  			$("#end_date").datepicker({
  				minDate: $("#start_date").val()
  			});
  		});

//	  	 	for(i = 0; i < $("input:checkbox[name=tabel_check]").length; i++) {
//			    console.log($("input:checkbox[name=tabel_check]").eq(i).is(":checked"));	
	//tabel
		$("input:checkbox[name=tabel_check]").eq(0).on("click", function(){
	  	 	if($("input:checkbox[name=tabel_check]").eq(0).is(":checked") == true) {
	  	 		$("input:checkbox[name=tabel_check]").prop("checked", true);
	  	 	}
		});
		
	 //modal
	 	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
	 		  keyboard: true,
	 		  backdrop: "static"
	 		})
	 	$("#del").on("click", function(){
	 		$("#myModal").find("h1").text("삭제");
	 		//$("#myModal").find(".modal-body").text("삭제하시겠습니까");
	 		$("#myModal").find(".modal-body").empty();
	 		$("#myModal").find(".modal-body").append("<p>정말 삭제하시겠습니까.</p>");
	 		$("#myModal").find(".modal-body").append("<p>정말로 삭제하시겠습니까.</p>");
	 		$("#modalOk").remove();
	 		$(".modal-footer").append('<button type="button" class="btn btn-danger" id="modalOk">Ok</button>');
		 	myModal.show();
	 		
	 	})
	 	$("#delNot").on("click", function(){
	 		$("#myModal").find("h1").text("제거");
	 		//$("#myModal").find(".modal-body").text("제거하시겠습니까");
	 		$("#myModal").find(".modal-body").empty();
	 		$("#myModal").find(".modal-body").append("<p>정말 제거하시겠습니까.</p>");
	 		$("#modalOk").remove();
	 		$(".modal-footer").append('<button type="button" class="btn btn-warning" id="modalOk">Ok</button>');
		 	myModal.show();
	 	})
	 	
	 	//tabel
  	 	$("input:checkbox[name=tabel_check]").eq(0).on("click", function(){
	  	 	if($("input:checkbox[name=tabel_check]").eq(0).is(":checked") == true) {
	  	 		$("input:checkbox[name=tabel_check]").prop("checked", true);
	  	 	}
		});


  	</script>

</body>

</html>