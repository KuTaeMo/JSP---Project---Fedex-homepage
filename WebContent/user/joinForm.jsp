<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<header class="masthead text-black text-center">
	<div class="d-flex"
		style="background-image: URL(assets/img/joinbg.jpg); background-size: 100%; background-repeat: no-repeat; height: 400px;">
		<div class="container d-flex"
			style="height: 10px; justify-content: flex-start;">
			<!-- Masthead Heading-->
			<div
				style="padding-top: 50px; font-size: 50px; color: white; float: left">FedEx
				회원가입</div>

			<div>
				<br /> <br />

				<!-- Icon Divider-->
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
			</div>
		</div>
</header>
<section class="portfolio" id="portfolio">
	<div class="container">
		<div
			style="border: solid 1px gray; background-color: #E6E6E6; padding: 10px;">
			<img style="margin-left: 120px;" src="assets/img/logo.png" />
			<!-- 큰박스 -->
			<div style="width: 100%">
				<div class="d-flex"
					style="justify-content:space-around; width: 100%">
					<!-- 왼쪽박스 -->
					<div class="d-flex">
						<div
							style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">이름(한글)</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">PW</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">E-mail</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">Phone</div>
						</div>
						<div>
							<div>
								<input type="id" name="username" class="maininput" id="username"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
							<div>
								<input type="password" name="password" class="maininput"
									id="password"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
							<div>
								<input type="email" name="email" class="maininput" id="email"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
							<div>
								<input type="text" name="phone" class="maininput" id="phone"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
						</div>
					</div>
					<!-- 오른쪽박스 -->
					<div class="d-flex">
						<div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">address</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">postcode</div>
						</div>
						<div>
							<div>
								<input type="text" name="address" class="maininput" id="address"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
							<div>
								<input type="text" name="postcode" class="maininput"
									id="postcode"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;">
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="d-flex" style="justify-content: flex-end;">
				<button type="button" class="searchbutton" style="height: 40px;">회원등록</button>
			</div>
		</div>
	</div>
</section>
<%@ include file="../layout/footer.jsp"%>
</body>
</html>