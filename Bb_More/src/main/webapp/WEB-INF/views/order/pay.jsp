<%@ page import="java.util.List"%>
<%@ page import="com.icia.bbmore.dto.Goods"%>
<%@ page import="com.icia.bbmore.dto.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- selecao 템플릿 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>  
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/carousel.rtl.css">    
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>   
    <script type="text/javascript" src="/resources/js/main.js"></script>
    
    <!-- aviato 템플릿 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Construction Html5 Template">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
	<meta name="author" content="Themefisher">
	<meta name="generator" content="Themefisher Constra HTML Template v1.0">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/aviato_images/favicon.png" />
	<link rel="stylesheet" href="/resources/plugins/themefisher-font/style.css">
	<link rel="stylesheet" href="/resources/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/plugins/animate/animate.css">
	<link rel="stylesheet" href="/resources/plugins/slick/slick.css">
	<link rel="stylesheet" href="/resources/plugins/slick/slick-theme.css">
	<link rel="stylesheet" href="/resources/aviato_css/style.css">
    
	<!-- BBmore css 파일 -->
	<link rel="stylesheet" href="/resources/css/index.css">

	<!-- 토스 연결 -->
	<script src="https://js.tosspayments.com/v1"></script>
	
	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
	<!-- pay css파일 -->
	<link rel="stylesheet" href="/resources/css/pay.css">
	
	<title>BBmore</title>
	
</head>
<body id="body"> 


<!-- header 시작 -->
<header id="header" class="fixed-top d-flex align-items-center  header-transparent ">
    <div class="container d-flex align-items-center justify-content-between">
    
	  <!-- 로고 -->
      <div class="logo"> 
        <h1><a href="/order/index"><span class="bb">BB</span><span class="more">more</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>
      
<% 
	String u_id = (String)session.getAttribute("u_id");
	
	if(u_id != null)
	{
%>
	<!-- 네비바 드롭다운 시작-->
	<nav id="navbar" class="navbar">
		<ul>
			<li><a class="nav-link scrollto active" href="/order/index">BBmore</a></li>
			<li><a class="nav-link scrollto" href="/order/about">About</a></li>
			<li class="dropdown"><a href="/order/freeService"><span>Service</span><i class="bi bi-chevron-down"></i></a>
				<ul>
					<li><a href="/order/freeService">무료견적</a></li>
					<li><a href="/order/howUsePrice">이용방법 및 요금</a></li>
				</ul>
			</li>
			<li><a class="nav-link scrollto" href="/contact/contactView">Contact</a></li>
			<li><a class="nav-link scrollto" href="/board/boardList">Review</a></li>
			<li><a class="nav-link scrollto" href="/myb/myPage">MyPage</a></li>
			<li><button type="button" class="btn btn-outline-secondary" onclick="logout()">Logout</button></li>
		</ul>
		
		<i class="bi bi-list mobile-nav-toggle"></i>
	</nav>
	<!-- 네비바 드롭다운 끝-->
<%
	}
	else
	{
%>	
	<!-- 로그인이 안되어있을 경우 네비바  시작 -->
	<nav id="navbar" class="navbar">
		<ul>
			<li><a class="nav-link scrollto active" href="/order/index">BBmore</a></li>
			<li><a class="nav-link scrollto" href="/order/about">About</a></li>
			<li class="dropdown"><a href="/order/freeService"><span>Service</span><i class="bi bi-chevron-down"></i></a>
				<ul>
					<li><a href="/order/freeService">무료견적</a></li>
					<li><a href="/order/howUsePrice">이용방법 및 요금</a></li>
				</ul>
			</li>
			<li><a class="nav-link scrollto" href="/contact/contactView">Contact</a></li>
			<li><a class="nav-link scrollto" href="/board/boardList">Review</a></li>
			<li><a class="nav-link scrollto" href="/user/login">Login</a></li>
			<li><a class="nav-link scrollto" href="/user/join">Join</a></li>
		</ul>
		
		<i class="bi bi-list mobile-nav-toggle"></i>
	</nav>
	<!-- 로그인이 안되어있을 경우 네비바  끝 -->
<%
	}
%>
    </div>
</header>
<!-- header 끝 -->


<!-- Anout Us 부분 시작 -->
<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">BBmore</h1>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">My Account</li>
					</ol>
				</div>
			</div>
		</div>
	</div> 
</section>
<!-- Anout Us 부분 끝 -->



<%
	ArrayList<Goods> list = (ArrayList<Goods>)session.getAttribute("goodsList");
	if(u_id != null)
	{
%>
<!-- 구매정보 -->
<section class="user-dashboard page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- userId 결제정보 시작 -->
				<div class="title1">
					<i class="fa-solid fa-credit-card fa-3x"></i></i><h2><b class="title1-text">${sessionScope.u_id}님 결제정보</b></h2>
				</div> 
				<!-- userId 결제정보 끝 -->
				
				
			<!-- 상품정보 ~ 배송까지 한 번 묶음 -->	
			<div class="info-inner">	
				<!-- 상품정보 박스 시작 -->
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<!-- 상품정보 테이블 시작 -->
						<table class="table">
							<thead>
								<h3><b>상품정보</b></h3>
								<tr>
									<td><b>상품</b></td>
									<td><b>가격</b></td>
								</tr>
							</thead>
							<tbody>
<%
	if(list != null)
	{
		for(int i=0; i<list.size(); i++)
		{
%>
								<tr>
									<td><%= list.get(i).getG_name() %></td>
									<td><%= list.get(i).getG_price() %></td>
								</tr>
<%
		}
	}
%>
							</tbody>
						</table>
						<!-- 상품정보 테이블 끝 -->
					</div>
				</div>
				<!-- 상품정보 박스 끝 -->
				
	
				<!-- 주소 박스 시작 -->
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<!-- 주소 테이블 시작 -->
						<table class="table">
							<thead>
								<h3><b>주소</b></h3>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${sessionScope.adress }</td>
									<td>${sessionScope.adressSub }</td>
								</tr>
							</tbody>
						</table>
						<!-- 주소 테이블 끝 -->
					</div>
				</div>
				<!-- 주소 박스 끝 -->
				

				<!-- 수거  박스 시작 -->
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<!-- 수거 테이블 시작 -->
						<table class="table">
							<thead>
								<h3><b>수거</b></h3>
								<tr>
									<td><b>수거 날짜</b></td>
									<td><b>수거 시간</b></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${sessionScope.u_pickupDate}</td>
									<td>${sessionScope.u_pickupTime}</td>
								</tr>
							</tbody>
						</table>
						<!-- 수거 테이블 끝 -->
					</div>
				</div>
				<!-- 수거 박스 끝 -->
				
		
				<!-- 배송  박스 시작 -->
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<!-- 배송 테이블 시작 -->
						<table class="table">
							<thead>
								<h3><b>배송</b></h3>
								<tr>
									<td><b>배송 날짜</b></td>
									<td><b>배송 시간</b></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${sessionScope.u_deliveryDate}</td>
									<td>${sessionScope.u_deliveryTime}</td>
								</tr>
							</tbody>
						</table>
						<!-- 배송 테이블 끝 -->
					</div>
				</div>
				<!-- 배송 박스 끝 -->
			</div>	
			</div>
		</div>
	</div>
</section>
<%
	}
	else
	{
%>
<section class="page-wrapper success-msg">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
        	<i class="tf-ion-android-checkmark-circle"></i>
          <h2 class="text-center">무료 견적 서비스는 로그인 후 이용 가능합니다.</h2>
          <a href="/user/login" class="btn btn-main mt-20">Go Login</a> 
        </div>
      </div>
    </div>
  </div>
</section>
<%
	}
%>



	
<!-- 토스페이 결제하기 시작  -->
<section class="section-pay">
	<div class="title2">
		<i class="fa-solid fa-coins fa-3x"></i><h1 class="title2-text">총 주문금액 ${sessionScope.total}원</h1> 
	</div>
	
	<div class="pay">
		<button class="button-48 btn btn-default" role="button" id="payment-button"><span class="text">결제</span></button>
	</div>
</section>
<!-- 토스페이 결제하기 끝  -->




<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="footer-menu text-uppercase">
					<li>
						<a href="/contact/contactView">CONTACT</a>
					</li>
					<li>
						<a href="/order/freeService">SERVICE</a>
					</li>
					<li>
						<a href="/board/boardList">REVIEW</a>
					</li>
					<li>
						<a href="/myb/myPage">MYPAGE</a>
					</li>
				</ul>
				<p class="copyright-text">Copyright &copy;2021, Designed &amp; Developed by <a href="http://localhost:8080/order/index">BBmore</a></p>
			</div>
		</div>
	</div>
</footer>

<!-- aviato템플릿 script -->
    <!-- Main jQuery -->
    <script src="/resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="/resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="/resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="/resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="/resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="/resources/plugins/slick/slick.min.js"></script>
    <script src="/resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="/resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="/resources/aviato_js/script.js"></script>
    
    
    
    
    
<script>
	// 토스페이 결제하기
	var clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
	var tossPayments = TossPayments(clientKey)

	var button = document.getElementById('payment-button') // 결제하기 버튼

	button.addEventListener('click', function () 
	{
		tossPayments.requestPayment('카드', 
		{
			amount: '${sessionScope.total}',
            orderId: '_UTGh_XtOTv0DPeECfOdu',
            orderName: 'BBmore 세탁상품',
            customerName: 'BBmore',
            successUrl: 'http://localhost:8080/order/success?paymentKey=test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq&orderId=_UTGh_XtOTv0DPeECfOdu&amount=${sessionScope.total}',
            failUrl: 'http://localhost:8080/fail',
        })
    })
</script>

<script>
	// 채널톡
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "00f2cc55-caab-4671-aa14-5aceda929f32"
  });

</script>


<script type="text/javascript">
	//로그아웃 버튼을 클릭 했을 때 - 로그인 되어있을 때
	function logout()
	{
		location.href="/user/logoutProc";
	}//////////////////////// logout()
</script>

</body>
</html>