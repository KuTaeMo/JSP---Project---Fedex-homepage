<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<header class="masthead text-black" style="height: 450px;">
		<div  class="d-flex"
			style="background-image: URL(assets/img/postsearchbg.jpg); background-size: 100%; background-repeat: no-repeat;">
			<div class="container d-flex flex-column"
				style="height: 600px; justify-content: flex-start;">
				<!-- Masthead Heading-->
				<div style="padding-top: 100px; font-size: 50px; color: white;">요금 조회</div>
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
			<div align="center">
				<!-- text -->
				<div align="center" class="text-center">
					<div style="font-size: 40px; font-weight: lighter;">FedEx 요금 조회</div>
					<br/>
					<br/>
					<div style="font-size: 18px; font-weight: lighter;">
					보내실 택배의 요금을 확인하세요.
					</div>
				</div>
				<br/>

				<div class="d-flex" style="width: 600px; font-weight: lighter; justify-content: center;border: solid 1px gray; background-color: #E6E6E6; padding: 10px; ">
					<div style="margin-right: 10px;">
						<div style="margin-top: 5px;"> Size : </div>
						<div style="margin-top: 5px;"> Sort : </div>
						<div style="margin-top: 5px;"> PostCharge :</div>
					</div>
					<div style="margin-left: 10px;">
						<div><input type="text" value="${charge.size}호" readonly></div>
						<div><input type="text" value="${charge.sort}" readonly></div>
						<div><input type="text" value="${charge.postcharge}원" readonly></div>
					</div>
				</div>
			</div>
	</div>
	</section>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>