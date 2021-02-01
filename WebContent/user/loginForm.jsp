<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
	<header class="masthead text-black text-center">
		<div class="d-flex"
			style="background-image: URL(assets/img/loginbg.jpg); background-size: 100%; background-repeat: no-repeat;">
			<div class="container d-flex align-items-center flex-column"
				style="height: 600px">
				<!-- Masthead Heading-->
				<div style="padding-top: 100px; font-size: 50px; color: white; float: left">FedEx 로그인</div>
				
				<div>
				<br/>
				<br/>
				<form action="/fedexProject/user?cmd=login" method="post">
					<div class="d-flex form-group">
						<div>
							<div class="form-group">
								<input type="id" name="username" class="maininput-i form-control"
								placeholder="ID를 입력해주세요"
								style="font-weight: bold !important; padding-left: 10px !important; font-size: 12px !important; height:60px !important; background-color:#E6E6E6 !important;">
							</div>
							<div class="form-group">
								<input type="password" name="password" class="maininput-i form-control"
								placeholder="PW를 입력해주세요"
								style="font-weight: bold !important; padding-left: 10px !important; font-size: 12px !important; height:60px !important; background-color:#E6E6E6 !important;">
							</div>
						</div>
						<div>
							<button type="submit" class="searchbutton" style="height: 135px;">로그인</button>
						</div>
					</div>
				</form>
				
				<div class="d-flex" style="color: white; margin-top: 8px">
						<a href="#" class="suba">ID, PW 찾기</a> | <a href="<%=request.getContextPath()%>/user?cmd=joinForm"
							class="suba">회원가입</a>
					</div>
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
				<br />
				<br />
				
			</div>
		</div>
	</header>
	
<%@ include file="../layout/footer.jsp"%>
</body>
</html>