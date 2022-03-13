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
	
	<link rel="stylesheet" href="/resources/css/findPwdReset.css">
</head>
<body>
<%
	String u_id = (String)session.getAttribute("pwdId");
%>
	<div>${sessionScope.findPwd}</div>
	<div class="title"><span class="title2">BB</span>more</div>
	<div class="findForm">
		<div class="findForm-inner">
			<div class="headline">비밀번호 재설정</div>
			<form class="form">
			
			<div>
				<p class="text-style">아이디</p>
				<input type="text" class="form-style" name="userId" id="userId" maxlength="15" placeholder="아이디" value="<%= u_id%>" readonly>
			</div>
			
			<div>
				<p class="text-style">새 비밀번호</p>
				<input type="password" class="form-style" name="newPwd" id="newPwd" maxlength="15" placeholder="새로운 비밀번호">
			</div>
			
			<div>
				<p class="text-style">비밀번호 확인</p>
				<input type="password" class="form-style" name="newPwd2" id="newPwd2" maxlength="15" placeholder="새로운 비밀번호 확인">
			</div>

				<input type="button" id="btnCheck" onclick="newPwdCheck()" value="확인">
			</form>
				<ul class="list-find">
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
		// 페이지 로디이 후 처리
		$(document).ready(function() 
		{
			$("#userId").focus();
			
			$("#userId").on("keypress", function(e)
			{
				if(e.which === 13)
				{
					newPwdCheck();
				}
			});
			
			$("#newPwd").on("keypress", function(e)
			{
				if(e.which === 13)
				{
					newPwdCheck();
				}
			});
			
			$("#newPwd2").on("keypress", function(e)
			{
				if(e.which === 13)
				{
					newPwdCheck();
				}
			});
		});////////////////페이지 로딩 후 처리
		
		
		// newPwdCheck() - 비밀번호 확인버튼 클릭시 함수 실행
		function newPwdCheck()
		{	
			if($.trim($("#newPwd").val()).length <= 0)
			{
				swal("새 비밀번호를 입력해주세요");
				return;
			}
			
			
			if($.trim($("#newPwd2").val()).length <= 0)
			{
				swal("새 비밀번호를 다시 한 번 입력해주세요");
				return;
			}
			else if($("#newPwd").val() != $("#newPwd2").val())
			{
				swal("새 비밀번호가 일치하지 않습니다.");
				$("#newPwd2").focus();
				return;
			}
			
			
			
			// ajax - 비밀번호 재설정 후 확인버튼 클릭시 비동기 통신 실행
			$.ajax({
				type:"POST",
				url:"/user/findPwdResetProc",
				data:
				{
					userId:$("#userId").val(),
					newPwd:$("#newPwd").val()
				},
				success:function(code)
				{
					if(code === 0)
					{
						swal("비밀번호 재설정 중 오류가 발생했습니다.");
					}
					else if(code === 1)
					{
						swal("비밀번호가 변경되었습니다.")
							.then(() => {
								location.href = "/user/login";
							});
					}	
				}, 
				error:function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}///////////////////////newPwdCheck()함수
	
	</script>
</body>
</html>