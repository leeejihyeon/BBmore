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

<!-- 다음 주소창api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<link rel="stylesheet" href="/resources/css/join.css">


</head>
<body>
	<a class="bbTitle" href = "/user/login"><div class="title"><span class="title2">BB</span>more</div></a>
	<div class="findForm">
		<div class="findForm-inner">
			<div class="headline">회원가입</div>
			<form class="form">
				<div>
					<div class="text-style">아이디</div>
					<input type="text" class="form-style id-style" name="userId" id="userId" maxlength="15" placeholder="아이디(영어와 숫자만 입력)">
					<input type="button" class = "btnIdCheck" value="중복 확인" onclick="idCheck()">
					<input type="hidden" value=0 id="bbbb">
				</div>
						
				<div>
					<div class="text-style">비밀번호</div>
					<input type="password" class="form-style" name="userPwd" id="userPwd" maxlength="15" placeholder="비밀번호(8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합)">
				</div>
				
				<div>
					<div class="text-style">비밀번호 확인</div>
					<input type="password" class="form-style" name="userPwd2" id="userPwd2" maxlength="15" placeholder="비밀번호 확인(8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합)">
				</div> 
				
				<div>
					<div class="text-style">이름</div>
					<input type="text" class="form-style" name="userName" id="userName" maxlength="15" placeholder="이름(한글만 입력)">
				</div>
				
				<div>
					<div class="text-style">휴대폰 번호</div>
					<input type="text" class="form-style" name="userPhone" id="userPhone" maxlength="15" placeholder="휴대폰번호(000-0000-0000)">
				</div>
				
				<div>
					<div class="text-style">이메일</div>
					<input type="text" class="form-style" name="userEmail" id="userEmail" maxlength="50" placeholder="ex: test@naver.com">
				</div>
				
				<div>
					<div class="text-style">주소</div>
					<input type="text" class="form-style addr" name="userAddress" id="userAddress" maxlength="15" placeholder="주소" readonly>
					<input type="button" class = btnAddr value="주소 찾기" onclick="findAddress()">
				</div>
				
				<div>
					<div class="text-style">상세 주소</div>	
					<input type="text" class="form-style" name="userAddress_sub" id="userAddress_sub" maxlength="15" placeholder="상세 주소">
				</div>
				
				<div>
					<div class="text-style">출입 방법</div>				
					<select class="select-style" id="enter_way">
						<option id="first" value="1">공동현관</option>
						<option id="second" value="2">경비실호출</option>
						<option id="third" value="3">자유출입가능</option>
					</select>
				</div>
				
				<div>
					<div class="text-style">기타 사항</div>
					<textarea class="form-style textarea" id="wayDetail" maxlength="50" placeholder="* 공동현관 경우 출입번호를 적어주세요"></textarea>
				</div>

					<input type="button" id="btnCheck" onclick="joinCheck()" value="가입하기">
			</form>
			<div class="list-join">
				<ul>
					<li>
						<a href="/user/findPwd">비밀번호 찾기</a>
					</li>
					<li>
						<a href="/user/findId">아이디 찾기</a>
					</li>
					<li>
						<a href="/user/login">로그인</a>
					</li>
				</ul>
			</div>	
		</div>
	</div>


<script type="text/javascript">
//회원가입 다음 주소창 넣기 함수
	function findAddress()
	{
		new daum.Postcode
		({
			oncomplete: function(data)
			{
				var addr = "";
				
				if(data.userSelectedType === 'R')
				{
					addr = data.roadAddress;
				}
				else
				{
					addr = data.jibunAddress;
				}
				
				document.getElementById("userAddress").value = addr;
				document.getElementById("userAddress_sub").focus();
			}
		}).open();
	}///////////////주소 함수
</script>


<script type="text/javascript">
	// 페이지 로딩 후 처리
	$(document).ready(function()
	{
		$("#userId").focus();
		
		$("#userId").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userPwd").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userPwd2").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userName").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userPhone").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userEmail").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
		$("#userAddress_sub").on("keypress", function(e)
		{
			if(e.which === 13)
			{
				joinCheck();
			}
		});
		
	
});/////////////////페이지 로딩 후 처리


//가입하기 버튼 클릭시 함수 호출
function joinCheck()
{
	// 아이디 입력 여부 , 정규식 체크(영문자로 시작하는 영문자 또는 숫자 6~20자 )
 	if($.trim($("#userId").val()).length <= 0)
	{
		swal("아이디를 입력하세요");
		return;
	}
 	else
 	{
 		var u_id = document.getElementById('userId').value;
 		var regExp = /^[0-9a-zA-Z]+$/;
 		
 		if(regExp.test(u_id) == false)
 		{
 			swal("아이디 형식이 올바르지 않습니다.");
 			return;
 		}
 	}
	
 	// 비밀번호 입력 여부 , 정규식 체크(8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합)
	if($.trim($("#userPwd").val()).length <= 0)
	{
		swal("비밀번호를 입력하세요");
		return;
	}
	else
 	{
 		var u_pwd = document.getElementById('userPwd').value;
 		var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
 		
 		if(regExp.test(u_pwd) == false)
 		{
 			swal("비밀번호 형식이 올바르지 않습니다.");
 			return;
 		}
 	}
	
	// 비밀번호 확인 입력 여부 , 정규식 체크(8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합)
	if($.trim($("#userPwd2").val()).length <= 0)
	{
		swal("비밀번호 확인을 입력해주세요.");
		return;
	}
	else
	{
		var u_pwd2 = document.getElementById('userPwd2').value;
		var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
 		
 		if(regExp.test(u_pwd2) == false)
 		{
 			swal("비밀번호확인 형식이 올바르지 않습니다.");
 			return;
 		}
 		
		if($("#userPwd").val() != $("#userPwd2").val())
		{
			swal("입력한 비밀번호와 일치하지 않습니다.");
			return;
		}
	}
	
	// 이름 입력 여부 , 정규식 체크(한글만 입력)
	if($.trim($("#userName").val()).length <= 0)
	{
		swal("이름을 입력하세요");
		return;
	}
	else
 	{
 		var u_name = document.getElementById('userName').value;
 		var regExp = /[ㄱ-힣]/;
 		
 		if(regExp.test(u_name) == false)
 		{
 			swal("사용자 이름 형식이 올바르지 않습니다.");
 			return;
 		}
 	}
	
	// 휴대폰번호 입력 여부 , 정규식 체크
	if($.trim($("#userPhone").val()).length <= 0)
	{
		swal("휴대폰번호를 입력하세요");
		return;
	}
	else
 	{
 		var u_phone = document.getElementById('userPhone').value;
 		var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
 		
 		if(regExp.test(u_phone) == false)
 		{
 			swal("휴대폰번호 형식이 올바르지 않습니다.");
 			return;
 		}
 	}
	
	// 이메일주소 입력 여부 , 정규식 체크
	if($.trim($("#userEmail").val()).length <= 0)
	{
		swal("이메일주소를 입력하세요");
		return;
	}
	else
 	{
 		var u_email = document.getElementById('userEmail').value;
 		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
 		
 		if(regExp.test(u_email) == false)
 		{
 			swal("이메일 형식이 올바르지 않습니다.");
 			return;
 		}
 	}
	
	if($.trim($("#userAddress_sub").val()).length <= 0)
	{
		swal("상세주소를 입력하세요");
		return;
	}
	
	// 회원가입 ajax 비동기 통신
	$.ajax({
		type:"POST",
		url:"/user/joinProc",
		data:
		{
			u_id: $("#userId").val(),
			u_pwd: $("#userPwd").val(),
			u_name: $("#userName").val(),
			u_phone: $("#userPhone").val(),
			u_email: $("#userEmail").val(),
			u_address: $("#userAddress").val(),
			u_address_sub: $("#userAddress_sub").val(),
			u_enter_way: $("#enter_way").val(),
			u_way_detail: $("#wayDetail").val(),
		},
		dataType:"JSON",
		success:function(code)
		{
			if(code === 0)
			{
				swal("회원가입 중 오류가 발생했습니다.");
			}
			else if(code === 1)
			{
				swal("회원가입이 정상적으로 완료되었습니다.")
					.then(() => {						
						location.href = "/user/login";
					});
			}
		},
		error:function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
		
	});////////////////회원가입 ajax
	
}//////////////joinCheck()

	//아이디 중복확인 버튼 클릭시  함수 호출
	function idCheck()
	{
		if($.trim($("#userId").val()).length <= 0)
		{
			swal("아이디를 입력해 주세요");
			return;
		}
		
		// 아이디를 입력한 후 중복확인 버튼 눌렀을 때 ajax통신
		$.ajax({
			type:"POST",
			url:"/user/idCheckProc",
			data:{
				userId:$("#userId").val()
			},
			datatype:"JSON",
			success:function(code)
			{
				if(code === 0)
				{
					swal("중복된 아이디가 존재합니다.");
				}
				else if(code === 1)
				{
					swal("사용 가능한 아이디 입니다.");
				}
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});/////////////아이디 중복확인 ajax
	}///////////////////idCheck() - 아이디 중복확인 체크 함수 호출


</script>

</body>
</html>