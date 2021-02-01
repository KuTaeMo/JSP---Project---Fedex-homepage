<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<header class="masthead text-black text-center">
	<div class="d-flex" style="background-image: URL(assets/img/myformbg.jpg); background-size: 100%; background-repeat: no-repeat; height: 400px;">
		<div class="container d-flex"
			style="height: 10px; justify-content: flex-start;">
			<!-- Masthead Heading-->
			<div
				style="padding-top: 50px; font-size: 50px; color: white; float: left">내 정보</div>

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
	</div>
</header>
<section class="portfolio" id="portfolio">
	<div class="container">
	<form action="/fedexProject/user?cmd=updateUser" method="post">
		<div style="border: solid 1px gray; background-color: #E6E6E6; padding: 10px;">
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
								style="height: 40px; margin-bottom: 5px; align-items: center;">ID</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">PW</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">E-mail</div>
							<div class="d-flex"
								style="height: 40px; margin-bottom: 5px; align-items: center;">Phone</div>
						</div>
						<div>
							<div class="form-group" style="margin-bottom: 0 !important">
								<input type="id" name="username" class="maininput" id="username" required readonly
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.username}">
							</div>
							<div class="form-group" style="margin-bottom: 0 !important">
								<input type="password" name="password" class="maininput" required 
									id="password"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.password}">
							</div>
							<div class="form-group" style="margin-bottom: 0 !important">
								<input type="email" name="email" class="maininput" id="email" required
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.email}">
							</div>
							<div class="form-group" style="margin-bottom: 0 !important">
								<input type="text" name="phone" class="maininput" id="phone" required
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.phone}">
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
							<div class="form-group">
								<input type="text" name="address" class="maininput" id="address" required readonly
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.address}">
							<div class="form-group">
							<div>
								<input type="text" name="postcode" class="maininput" required readonly
									id="postcode"
									style="margin: 0 0 5px 15px; width: 200px; height: 40px;" value="${sessionScope.principal.postcode}">
							</div>
							<div align="right">
								<button type="button" class="searchbutton" onClick="goPopup();" style="font-size: 15px; height: 40px; width: 100px;">주소검색</button>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

			<div class="d-flex" style="justify-content: flex-end;">
				<button type="submit" class="searchbutton" style="height: 40px;">수 정</button>
			</div>
		</div>
	</form>
		
	</div>
</section>
<%@ include file="../layout/footer.jsp"%>
<script>
var isChecking = false; //중복체크 변수

function valid() {
	if (isChecking == false) {
		alert("아이디 중복체크를 해주세요");
	}
	return isChecking;
}
function usernameCheck() {
	// DB에서 확인해서 정상이면 isChecking = true
	var username = $("#username").val();
	$.ajax({
		type : "POST",
		url : "/fedexProject/user?cmd=usernameCheck",
		data : username,
		contentType : "text/plain; charset=utf-8",
		dataType : "text" // 응답 받을 데이터의 타입을 적으면 자바스크립트 오브젝트로 파싱해줌.
	}).done(function(data) {
		if (data === 'ok') { // 유저네임 있다는 것
			isChecking = false; //false로 바꿔줘야 중복아닌 것 체크하고 나서 다시 체크할 때
								//검사가능
			alert('유저네임이 중복되었습니다.')
		} else {
			isChecking = true;
			$("#username").attr("readonly", "readonly");
			alert("해당 유저네임을 사용할 수 있습니다.")
		}
	});
}
function goPopup() {
	var pop = window.open("/fedexProject/user/jusoPopup.jsp", "pop",
			"width=570,height=420, scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr,zipNo) {
	var addressEl = document.querySelector("#address");
	var postcode = document.querySelector("#postcode");
	addressEl.value = roadFullAddr;
	postcode.value=zipNo;
}
</script>
</body>
</html>