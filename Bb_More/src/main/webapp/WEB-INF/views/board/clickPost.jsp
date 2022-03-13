<%@page import="com.icia.bbmore.dto.Goods"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.icia.bbmore.dto.Comment"%>
<%@ page import="com.icia.bbmore.dto.User"%>
<%@ page import="com.icia.bbmore.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- jquery 라이브러리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
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
	
	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
	<!-- css파일 첨부 -->
	<link rel="stylesheet" href="/resources/css/clickPost.css">
	
	<!-- alert창 라이브러리 사용 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<title>BBmore</title>

</head>
<body id="body"> 

<%
	ArrayList<Goods> list = (ArrayList<Goods>)session.getAttribute("goodsList");
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
	String user_id = (String)session.getAttribute("u_id");
	
	if(user_id != null)
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
						<li><a href="/order/index">Home</a></li>
						<li class="active">boardWrite</li>
					</ol>
				</div>
			</div>
		</div>
	</div> 
</section>
<!-- Anout Us 부분 끝 -->
	



<!-- 작성자, 제목, 내용 시작 -->
<section class="user-dashboard page-wrapper">
<%
		Board board = (Board)request.getAttribute("clickPost");
		System.out.println(board);
		long b_no = board.getB_no();
		String u_id = board.getU_id();
		String b_content = board.getB_content();
		String b_title = board.getB_title();
		String fileName = board.getFileName();
		
		String user = (String)session.getAttribute("u_id");
		
		if(board != null)
		{
%>
	<div class="title1">
		<i class="fa-solid fa-quote-left fa-2x i-left"></i><p class="title1-text"><b><%= u_id %>님 이용후기</b></p><i class="fa-solid fa-quote-right fa-2x i-right"></i> 
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="dashboard-wrapper user-dashboard">
					<table class="table">
						<thead>
							<tr>
								<th><span>제목: </span><%= b_title %></th> 
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><%= b_content %></td>  
							</tr>
						</tbody>				
					</table>
				</div>
			</div>
		</div>
	</div>
<%
	}
%>
</section>
<!-- 작성자, 제목, 내용 끝 -->



<!-- 댓글 등록 시작 -->
<section class="page-wrapper comment1">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="post post-single">
					<div class="post-thumb">
						<img class="img-responsive" src="images/blog/blog-post-1.jpg" alt="">
					</div>
				    <div class="post-comments-form">
				    	<h3 class="post-sub-heading">Leave You Comments!</h3> 
				    	<form method="post" action="#" id="form" role="form" > 

				            <div class="row">
				                <!-- Comment -->
				                <div class="form-group col-md-12">
				                    <textarea name="text" id="comment" class=" form-control" rows="6" placeholder="Comment" maxlength="400"></textarea>
				                </div>

				                <!-- Send Button -->
				                <div class="form-group col-md-12">
				                    <button type="button" class="btn btn-small btn-main" onclick="comment_enter()">
				                        Send comment
				                    </button> 
				                </div>
				            </div>

				        </form>
				    </div>

				</div>

			</div>
		</div>
	</div>
</section>
<!-- 댓글 등록 끝 -->




<!-- 댓글 가져오기 시작 -->
<section class="page-wrapper comment2">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="post post-single">
					<div class="post-thumb">
						<img class="img-responsive" src="images/blog/blog-post-1.jpg" alt="">
					</div>
				    <div class="post-comments">
				    	<h3 class="post-sub-heading">Comments</h3>
				    	
						<div class="container"> 
							<div class="row">
								<div class="col-md-12">
									<div class="box-style user-dashboard" id="user">

									</div>
								</div>
								<button class="button-28" role="button" onclick="boardList()">목록</button>
								<button class="button-28" role="button" onclick="boardModify()">수정</button>
								<button class="button-28" role="button" onclick="boardDelete()">삭제</button>
							</div>
						</div>
						
				    </div> 
				</div>

			</div>
		</div>
	</div>
</section>
<!-- 댓글 가져오기 끝 -->
	





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
	// 목록버튼 클릭시
	function boardList()
	{
		location.href="/board/boardList";
	}/////////////////////// boardList()
	
	
	// 수정버튼 클릭시
	function boardModify()
	{	
		let b_no = "<%= b_no %>";
		let u_id = "<%= u_id %>";
		let sessionU_id =  "<%= user %>";
		let b_title = "<%= b_title %>";
		let b_content = "<%= b_content %>";
		let fileName = "<%= fileName %>";
		
		if(sessionU_id != u_id)
		{
			swal("해당 사용자만 게시물 수정이 가능합니다.");
		}
		else
		{
			location.href="/board/boardUpdate?u_id="+ u_id +"&b_title="+ b_title +"&b_content="+ b_content+"&fileName="+fileName+"&b_no="+b_no;
		}
		
	}//////////////////////// boardUpdate()
	

	// 삭제버튼 클릭시
	function boardDelete()
	{
		let b_no = "<%= b_no %>";
		let u_id = "<%= u_id %>";
		let sessionU_id =  "<%= user %>";
		
		if(sessionU_id != u_id)
		{
			swal("해당 사용자만 글 삭제가 가능합니다.");
		}
		else if(sessionU_id == u_id)
		{
			swal("글을 삭제하시겠습니까?");
			
			$.ajax
			({
				type: "POST",
				url: "/board/boardDeleteProc",
				data:
				{
					b_no: b_no,
					u_id: u_id
				},
				success: function(code)
				{
					if(code === 0)
					{
						alert("게시물 삭제 중 오류가 발생했습니다.");
					}
					else if(code === 1)
					{
						swal("해당 게시물이 삭제되었습니다.")
							.then(() => {
								location.href="/board/boardList";
							});
					}
				},
				error:function(request, status, error)
				{
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}
	}////////////////// boardDelete()



	// 댓글 등록 버튼 클릭시
	function comment_enter()
	{
		let u_id =  "<%= user %>";	
		let b_no = "<%= b_no %>";
		let comment_content = document.getElementById('comment').value;	
		
		$.ajax
		({
			type: "POST",
			url: "/board/comment_enterProc",
			data: 
			{
				u_id: u_id,	// 로그인 한 아이디(세션에 저장된 아이디)
				b_no: b_no,	// 게시물 번호
				comment_content: comment_content	// 댓글내용
			},
			success: function(code)
			{
				if(code === 0)
				{
					console.log("댓글등록 실패");
				}
				else if(code === 1)
				{
					console.log("댓글등록 성공");
					getComment(b_no);
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})
	}////////////////////////// comment_enter()
	
	
	
	// 등록된 댓글 가져오기
	function getComment(b_no)
	{
		$.ajax
		({
			type: "POST",
			url: "/board/getCommentProc",
			data:
			{
				b_no: b_no
			},
			success: function(data)
			{
				//alert(JSON.stringify(data));
				//console.log("등록된 댓글 가져오기 성공");
				//댓글 리스트 뷰를 만들어됌
				
				commentList(data);
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})
	}/////////////////// getComment()
	
	
	// 등록된 댓글 가져오기  ajax성공시 
	function commentList(data)
	{
		const template = `
			<table class="table table-inner">  
				<thead> 
					{{__commentList__}}
				</tbody> 				
			</table> 
		`;
		
		let commentList = '';
		
		for(let i=0; i<data.length; i++)
		{
			commentList += '<tr>';
			commentList += '<td>' + data[i].comment_no + '</td>';
			commentList += '<td>' + data[i].u_id + '</td>';
			commentList += '<td>' + data[i].comment_content + '</td>';
			commentList += '</tr>';
		}

		const dd = template.replace('{{__commentList__}}', commentList);
		document.getElementById('user').innerHTML = dd; 
	}///////////////// commentList()
	
		window.addEventListener("load", function(event)
		{
			getComment(<%= b_no %>);
		});

</script>

<script>
// 로그아웃 버튼을 클릭 했을 때 - 로그인 되어있을 때
function logout()
{
	location.href="/user/logoutProc";
}//////////////////////// logout()
</script>	
</body>
</html>