<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BBmore</title>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="/resources/css/findPwd.css">
</head>

<body>
	<div class="title"><span class="title2">BB</span>more</div>
	<div class="findForm">
		<div class="findForm-inner">
			<div class="headline">비밀번호 찾기</div>
			<form class="form">
				<div class="text-style">아이디</div>
				<input type="text" class="form-style" name="userId" id="userId" maxlength="15" placeholder="아이디"><br>
				<div class="text-style">이름</div>
				<input type="text" class="form-style" name="userName" id="userName" maxlength="15" placeholder="이름"><br><br>
				<div class="text-style">휴대폰 번호</div>
				<input type="text" class="form-style" name="userPhone" id="userPhone" maxlength="15" placeholder="휴대폰번호(000-0000-0000)"><br><br>
				<input type="button" id="btnCheck" onclick="findPwdCheck()" value="확인">
			</form>
				<ul class="list-find">
					<li>
						<a href="/user/findId">아이디 찾기</a>
					</li>
					<li>
						<a href="/user/login">로그인</a>
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
			$("#userId").focus();
			
			$("#userId").on("keypress", function(e) {
				if(e.which === 13) {
					findPwdCheck();
				}
			});
		
			$("#userName").on("keypress", function (e) {
				if(e.which === 13) {
					findPwdCheck();
				}
			});
			
			$("#userPhone").on("keypress", function(e){
				if(e.which === 13){
					findPwdCheck();
				}
			});
			
			$("#btnCheck").on("click", function(e) {
				findPwdCheck();
			});		
		});/////////////페이지 로딩 후 
		
		// findcheck() : 확인 버튼 클릭시 호출되는 함수
		function findPwdCheck(){
			if($.trim($("#userId").val()).length <= 0) {
				swal("아이디를 입력하세요");
				return;
			}
			
			if($.trim($("#userName").val()).length <= 0) {
				swal("이름을 입력하세요");
				return;
			}
			
			if($.trim($("#userPhone").val()).length <= 0) {
				swal("휴대폰번호를 입력하세요");
				return;
			}
			
			// btnCheck버튼을 눌렀을 때 비통기 통신 할 예정
			$.ajax({
				type:"POST",
				url:"/user/findPwdProc",
				data:{
					userId:$("#userId").val(),
					userName:$("#userName").val(),
					userPhone:$("#userPhone").val()
				},
				datatype:"JSON",
				success:function(code)
				{
					if(code === 0)
					{
						swal("가입된 아이디가 없습니다.");
					}
					else if(code === 1)
					{
						swal("비밀번호 재설정 해주시기 바랍니다.")
							.then(() => {
								location.href = "/user/findPwdReset";
							});
					}
				},
				error:function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});///////////ajax
		}///////////////findCheck()
	</script>
</body>
</html>