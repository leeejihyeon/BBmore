<%@page import="com.icia.bbmore.dto.Board"%>
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
	
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="/resources/css/boardUpdate.css">
	
	<!-- alert 라이브러리 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
	<title>BBmore</title>
	
</head>


<body>
<%
	Board board = (Board)request.getAttribute("boardUpdate");
	
	long b_no = board.getB_no();
	String u_id = board.getU_id();
	String b_content = board.getB_content();
	String b_title = board.getB_title();
	String fileName = board.getFileName();
%>


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
	String u_id2 = (String)session.getAttribute("u_id");
	
	if(u_id2 != null)
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
</header><!-- header 끝 --> 


<!-- Anout Us 부분 시작 -->
	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">BBmore</h1>
						<ol class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li class="active">about us</li>
						</ol>
					</div>
				</div>
			</div>
		</div> 
	</section>
<!-- Anout Us 부분 끝 -->


<!-- 게시글 수정하기 -->
<section class="page-wrapper">
	<div class="title1">
		<i class="fa-solid fa-pen fa-2x i-write"></i><h3 class="title1-text"><b>게시물 수정</b></h3>
	</div>
	<div class="contact-section"> 
		<div class="container">
			<div class="row container-inner">
				<!-- Contact Form -->
				<div class="contact-form col-md-6 form-style">
					<form id="contact-form" method="post" action="" role="form">
					
						<div class="form-group">
							<input type="text" class="form-control" value="<%= u_id %>" id="u_id" name="name" disabled>
						</div>
						
						<div class="form-group">
							<input type="text" placeholder="Title" class="form-control" id="b_title" value="<%= b_title %>">
						</div>
						
						<div class="form-group">
							<textarea rows="6" placeholder="Content" class="form-control" id="b_content"><%= b_content %></textarea> 
						</div>
					</form>
				</div>
				<!-- ./End Contact Form -->
			</div> <!-- end row -->
		</div> <!-- end container -->
	</div>
<div class="btn">
	<button type="button" class="button-28 btn-update" role="button" onclick="update()">등록하기</button>
	<button type="button" class="button-28 btn-boardList" role="button" onclick="boardList()">목록</button>
</div>

</section>	


	 



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


<script>
	function update()
	{
		$.ajax
		({
			type: "POST",
			url: "/board/updateProc",
			data: 
			{
				b_no: <%= b_no%>,
				b_title: $('#b_title').val(),
				b_content: $('#b_content').val(),
			},
			success: function(code)
			{
				if(code === 0)
				{
					alert("게시물 수정 중 오류가 발생했습니다.");
				}
				else if(code === 1)
				{
					alert("게시물 수정이 완료되었습니다.");
					location.href = "/board/boardList";
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});///////////////////////// ajax
	}////////////////////////// update()
	
	
	// 리스트버튼 클릭시
	function boardList()
	{
		location.href="/board/boardList";
	}////////////////////////// boardList()
</script>
</body>
</html>