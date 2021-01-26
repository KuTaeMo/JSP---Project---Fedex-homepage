<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<header class="masthead text-black text-center">
		<div class="d-flex"
			style="background-image: URL(assets/img/mainbg.png); background-size: 100%; background-repeat: no-repeat;">
			<div class="container d-flex align-items-center flex-column"
				style="height: 600px">
				<!-- Masthead Heading-->
				<div style="padding-top: 100px; font-size: 50px; color: white;">Where now meets next</div>
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
				<!-- 메인버튼 3개 -->
				<ul>
					<li style="list-style-type: none; float: left;">
						<button class="mainbutton1" onclick="charge()">
						<div>
							<img src="assets/img/cash.png">
							<p>요금</p>
						</div>
						</button>
					</li>
					<li style="list-style-type: none; float: left;">
						<button class="mainbutton2" onclick="post()">
						<div>
							<img src="assets/img/search.png">
							<p>배송 조회</p>
						</div>
						</button>
					</li>
					<li style="list-style-type: none; float: left;">
						<button class="mainbutton3" onclick="send()">
						<div>
							<img src="assets/img/send.png">
							<p>발송</p>
						</div>
						</button>
					</li>
				</ul>

				<br />
				<!-- 요금조회 -->
				<div id="charge" style="margin-left: 50px;">
					<div class="d-flex">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="크기"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; width: 600px; background-color:#E6E6E6;">
					</div>
					<br/>
					<div>
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="종류"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; width: 600px; background-color:#E6E6E6">
					</div>
					<br/>
					<div style="float: right;">
						<button type="button" class="searchbutton">요금 조회</button>
					</div>
				</div>
				<!-- 배송조회 -->
				<div id="searchpost">
					<div class="d-flex">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="배송 조회 ID"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
						<button type="button" class="searchbutton">배송 조회</button>
					</div>
					<div class="d-flex" style="color: white; margin-top: 8px;">
						<a href="#" class="suba">다수의 배송조회 번호</a> | <a href="#"
							class="suba">도움이 필요하십니까?</a>
					</div>
				</div>


				<!-- 발송 -->
				<div id="send">
					<div style="margin-bottom: 5px;">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="수신자 이름"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
					</div>
					<div style="margin-bottom: 5px;">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="주소"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
					</div>
					<div style="margin-bottom: 5px;">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="우편번호"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
					</div>
					<div style="margin-bottom: 5px;">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="크기"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; background-color:#E6E6E6">
					</div>
					<div class="d-flex">
						<input type="text" name="trackingnumber" class="maininput"
							placeholder="종류"
							style="font-weight: bold; padding-left: 10px; font-size: 12px; height:60px; width: 200px; background-color:#E6E6E6">
						<button type="button" class="searchbutton">등록</button>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<div class="d-flex" style="justify-content: center;">
				<!-- text -->
				<div>
					<div style="font-size: 30px; font-weight: normal;">새로운 비즈니스 기회를 활짝 열어보세요</div>
					<br/>
					<div style="font-size: 20px; font-weight: lighter;;">달라지는 상거래 시장</div>
					<div style="font-size: 20px; font-weight: lighter;;">접근성 확보가 관건입니다</div>
					<div style="font-size: 20px; font-weight: lighter;;">전세계 구석구석에서 고객을 만나세요</div>
					<div style="font-size: 20px; font-weight: lighter;;">믿을 수 있는 글로벌 물류기업과 함께</div>
					<div style="font-size: 20px; font-weight: lighter;;">새로운 비즈니스 기회를 활짝 열어보세요</div>
					<div><a href="#">더 알아보기</a></div>
				</div>
				<!-- image -->
				<div>
					<img style="width:400px; margin-left: 10px; " src="assets/img/maintext1.jpg"/>
				</div>
			</div>
			
	</div>
	</section>
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<div class="text-center">
				<!-- text -->
				<div style="font-size: 35px; font-weight: normal;">비즈니스 리소스</div>
				<br/>
				<div style="font-size: 18px; font-weight: lighter;;">더욱 효율적인 방법을 탐색하고, 신규 고객 센터를 방문하고,</div>
				<div style="font-size: 18px; font-weight: lighter;;">eNews를 수신 등록하고, Business Insight Hub에서 더욱 심층적인 정보를 확인하십시오.</div>
			</div>
			<br/>
			<br/>
			<div class="d-flex" style="justify-content: center; ">
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card1.jpg"/></div>
					<br/>
					<br/>
					<div>FedEx가 처음이세요?</div>
					<br/>
					<br/>
					<div style="width: 270px;">FedEx에서 발송 작업을 하실 때 필요한 절차를 신규 고객 센터에서 안내해 드립니다.</div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">도와드리겠습니다</button></div>
				</div>
				
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card2.jpg"/></div>
					<br/>
					<br/>
					<div>소규모 기업을 위한 커다란 생각</div>
					<br/>
					<br/>
					<div style="width: 270px;">시작에서 글로벌 성장에 이르기까지, FedEx가 고객님의 비즈니스  성장을 도와드리겠습니다. 지금 Small Business Center에서 전문지식을 살펴보십시오. </div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">자세히 알아보기</button></div>
				</div>
				
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card3.jpg"/></div>
					<br/>
					<br/>
					<div>브렉시트에 대비하고 계신가요?</div>
					<br/>
					<br/>
					<div style="width: 270px;">브렉시트에 대비하기 위해 고객님의 비즈니스에 필요한 정보를 FAQ에서 확인하십시오.</div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">더 보기</button></div>
				</div>
			</div>
			<br/>
			<br/>
			<div class="d-flex" style="justify-content: center; ">
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card4.jpg"/></div>
					<br/>
					<br/>
					<div>발송하고 리워드 혜택도 받으세요!</div>
					<br/>
					<br/>
					<div style="width: 270px;">발송을 통해 포인트를 적립하고, 새로운 My Fedex Rewards에서 쉽고 간편하게 다양한 리워드 상품을 받아보십시오.</div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">더 알아보기</button></div>
				</div>
				
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card5.jpg"/></div>
					<br/>
					<br/>
					<div>FedEx 중량 화물 서비스</div>
					<br/>
					<br/>
					<div style="width: 270px;">FedEx의 신속하고 경제적인 중량 화물 운임 견적을 받아보세요.</div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">견적 요청하기</button></div>
				</div>
				
				<div align="center" style="margin: 5px 20px 5px 20px; width: 275px;">
					<div><img style="width: 270px;" src="assets/img/card6.png"/></div>
					<br/>
					<br/>
					<div>FedEx 카카오 상담톡</div>
					<br/>
					<br/>
					<div style="width: 270px;">지금 바로 상담원과 대화를 시작하세요. 배송 조회, 픽업 예약 및 요금 조회는 24시간 확인하실 수 있습니다.</div>
					<br/>
					<div><button class="btn btn-outline-primary" style="border-radius: 20px;">상담 시작하기</button></div>
				</div>
			</div>
	</div>
	<!-- Footer-->
<%@ include file="../layout/footer.jsp"%>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>
	
	<!-- Bootstrap core JS-->
	<script>
	window.onload=function(){
		$("#charge").hide();
		$("#searchpost").show();
		$("#send").hide();
		}
	function charge(){
		console.log("charge");
		$("#charge").show();
		$("#searchpost").hide();
		$("#send").hide();
	}
	function post(){
		console.log("post");
		$("#charge").hide();
		$("#searchpost").show();
		$("#send").hide();
	}
	function send(){
		console.log("send");
		$("#charge").hide();
		$("#searchpost").hide();
		$("#send").show();
	}
	</script>
</body>
</html>
