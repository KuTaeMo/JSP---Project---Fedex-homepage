<!DOCTYPE html>

<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Fedex Korea</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="assets/mail/jqBootstrapValidation.js"></script>
<script src="assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- dropdown -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css?after" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<!-- fedex 로고  -->
			<a class="navbar-brand js-scroll-trigger" href="/fedexProject/index.jsp"><img
				src="assets/img/fdxlogo.png" /></a>
			
			<div class="collapse navbar-collapse headerdiv" id="navbarResponsive" style="float: left;">
				<ul class="navbar-nav">
					<li class="nav-item mx-0 mx-lg-1 dropdown">
						<a class="nav-link py-3 px-0 px-lg-3 rounded dropdown-toggle headera" data-toggle="dropdown">발송</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">지금 발송</a>
							<hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">발송 도구</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">요금</a>
					       	<hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">포장재 주문</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">화물 포장</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">중량 화물 견적</a>
							<hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">픽업 예약 및 관리</a>
      					</div>
					</li>
					<li class="nav-item mx-0 mx-lg-1 dropdown">
						<a class="nav-link py-3 px-0 px-lg-3 rounded dropdown-toggle headera" data-toggle="dropdown">배송 조회</a>
						<div class="dropdown-menu">
					        <a class="dropdown-item" href="#">배송조회 id번호 입력</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">배송조회 버튼</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">사용자 맞춤 FedEx 배송조회</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">내 배송 관리하기</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">모바일로 배송조회</a>
      					</div>
					</li>
					<li class="nav-item mx-0 mx-lg-1 dropdown">
						<a class="nav-link py-3 px-0 px-lg-3 rounded dropdown-toggle headera" data-toggle="dropdown">고객 지원</a>
						<div class="dropdown-menu">
					        <a class="dropdown-item" href="#" style="border: 1px">신규 고객 센터</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">청구 옵션</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">통관 툴</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">사무소 찾기</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">서비스 가이드</a>
      					</div>
					</li>
					<li class="nav-item mx-0 mx-lg-1 dropdown">
						<a class="nav-link py-3 px-0 px-lg-3 rounded dropdown-toggle headera" data-toggle="dropdown">고객번호</a>
						<div class="dropdown-menu">
					        <a class="dropdown-item" href="#">내 프로필</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">온라인 청구서 관리</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">Reporting Online 관리</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">이메일 설정 관리</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">My FedEx Rewards 관리</a>
					        <hr style="margin: 2px"/>
					        <a class="dropdown-item" href="#">주소록</a>
      					</div>
					</li>
				</ul>
			</div>
			<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger headera"
					href="<%=request.getContextPath()%>/user?cmd=loginForm">등록/로그인<img src="assets/img/bglogin.png" /></a>
				<a href="<%=request.getContextPath()%>/post?cmd=postSearch"><img src="assets/img/searchicon.png"></a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
		</div>			
	</nav>
	
	