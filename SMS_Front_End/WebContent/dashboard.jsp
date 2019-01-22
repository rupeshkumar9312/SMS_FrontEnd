<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
<link rel="stylesheet" href="assets/libs/css/style.css">
<link rel="stylesheet"
	href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link rel="stylesheet"
	href="assets/vendor/charts/chartist-bundle/chartist.css">
<link rel="stylesheet"
	href="assets/vendor/charts/morris-bundle/morris.css">
<link rel="stylesheet"
	href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
<link rel="stylesheet"
	href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
<title>Dashboard</title>
</head>

<body>

<%@taglib prefix="ctu" uri="WEB-INF/c.tld" %>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- navbar -->
		<!-- ============================================================== -->
		<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<a class="navbar-brand" href="index.html">Concept</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">
						<li class="nav-item">
							<div id="custom-search" class="top-search-bar">
								<input class="form-control" type="text" placeholder="Search..">
							</div>
						</li>
						<li class="nav-item dropdown notification"><a
							class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
							<ul
								class="dropdown-menu dropdown-menu-right notification-dropdown">
								<li>
									<div class="notification-title">Notification</div>
									<div class="notification-list">
										<div class="list-group">
											<a href="#"
												class="list-group-item list-group-item-action active">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-2.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jeremy
															Rakestraw</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-3.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">John
															Abraham </span>is now following you
														<div class="notification-date">2 days ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-4.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Monaan
															Pechi</span> is watching your main repository
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-5.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jessica
															Caruso</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div class="list-footer">
										<a href="#">View all notifications</a>
									</div>
								</li>
							</ul></li>

						<li class="nav-item dropdown nav-user"><a
							class="nav-link nav-user-img" href="#"
							id="navbarDropdownMenuLink2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><img
								src="assets/images/avatar-1.jpg" alt=""
								class="user-avatar-md rounded-circle"></a>
							<div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
								aria-labelledby="navbarDropdownMenuLink2">
								<div class="nav-user-info">
									<h5 class="mb-0 text-white nav-user-name">John Abraham</h5>
									<span class="status"></span><span class="ml-2">Available</span>
								</div>
								<a class="dropdown-item" href="#"><i
									class="fas fa-user mr-2"></i>Account</a> <a class="dropdown-item"
									href="#"><i class="fas fa-cog mr-2"></i>Setting</a> <a
									class="dropdown-item" href="#"><i
									class="fas fa-power-off mr-2"></i>Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- ============================================================== -->
		<!-- end navbar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- left sidebar -->
		<!-- ============================================================== -->
		<div class="nav-left-sidebar sidebar-dark">
			<div class="menu-list">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="d-xl-none d-lg-none" href="#">Dashboard</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav flex-column">
							<li class="nav-divider">Menu</li>
							<li class="nav-item "><a class="nav-link active" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fa fa-fw fa-user-circle"></i>Dashboard <span
									class="badge badge-success">6</span></a>
								<div id="submenu-1" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link" href="#"
											data-toggle="collapse" aria-expanded="false"
											data-target="#submenu-1-2" aria-controls="submenu-1-2">E-Commerce</a>
											<div id="submenu-1-2" class="collapse submenu" style="">
												<ul class="nav flex-column">
													<li class="nav-item"><a class="nav-link"
														href="index.html">E Commerce Dashboard</a></li>
													<li class="nav-item"><a class="nav-link"
														href="ecommerce-product.html">Product List</a></li>
													<li class="nav-item"><a class="nav-link"
														href="ecommerce-product-single.html">Product Single</a></li>
													<li class="nav-item"><a class="nav-link"
														href="ecommerce-product-checkout.html">Product
															Checkout</a></li>
												</ul>
											</div></li>
										<li class="nav-item"><a class="nav-link"
											href="dashboard-finance.html">Finance</a></li>
										<li class="nav-item"><a class="nav-link"
											href="dashboard-sales.html">Sales</a></li>
										<li class="nav-item"><a class="nav-link" href="#"
											data-toggle="collapse" aria-expanded="false"
											data-target="#submenu-1-1" aria-controls="submenu-1-1">Infulencer</a>
											<div id="submenu-1-1" class="collapse submenu" style="">
												<ul class="nav flex-column">
													<li class="nav-item"><a class="nav-link"
														href="dashboard-influencer.html">Influencer</a></li>
													<li class="nav-item"><a class="nav-link"
														href="influencer-finder.html">Influencer Finder</a></li>
													<li class="nav-item"><a class="nav-link"
														href="influencer-profile.html">Influencer Profile</a></li>
												</ul>
											</div></li>
									</ul>
								</div></li>



							<li class="nav-item"><a class="nav-link" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-6" aria-controls="submenu-6"><i
									class="fas fa-fw fa-file"></i> Pages </a>
								<div id="submenu-6" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link"
											href="pages/blank-page.html">Blank Page</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/blank-page-header.html">Blank Page Header</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/login.html">Login</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/404-page.html">404 page</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/sign-up.html">Sign up Page</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/forgot-password.html">Forgot Password</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/pricing.html">Pricing Tables</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/timeline.html">Timeline</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/calendar.html">Calendar</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/sortable-nestable-lists.html">Sortable/Nestable
												List</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/widgets.html">Widgets</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/media-object.html">Media Objects</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/cropper-image.html">Cropper</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/color-picker.html">Color Picker</a></li>
									</ul>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-7" aria-controls="submenu-7"><i
									class="fas fa-fw fa-inbox"></i>Apps <span
									class="badge badge-secondary">New</span></a>
								<div id="submenu-7" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link"
											href="pages/inbox.html">Inbox</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/email-details.html">Email Detail</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/email-compose.html">Email Compose</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/message-chat.html">Message Chat</a></li>
									</ul>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-8" aria-controls="submenu-8"><i
									class="fas fa-fw fa-columns"></i>Icons</a>
								<div id="submenu-8" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-fontawesome.html">FontAwesome Icons</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-material.html">Material Icons</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-simple-lineicon.html">Simpleline Icon</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-themify.html">Themify Icon</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-flag.html">Flag Icons</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/icon-weather.html">Weather Icon</a></li>
									</ul>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-9" aria-controls="submenu-9"><i
									class="fas fa-fw fa-map-marker-alt"></i>Maps</a>
								<div id="submenu-9" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link"
											href="pages/map-google.html">Google Maps</a></li>
										<li class="nav-item"><a class="nav-link"
											href="pages/map-vector.html">Vector Maps</a></li>
									</ul>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-10" aria-controls="submenu-10"><i
									class="fas fa-f fa-folder"></i>Menu Level</a>
								<div id="submenu-10" class="collapse submenu" style="">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link" href="#">Level
												1</a></li>
										<li class="nav-item"><a class="nav-link" href="#"
											data-toggle="collapse" aria-expanded="false"
											data-target="#submenu-11" aria-controls="submenu-11">Level
												2</a>
											<div id="submenu-11" class="collapse submenu" style="">
												<ul class="nav flex-column">
													<li class="nav-item"><a class="nav-link" href="#">Level
															1</a></li>
													<li class="nav-item"><a class="nav-link" href="#">Level
															2</a></li>
												</ul>
											</div></li>
										<li class="nav-item"><a class="nav-link" href="#">Level
												3</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- end left sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">Dashboard</h2>
								<p class="pageheader-text">Nulla euismod urna eros, sit amet
									scelerisque torton lectus vel mauris facilisis faucibus at enim
									quis massa lobortis rutrum.</p>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">Dashboard</a></li>
											<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader  -->
					<!-- ============================================================== -->

					

				

					<div class="row">
						<!-- ============================================================== -->

						<!-- ============================================================== -->

						<!-- recent orders  -->
						<!-- ============================================================== -->
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">

								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table">
											<thead class="bg-light">
												<tr class="border-0">
													<th class="border-0">#</th>
													<th class="border-0">Image</th>
													<th class="border-0">PRN</th>
													<th class="border-0">Student Name</th>
													<th class="border-0">Email</th>
													<th class="border-0">Course</th>
													<th class="border-0">Batch</th>
												</tr>
											</thead>
											<tbody>
											    <%-- <ctu:out value="${students}"/>  --%>
												<ctu:forEach var="e" items="${students}">
													
													<tr>
														<td><ctu:out value="${e.serialNo }" /></td>
														<td>
															<div class="m-r-10">
																<img src="assets/images/product-pic.jpg" alt="user"
																	class="rounded" width="45">
															</div>
														</td>
														<td><ctu:out value="${e.prn }" /></td>
														<td><ctu:out value="${e.name }" /></td>
														<td><ctu:out value="${e.email}" /></td>
														<td><ctu:out value="${e.course }" /></td>
														<td><ctu:out value="${e.batch }" /></td>
													
														<!-- <td><span class="badge-dot badge-brand mr-1"></span>InTransit
														</td> -->
													</tr>

												</ctu:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- footer -->
	<!-- ============================================================== -->
	<div class="footer">
		<div class="container-fluid">
			<div class="row">

				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
					<div class="text-md-right footer-links d-none d-sm-block">
						<a href="javascript: void(0);">About</a> <a
							href="javascript: void(0);">Support</a> <a
							href="javascript: void(0);">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end footer -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end wrapper  -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<!-- jquery 3.3.1 -->
	<script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
	<!-- bootstap bundle js -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
	<!-- slimscroll js -->
	<script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
	<!-- main js -->
	<script src="assets/libs/js/main-js.js"></script>
	<!-- chart chartist js -->
	<script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
	<!-- sparkline js -->
	<script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
	<!-- morris js -->
	<script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
	<script src="assets/vendor/charts/morris-bundle/morris.js"></script>
	<!-- chart c3 js -->
	<script src="assets/vendor/charts/c3charts/c3.min.js"></script>
	<script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
	<script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
	<script src="assets/libs/js/dashboard-ecommerce.js"></script>
</body>

</html>