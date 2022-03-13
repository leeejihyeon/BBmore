<%@page import="com.icia.bbmore.dto.OrderList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBmore</title>

	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	      
    <!-- selecao 템플릿 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>  
    <link rel="stylesheet" href="/resources/css/style.css">    
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>   
    
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
	
	<!-- css파일 첨부 -->
	<link rel="stylesheet" href="/resources/css/modifyMemberInfo.css">
	<link rel="stylesheet" href="/resources/css/reservationOrder.css">
	
	<!-- alert창 라이브러리 사용 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
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
			<li class="dropdown"><a href="#"><span>Service</span><i class="bi bi-chevron-down"></i></a>
				<ul>
					<li><a href="/order/freeService">무료견적</a></li>
					<li><a href="#">이용방법 및 요금</a></li>
				</ul>
			</li>
			<li><a class="nav-link scrollto" href="#">Contact</a></li>
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
			<li class="dropdown"><a href="#"><span>Service</span><i class="bi bi-chevron-down"></i></a>
				<ul>
					<li><a href="/order/freeService">무료견적</a></li>
					<li><a href="#">이용방법 및 요금</a></li>
				</ul>
			</li>
			<li><a class="nav-link scrollto" href="#">Contact</a></li>
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
						<li><a href="/order/index">Home</a></li>
						<li class="active">reservation</li>
					</ol>
				</div>
			</div>
		</div>
	</div> 
</section>
<!-- Anout Us 부분 끝 -->




<%
	String myPage_id = (String)session.getAttribute("u_id");
	
	if(myPage_id != null)
	{
%>
<section class="midle2">
<!-- 왼쪽MyPage네비바 시작 -->
<div class="products section midle1">
	<div class="container">
		<div class="row row1">
			<div class="col-md-3">
				<div class="widget product-category">
					<h4 class="widget-title">MyPage</h4>
					<div class="panel-group commonAccordion" id="accordion" role="tablist" aria-multiselectable="true">
					  	<div class="panel panel-default">
						    <div class="panel-heading" role="tab" id="headingOne">
						      	<h4 class="panel-title">
						        	<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						          	회원정보
						        	</a>
						      	</h4>
						    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<ul>
									<li><a href="/myb/modifyMemberInfo">회원정보 수정</a></li>
									<li><button type="button" class="deleteMember" onclick="deleteUser()">탈퇴하기</button>></li>
								</ul>
							</div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingTwo">
					      <h4 class="panel-title">
					        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					         	예약 현황
					        </a>
					      </h4>
					    </div>
					    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					    	<div class="panel-body">
					     		<ul>
									<li><a href="/myb/reservationOrder">주문 확인</a></li>
								</ul>
					    	</div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          	BBmore 정보
					        </a>
					      </h4>
					    </div>
					    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					    	<div class="panel-body">
					      		<ul>
									<li><a href="#!">이용약관</a></li>
									<li><a href="#!">개인정보처리방침</a></li>
									<li><a href="#!">위치 정보 이용 약관</a></li>
								</ul>
					    	</div>
					    </div>
					  	</div>
					</div>	
				</div>
			</div>	
		</div>
	</div>
</div>
<!-- 왼쪽MyPage네비바 끝 -->





<!-- 가운데 item 시작 -->
<div id="orderListView">
	<div id="orderListView-inner"></div>
</div>
<!-- 가운데 item 끝 -->




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
          <h2 class="text-center">MyPage는 로그인 후 이용 가능합니다.</h2>
          <a href="/user/login" class="btn btn-main mt-20">Go Login</a> 
        </div>
      </div>
    </div>
  </div>
</section><!-- /.page-warpper -->
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


<script type="text/javascript">

	// 1.주문확인 페이지 로드시 - 사용자가 주문한 상품 list 가져오기
	function getOrderList()
	{
<%
		long orderList_uno = (long)session.getAttribute("u_no");
%>	
		$.ajax
		({
			type: "POST",
			url: "/myb/getOrderList",
			data:
			{
				u_no: <%= orderList_uno%>
			},
			dataType: "JSON",
			success: function(data)
			{
				if(data != null)
				{
					loadOrderList(data);
				}
				else if(data == null)
				{
					alert("주문상품 없음");
				}
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}//////////////////////// getOrderList()
	
	
	// 2.OrderList select 성공시 view에 뿌리기
	function loadOrderList(data)
	{
		const template =  `
			<div class="orderlist-inner">
				{{__dd__}}
				
				<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h3 class="modal-title" id="exampleModalLongTitle"><b>상세 주문 내역</b></h3>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <div id="item-details">
				        	
				        </div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
				      </div>
				    </div>
				  </div>
				</div>

		`;
		
		let orderList = '';
		for(let i=0; i<data.length; i++)
		{
			orderList += '<div class="list-inner">';
			orderList += '<div class="dateTitle"><b>' + data[i].order_regDt + '</b></div>';
			orderList += '<div><span class="font">총 주문 수량</span>' + data[i].ordergoods_totCount + '개</div>'; 
			orderList += '<div><span class="font">총 주문 가격</span>' + data[i].ordergoods_totPrice + '원</div>';
			orderList += '<button type="button" onclick="getOrderGoods('+data[i].orderList_no+')" class="btn btn-primary btn-details" data-toggle="modal" data-target="#exampleModalCenter">상세내역</button>';
			orderList += '</div>';
		}
		
		const view = template.replace('{{__dd__}}', orderList);
		document.getElementById('orderListView-inner').innerHTML = view; 

	
	}/////////////////// loadOrderList()
	
		// 5. 페이지 로딩되면 getOrderList 실행하기
		window.addEventListener("load", function(event)
		{
			getOrderList();
		});

	
</script>
	

<script type="text/javascript">

	//3.상세내역 버튼 클릭시 주문 상새내역 select해오기
	function getOrderGoods(orderList_no)
	{
		
		$.ajax
		({
			type: "POST",
			url: "/myb/getOrderGoods",
			data:
			{
				orderList_no: orderList_no
			},
			dataType: "JSON",
			success: function(data)
			{
				getOrderGoodsView(data);
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}////////////// getOrderGoods()
	
	
	
	
	//4.getOrderGoods select 성공시 - select 해온 orderGoods들 View로 뿌리기
	function getOrderGoodsView(data)
	{
		const template = `
			{{__aa__}}
		`;
	
	
		let ordergoods = '';
		for(let i=0; i<data.length; i++)
		{	
			ordergoods += '<table>';
			
			ordergoods += '<thead>';
			ordergoods += '<tr>';
			ordergoods += '<td><b class="fontstyle">상품이름</b></td><td><b class="fontstyle">가격</b></td>';
			ordergoods += '</tr>';
			ordergoods += '</thead>';
			
			ordergoods += '<tbody>';
			ordergoods += '<tr>';
			ordergoods += '<td>' + data[i].g_name + '</td><td>' + data[i].g_price + '</td>';
			ordergoods += '</tr>';
			ordergoods += '</tbody>';
			
			ordergoods += '</table>';
		}
		
		const view2 = template.replace('{{__aa__}}', ordergoods);
		document.getElementById('item-details').innerHTML = view2; 
	
	}/////////////////// getOrderGoodsView()

</script>



<script type="text/javascript">
	
	// 탈퇴하기 버튼 클릭식
	function deleteUser()
	{
<%
	long u_no = (long)session.getAttribute("u_no");
%>		
		$.ajax
		({
			type: "POST",
			url: "/myb/deleteUserProc",
			data:
			{
				u_no: <%= u_no%>
			},
			success: function(code)
			{
				if(code === 0)
				{
					swal("회원탈퇴 중 오류가 발생했습니다.");				
				}
				else if(code === 1)
				{
					swal("회원 탈퇴가 정상적으로 완료되었습니다.")
					.then(() => {
						location.href = "/user/login";
					});
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})
	}/////////////////// deleteMember()
	
	// 로그아웃 버튼을 클릭 했을 때 - 로그인 되어있을 때
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