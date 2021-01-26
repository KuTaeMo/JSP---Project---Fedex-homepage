<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<header class="masthead text-black" style="height: 450px;">
		<div  class="d-flex"
			style="background-image: URL(assets/img/postsearchbg.jpg); background-size: 100%; background-repeat: no-repeat;">
			<div class="container d-flex flex-column"
				style="height: 600px; justify-content: flex-start;">
				<!-- Masthead Heading-->
				<div style="padding-top: 100px; font-size: 50px; color: white;">배송 조회</div>
				<div style="font-size: 15px; color:white; width: 330px;">
				FedEx 배송 조회 도구는 확신을 가지고 배송할 수 있도록 진행 상황을 알려주어 발송을 제어할 수 있게 합니다.
				</div>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
							href="#portfolio">발송</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
							href="#about">배송 조회</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
							href="#test">고객 지원</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
							href="#test">고객번호</a></li>
					</ul>
				</div>
				<br />
				<br />
				
			</div>
		</div>
	</header>
	<section class="page-section portfolio">
		<div class="container">
			<div>
				<!-- text -->
				<div align="center" class="text-center">
					<div style="font-size: 40px; font-weight: lighter;">원하는 방법으로 배송 조회</div>
					<br/>
					<br/>
					<div style="font-size: 18px; font-weight: lighter;">
					배송 상황을 알고 싶거나 배송 증명서를 확인하고 싶으신가요? 아래에 배송 조회 번호 또는 참조 번호를 입력하십시오.
					</div>
				</div>
				<br/>
				<div class="d-flex" style="justify-content: center;">
				<button class="searchbutton1" style="margin-right: 5px;">
				배송 조회 번호
				</button>
				<button class="searchbutton2">
				배송 증명 받기
				</button>

				</div>
				<br/>
				
				<div align="center" style="font-weight: lighter;">
				FedEx 배송 조회, Door Tag 또는 FedEx Office 주문 번호를 입력하십시오.
				</div>
				<br/>
				<div align="center" id="searchpost">
					<div class="d-flex" style="justify-content: center;">
						<input type="text" name="postid" class="maininput"
							placeholder="배송 조회 ID"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
						<button type="button" class="searchbutton">배송 조회</button>
					</div>
					<div class="d-flex" style="color: #0080FF; margin-top: 8px; justify-content: center;">
						<a href="#" style="color: #0080FF; margin-right: 5px;">다수의 배송조회 번호</a> | <a href="#"
							style="color: #0080FF; margin-left: 5px;">도움이 필요하십니까?</a>
					</div>
				</div>
			</div>
	</div>
	</section>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>