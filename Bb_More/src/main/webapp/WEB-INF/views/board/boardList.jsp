<%@page import="com.icia.bbmore.dto.Paging"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="com.icia.bbmore.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icia.bbmore.dto.User"%>
<%@ page import="org.springframework.web.context.request.SessionScope"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- alert 라이브러리 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
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
	
	<!-- 게시판 css -->
	<link rel="stylesheet" href="/resources/css/boardList.css">
	
	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
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
						<li class="active">Review</li>
					</ol>
				</div>
			</div>
		</div>
	</div> 
</section>
<!-- Anout Us 부분 끝 -->




<%
	if(u_id != null)
	{
%>
<!-- 게시판 시작 -->
<section class="user-dashboard page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="title1"><!-- 타이틀 시작 -->
                    <i class="fa-solid fa-bullhorn fa-3x"></i><h2 class="title1-text"><b>Review</b></h2>
                </div><!-- 타이틀 끝 -->
                <div class="dashboard-wrapper user-dashboard">
                    <div class="table-responsive">
                        <!-- 게시판 테이블 시작-->
                        <table class="table"> 
                            <thead> 
                                <tr>
                                    <th><b>No</b></th>
                                    <th><b>제목</b></th>
                                    <th><b>내용</b></th>
                                    <th><b>작성자</b></th>
                                    <th><b>조회수</b></th>
                                    <th><b>작성일</b></th>
                                </tr>
                            </thead>
                            <tbody>
<% 
	ArrayList<Board> listView = (ArrayList)request.getAttribute("listView");	
	
	if(listView != null)
	{
		for(int i=0; i<listView.size(); i++)
		{
%>
                                <tr>
                                    <td id="b_no"><%= listView.get(i).getB_no()%></td>


                                    <td id="b_title">
                                        <button class="btnboard"  value="<%= listView.get(i).getB_no()%>" onclick="clickPost(<%= listView.get(i).getB_no() %>)">
                                            <%= listView.get(i).getB_title()%>
                                        </button>
					                </td>


                                    <td id="b_content">
                                        <button class="btnboard" value="<%= listView.get(i).getB_no()%>" onclick="clickPost(<%= listView.get(i).getB_no() %>)" >
                                            <%= listView.get(i).getB_content() %>
                                        </button>
                                    </td>


                                    <td id="u_id"><%= listView.get(i).getU_id() %></td>
                                    <td id="b_hit"><%= listView.get(i).getB_hit() %></td>
                                    <td id="regDt"><%= listView.get(i).getRegDt()%></td>
                                </tr>
<%
		}
	}
%>
                            </tbody>
                        </table><!-- 게시판 테이블 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
<button class="button-80 btn-write" role="button" onclick="boardWrite()">글쓰기</button>
</section>
<!-- 게시판 끝 -->
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


<!-- 페이징 시작 -->
<section>
	<div id="paging"></div>
	<ul style="text-align: center;">			
		<%Paging paging = (Paging)request.getAttribute("pagination"); %>
		<%if(paging.getPage() > 1){ %> 
			<li>
				<a class="prev" href="./boardList?page=<%=paging.getPage() -1 %>">prev</a>
			</li>		
		<%} %>

		<%for(int i=paging.getStartPage(); i <= paging.getEndPage(); i++){ %>
		<li>
			<a <%if(paging.getPage() == i){ %> style="font-size:15px; font-weight: bold; color: blue" <%} %> href="./boardList?page=<%=i%>" ><%=i%></a>
		</li >
		<%} %>

		
		<%if(paging.getPage() < paging.getMaxPage()){ %> 
			<li>
				<a class="prev" href="./boardList?page=<%=paging.getPage() + 1 %>">next</a>
			</li>		
		<%} %>

	</ul>
</section>
<!-- 페이징 끝 -->
	
	
	
	


<!-- 하단 시작 -->
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
<!-- 하단 끝 -->




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
	// 글쓰기 버튼
	function boardWrite()
	{
<%
	String user = (String)session.getAttribute("u_id");
		if(user != null)
		{
%>
			location.href="/board/boardWrite";		
<%
		}
		else
		{
%>	
			swal("로그인 후 이용 가능합니다.")
			.then(() => { 
				location.href="/user/login";
			});		
<%
		}
%>			
	}////////////////// boardWrite()
	
	
	// 등록된 게시물 클릭시
	function clickPost(b_no)
	{
		$.ajax({
			type: "POST",
			url: "/board/clickPostProc",
			data: 
			{
				b_no: b_no
			},
			success: function(code)
			{
				if(code === 1)
				{
					location.href="/board/clickPost?b_no="+b_no;
				}	
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});	
	}///////////////////// clickPost()
	
	
	// 페이징 처리하기
	function paging()
	{
		
	}/////////////////////// paging()
</script>

<script type="text/javascript">
	//로그아웃 버튼을 클릭 했을 때 - 로그인 되어있을 때
	function logout()
	{
		location.href="/user/logoutProc";
	}//////////////////////// logout()
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

</body>
</html>