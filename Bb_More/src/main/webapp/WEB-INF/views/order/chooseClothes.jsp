<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- jQuery 라이브러리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<!-- css 파일 -->
	<link rel="stylesheet" href="/resources/css/chooseClothes.css">

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
							<li class="active">chooseClothes</li>
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
<section>
	<!-- 체크아이콘  + 세탁서비스 문구 -->
	<div class="check">
		<i class="fa-solid fa-check fa-3x date-icon"></i><h3 class="p-date h-text"><b>원하는 세탁 서비스를 선택해주세요</b></h3> 
	</div>
	
	<!-- 카테고리 + 클릭시 뿌려질 데이터 -->
	<div class="check1">
		<input type="hidden" id="goodsList">
		
		<!-- 카테고리 -->
		<label class="category button-79">
    		<input type="radio" name="clothes" value="1" onclick="categoryClick()" checked>
    		<span class="category-text">상의</span> 
		</label> 
 
		<label class="category button-79"> 
    		<input type="radio" name="clothes" value="2" onclick="categoryClick()">
    		<span class="category-text">하의</span>
		</label>
 
		<label class="category button-79">
    		<input type="radio" name="clothes" value="3" onclick="categoryClick()">
    		<span class="category-text">아우터</span>
		</label>
		
		<label class="category button-79">
    		<input type="radio" name="clothes" value="4" onclick="categoryClick()">
    		<span class="category-text">신발</span>
		</label>
		
		<label class="category button-79">
    		<input type="radio" name="clothes" value="5" onclick="categoryClick()">
    		<span class="category-text">침구류</span>
		</label> 
		 
		<!-- 카테고리 선택시 뿌려질 데이터 -->
		<div class="text-list" id="list"></div>
	</div>
	
	<!-- 체크아이콘  + 요청사항 문구 -->
	<div class="check check-request">
		<i class="fa-solid fa-check fa-3x date-icon"></i><h3 class="p-date h-text"><b>요청 사항</b></h3> 
	</div>
	
	<!-- textarea ~ 다음버튼 까지 묶음 -->
	<div class="check2"> 
		<!-- 요청사항 쓸 칸 -->	
			<textarea class="textarea-inner" rows="10" cols="10" id="otherThings"></textarea>
		
		<!-- 다음 버튼 -->
		<div class="btn-daum">
			<button type="button" class="button-34 btnServiceCloth" id="btnNext" role="button" onclick="clothesSelect()">다음</button>
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
	// 카테고리별 클릭시 값 넘기기
	function categoryClick()
	{
		let cno = $("input[name='clothes']:checked").val();

		$.ajax
		({
			type: "GET",
			url: "/order/chooseClothesProc",
			data: 
			{
				c_no: cno
			},
			dataType: "JSON",
			success: function(data)
			{
				item(data);	// 가져온 데이터: 상품이름, 상품가격, 상품번호, 카테고리번호
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	} /////////////////////// categoryClick() - 카테고리별 클릭시 값 넘기기


	let goodsList = [];

	// ajax성공시 item() 함수 호출
	function item(data) // 가져온 데이터: 상품이름, 상품가격, 상품번호, 카테고리번호
	{
		if(data != null)
		{
			let list = '';
			for(let i=0; i<data.length; i++)
			{
				list += "<ul>";
				
				list += "<li>";

				list += "<div id='gname' class='goods'><b>" + data[i].g_name + "</b></div>";

				list += "<div class='goods g_price'><b>" + data[i].g_price + "원</b></div>";

				
				if(goodsList.includes(data[i].g_no) === true) // goodsList에 data[i]번째 g_no가 포함되어있는게 맞아(true) 그러면 아래가 실행된다는 의미
				{						
					list += "<input type='checkbox' value='"+data[i].g_no+"' name='items' onclick='goodsChecked("+data[i].g_no+")' checked>";
				}
				else // 근데 goodsList에 data[i]번째 g_no가 포함안되어있어? 그럼 아래가 실행된다는 의미
				{
					list += "<input type='checkbox' value='"+data[i].g_no+"' name='items' onclick='goodsChecked("+data[i].g_no+")'>";
				}
				
				list += "</li>";
				
				list += "<ul>";
			}///////////////// for
			
			$("#list").html(list);	
		}//////////////////// if


		
		
	}///////////////////// item() - ajax성공시 item() 함수 호출
	
	
		// 체크 박스 선택할 때
		function goodsChecked(gno)	// gno : 사용자가 체크한 박스의 상품번호
		{
			let idx = goodsList.indexOf(gno);

			// indexOf의 반환 값이 -1 : goodsList 배열에 값이 없다는 의미 / indexOf의 반환값이 >= 0 해당숫자가 배열의 인덱스값임
			if(idx > -1) // 체크박스 선택했을 때 배열안에 이미 그 값이 있다라는 소리이다 그럼 중복이 발생되지 않도록 중복되는 값은 삭제해줘야한다.
			{
				goodsList.splice(idx, 1);
			}
			else // 체크박스를 선택했을 때 배열에 그 체크박스의 값이 안들어갔다는 소리이다. 그러므로 값을 넣어주면 된다.
			{
				goodsList.push(gno);
			}
			
			console.log(goodsList);
		}////////////////////// goodsChecked()
			
		
		// 의류 선택 후 다음버튼 클릭시 
	 	function clothesSelect()
		{
			$.ajax
			({
				
				type: "GET",  
				url: "/order/clothesSelectProc",
				traditional : true,	//ajax 배열보내는법
				data:
				{
					goodsList: goodsList,	// goodsList : 선택한 체크박스의 g_no값
				},
				dataType: "JSON",
				success: function(code)
				{
					if(code === 0)
					{
						alert("상품 선택 중 오류가 발생했습니다. - insert실패");
					}
					else if(code === 1)
					{
						location.href="/order/chooseDelivery";
					}
				},
				error:function(request, status, error)
				{
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
			
		}////////////////// clothesSelect() - 의류 선택 후 다음버튼 클릭시  함수 호출
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