<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<!-- 제이쿼리 라이브러리  -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<!-- alert창 라이브러리 사용 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<!-- 구글폰트 사용 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<!-- 구글폰트 사용 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>	
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<!-- css파일 첨부 -->
	<link rel="stylesheet" href="/resources/css/login.css">

	<!-- 아이콘 사용 스크립트 -->
	<script src="https://kit.fontawesome.com/1c1742d8b9.js" crossorigin="anonymous"></script>
	
	<title>BBmore</title>

</head>
<body>
	<div class="title"><span class="title2">BB</span>more</div>
	<div class="loginForm">
		<div class="loginForm-inner">
			<div class="headline">회원로그인</div>
			<form class="form">
				<input type="text" class="form-style" name="userId" id="userId" maxlength="15" placeholder="ID"><br>
				<input type="password" class="form-style" name="userPwd" id="userPwd" maxlength="15" placeholder=PWD><br><br> 
				<input type="button" id="btnlogin" onclick="loginCheck()" value="로그인">
			</form>
				<ul class="list-login">
					<li>
						<a href="/user/findPwd">비밀번호 찾기</a>
					</li>
					<li>
						<a href="/user/findId">아이디 찾기</a>
					</li>
					<li>
						<a href="/user/join">회원가입</a>
					</li>
			</ul>
		</div>
	</div>


<script type="text/javascript">
	
	//로딩 후 이것을 실행시켜줘~
	$(document).ready(function() 
	{	
		//실행되자마자 실행되는 스크립트 focus = userId라는  id요소에 포커스 대줘
		$("#userId").focus();
		
		//userId 라는 id요소가 키가 입력되었을 때 밑에 있는 함수가 실행시는 것
		$("#userId").on("keypress", function(e) {	
			if(e.which == 13) {
				loginCheck();
			}
		});
		
		$("#userPwd").on("keypress", function(e) {
			if(e.which == 13) {
				loginCheck();
			}
		});
		
		$("#btnlogin").on("click", function() {
			loginCheck();
		});
		
		//로그인버튼
		function loginCheck() {
			if($.trim($("#userId").val()).length <= 0) {
				swal("아이디를 입력하세요");
				return;
			}
			
			if($.trim($("#userPwd").val()).length <= 0) {
				swal("비밀번호를 입력하세요");
				return;
			}
			
			// 로그인 버튼 클릭시 비동기 통신을 할거다
			$.ajax({
				type:"POST",
				url:"/user/loginProc",
				data:{
					u_id:$("#userId").val(),
					u_pwd:$("#userPwd").val()
				},
				datatype:"JSON",
				success:function(code){
					if(code === 0){
						swal("사용자의 아이디가 없거나 비밀번호가 틀렸습니다.");
					}
					else if(code === 1){
						location.href="/order/index";
					}
				},
				error:function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}
	});
</script>
</body>
</html>