<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
  <head>
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

	<!-- css 파일 -->
	<link rel="stylesheet" href="/resources/css/index.css">
	
	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
    <title>BBmore</title>	
</head>
  
  
<body>  
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
</header><!-- header 끝 -->

<!-- 사진 슬라이더 부분 -->  
<div class="hero-slider">
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/resources/aviato_images/slider/slider_1.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-center">
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">비대면 세탁 서비스</h1>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">배달원과 약속하는 번거로움도</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">시간을 방해받는 일도 없는 프라이빗한 일상</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">편리하게 맡기세요.</p>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="/order/freeService">freeService</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/resources/aviato_images/slider/slider-3.png);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-left">
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">세탁 이용 후기</h1>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">빨래 없는 일년의 144시간 동안</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">자랑하고 싶은 취미가 생겼습니다</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">후기를 통해 결과물을 확인하세요.</p>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="/board/boardList">Review</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/resources/aviato_images/slider/slider_2.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-right">
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">합리적인 가격</h1> 
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">라이프 스타일에 맞게 세탁을</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">얽매이지 않고 자유롭게 맡기고</p>
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">서비스는 할인된 금액으로 이용 가능합니다.</p>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="/order/howUsePrice">serviceCharge</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 주소창 입력 -->
<section class="call-to-action bg-gray section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="title">
					<i class="fa-solid fa-location-dot fa-3x"></i><h2>now Address</h2>
				</div>
				<div class="col-lg-6 col-md-offset-3">
				    <div class="input-group subscription-form">
				      <input type="text" class="form-control" value="${sessionScope.adress}, ${sessionScope.adressSub}" disabled="disabled">
				      <span class="input-group-btn">
				        <button class="btn btn-main" type="button" onclick="changeAddress()">changeAddress</button>
				      </span>
				    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->

			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->



    <!-- ======= F.A.Q Section ======= -->
    <section id="faq" class="faq">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Service</h2>
          <p>How To Use</p>
        </div>

        <ul class="faq-list">

          <li>
            <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">Step1. 나에게 맞는 서비스를 신청하세요. <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq1" class="collapse" data-bs-parent=".faq-list">
              <p>
                <h4><b class="font">월정액</b></h4>
                  	주기적인 세탁이 필요할 합리적인 가격으로 이용하세요.
              </p>
              <p>
                <h4><b class="font">자유이용</b></h4>
                  	필요한 순간마다 안심 정찰 가격으로 편리하게 이용하세요.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">Step2. 오늘 밤 11시 전 세탁물을 문 앞에 내놓고 수거 신청하세요.<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq2" class="collapse" data-bs-parent=".faq-list">
              <p>
               		 정확한 서비스를 위해<b class="font"> BBmore</b> + <b class="font">세탁물명</b>을 표기하여 문 앞에 내놓아주세요. 
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">Step3. 내 옷의 진행 상황을  MyPage에서 확인할 수 있어요.<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq3" class="collapse" data-bs-parent=".faq-list">
              <p>
                	<b class="font">MyPage </b>에서 확인해보세요.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">Step4. 내일 밤 세탁된 옷이 문앞에 도착해요.<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq4" class="collapse" data-bs-parent=".faq-list">
              <p>
                	<b class="font">주문한 세탁물</b>이 라이트백에 담겨 배송됩니다.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">Step5. 문의사항이 있을 경우 FAQ 또는 챗봇을 이용해 주세요.<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq5" class="collapse" data-bs-parent=".faq-list">
              <p>
                	<b class="font">FAQ</b>는 바로 하단에 , <b class="font">챗봇</b>은 오른쪽 하단에 있어요 :)
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq6" class="collapsed question">Step6. 서비스 이용후 이용후기를 남겨주세요!<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq6" class="collapse" data-bs-parent=".faq-list">
              <p>
                	BBmore 이용 후 <b class="font">이용후기</b>를 써주면 도움이 됩니다. :)
              </p>
            </div>
          </li>

        </ul>

      </div>
    </section><!-- End F.A.Q Section -->




    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="row" data-aos="zoom-out">
          <div class="col-lg-9 text-center text-lg-start">
            <div class="title-faq">
            	<h3>FAQ</h3><i class="fa-solid fa-comments fa-2x"></i>
            </div>
            	<p> 자주 묻는 질문은 FAQ를 통해 확인하세요 !
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" id="myBtn">FAQ Start</a>
          </div>
        </div>

      </div>
      
    <!-- The Modal -->  
	<div id="myModal" class="modal">
		<!-- Modal content 시작-->
		<div class="modal-content">
			<span class="close">&times;</span>                                                               
				<h2 class="chatbot_p">FAQ</h2>  
					<button class="button-17 btn-chat" role="button" onclick="chatLarge(this.value)" value="1">서비스 안내</button>
					<div id = "qustion1"></div> 	<!-- 대분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion2-1"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion3"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->	
					<button class="button-17 btn-chat" role="button" onclick="chatLarge(this.value)" value="2">수거 배송 안내</button>
					<div id = "qustion1-2"></div> 	<!-- 대분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion2-2"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion3-1"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->	
					<button class="button-17 btn-chat" role="button" onclick="chatLarge(this.value)" value="3">결제 안내</button>
					<div id = "qustion1-3"></div> 	<!-- 대분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion2-3"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion3-2"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->	
					<button class="button-17 btn-chat" role="button" onclick="chatLarge(this.value)" value="4">회원정보 안내</button>
					<div id = "qustion1-4"></div> 	<!-- 대분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion2-4"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->
					<div id = "qustion3-3"></div> 	<!-- 중분류 질문 클릭시 다음 질문 나오기 -->	
					
					<div>
						
					</div>	
		</div><!-- Modal content 끝-->
	</div><!-- Trigger/Open The Modal 끝-->
	
    </section><!-- End Cta Section -->


    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>photo</h2>
          <p>review</p>
        </div>

        <div class="row portfolio-container" data-aos="fade-up">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main1.jpg" class="img-fluid" alt="사진1"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main2.jpg" class="img-fluid" alt="사진2"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main3.jpg" class="img-fluid" alt="사진3"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main4.jpg" class="img-fluid" alt="사진4"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main5.jpg" class="img-fluid" alt="사진5"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main6.jpg" class="img-fluid" alt="사진6"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main7.jpg" class="img-fluid" alt="사진7"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main8.jpg" class="img-fluid" alt="사진8"></a></div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-img"><a href="/board/boardList"><img src="/resources/img/main9.jpg" class="img-fluid" alt="사진9"></a></div>
          </div> 

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    


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
	// 무료견적 서비스 버튼
	function freeService()
	{
		location.href="/order/freeService";
	}//////////////////// freeService()
</script>
	
<script>
	// 챗봇 모달
	var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];                                          
 
        // When the user clicks on the button, open the modal 
        btn.onclick = function() 
        {
            modal.style.display = "block";
        }
 
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() 
        {
            modal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) 
        {
            if (event.target == modal) 
            {
                modal.style.display = "none";
            }
        }

</script>	
	
<script>
	// 1. 첫 번째 질문 클릭: 서비스 안내
	function chatLarge(value)
	{
		let lno = value;
		console.log(value);
		
		$.ajax
		({
			type: "POST",
			url: "/contact/chatLargeProc",
			data: 
			{
				chat_lno: lno	
			},
			dataType: "JSON",
			success: function(data)	
			{
				if(data != null) 
				{
					let Llist = '';
					for(let i=0; i<data.length; i++)
					{
						Llist += "<button type='button' class='button-17 chat_m' role='button' onclick='chatMedium("+data[i].chat_mno+")' value='"+data[i].chat_mno+"'>" + data[i].chat_mList + "</button>"	// 두번쨰 질문까지 나왔어
						if(data[i].chat_lno === 1)
						{
							$("#qustion1").html(Llist);					
						}
						else if(data[i].chat_lno === 2)
						{
							$("#qustion1-2").html(Llist);
						}
						else if(data[i].chat_lno === 3)
						{
							$("#qustion1-3").html(Llist);
						}
						else if(data[i].chat_lno === 4)
						{
							$("#qustion1-4").html(Llist);
						}
						else if(data[i].chat_lno === 5)
						{
							$("#qustion1-5").html(Llist);
						}
					}
					
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
		
	}/////////////////////// chatLarge()
	
	
	// 2. 두 번째 질문 클릭시
	function chatMedium(value)
	{
		let mno = value;
		
		$.ajax({
			type: "POST",
			url: "/contact/chatMediumProc",
			data: 
			{
				chat_mno: mno
			},
			dataType: "JSON",
			success: function(data)
			{
				if(data != null)
				{
					let mList = '';
					for(let i=0; i<data.length; i++)
					{
						if(data[i].chat_mno === 1)
						{
							mList += "<span class='chat_p'>" + data[i].chat_sList + "</span>"
							$("#qustion2-1").html(mList);
						}
						else
						{
							mList += "<button type='button' class='button-17 chat_s' role='button' onclick='chatSmall("+data[i].chat_sno+")' value='"+data[i].chat_sno+"'>" + data[i].chat_sList + "</button>"
							if(data[i].chat_mno === 2)
							{
								$("#qustion2-1").html(mList);
							}
							else if(data[i].chat_mno === 3 || data[i].chat_mno === 4)
							{
								$("#qustion2-2").html(mList);
							}
							else if(data[i].chat_mno === 5 || data[i].chat_mno === 6)
							{
								$("#qustion2-3").html(mList);
							}
							else if(data[i].chat_mno === 7 || data[i].chat_mno === 8 || data[i].chat_mno === 9)
							{
								$("#qustion2-4").html(mList);
							}
						}
					}
					
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}/////////////////// chatMedium()
	
	
	
	// 세 번째 질문 클릭시 - ajax
	function chatSmall(value)
	{
		let xsno = value;
		
		$.ajax({
			type: "POST",
			url: "/contact/chatSmallProc",
			data: 
			{
				chat_xsno: xsno
			},
			dataType: "JSON",
			success: function(data)
			{
				if(data != null)
				{
					let sList = '';
					for(let i=0; i<data.length; i++)
					{
						sList += "<span class='chat_p'>" + data[i].chat_xsList + "</span>"
						if(data[i].chat_sno === 1 || data[i].chat_sno === 2 || data[i].chat_sno === 3 || data[i].chat_sno === 4 || data[i].chat_sno === 5)
						{
							$("#qustion3").html(sList);							
						}
						if(data[i].chat_sno === 6 || data[i].chat_sno === 7 || data[i].chat_sno === 8 || data[i].chat_sno === 9 || data[i].chat_sno === 10)
						{
							$("#qustion3-1").html(sList);							
						}
						if(data[i].chat_sno === 11 || data[i].chat_sno === 12 || data[i].chat_sno === 13)
						{
							$("#qustion3-1").html(sList);							
						}
						if(data[i].chat_sno === 14 || data[i].chat_sno === 15 || data[i].chat_sno === 16 || data[i].chat_sno === 17)
						{
							$("#qustion3-2").html(sList);							
						}
						if(data[i].chat_sno === 18)
						{
							$("#qustion3-2").html(sList);							
						}
						if(data[i].chat_sno === 19 || data[i].chat_sno === 20)
						{
							$("#qustion3-3").html(sList);							
						}
						if(data[i].chat_sno === 21)
						{
							$("#qustion3-3").html(sList);							
						}
						if(data[i].chat_sno === 22)
						{
							$("#qustion3-3").html(sList);							
						}
					}
					
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	
	
	// 예약확인 버튼 클릭시
	function reservation()
	{
		location.href="/reserve/reserveConfirm";
	}///////////////////////////// reservation()
	
	
	// 게시판 클릭시
	function boardList()
	{
		location.href="/board/boardList";
	}///////////////////////////// boardList()
	

</script>

<!-- Channel Plugin Scripts -->
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
	// 로그아웃 버튼을 클릭 했을 때 - 로그인 되어있을 때
	function logout()
	{
		location.href="/user/logoutProc";
	}//////////////////////// logout()
	
	
	// 마이페이지 클릭 했을 때 - 로그인 되어있을 때
	function mypage()
	{
		location.href="/myb/myPage";
	}//////////////////////// mypage()

	
	// changeAddress버튼 클릭시
	function changeAddress()
	{
		location.href="/myb/myPage";
	}/////////////////// changeAddress()
	
	
</script>

  </body>
</html>
