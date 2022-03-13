<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>결제 성공</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <!-- jQuery 라이브러리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    
    <style>
    	.swal-button 
    	{
			background-color: #E5CCFF !important;
		}
		
		button:focus 
		{
			background-color: #7d5794 !important;
		}
    </style>
</head>
<body>
			

<script>
	
	// 결제 성공 후 
	$(document).ready(function ()
	{
		let u_no = '${sessionScope.u_no}';
		let ordergoods_totCount = '${sessionScope.ordergoods_totCount}';
		let ordergoods_totPrice = '${sessionScope.total}';
		
		$.ajax({
			type: "POST",
			url: "/order/successProc",
			dataType: "JSON",
			data:
			{
				u_no: u_no,
				ordergoods_totPrice: ordergoods_totPrice,
				ordergoods_totCount: ordergoods_totCount
			},
			success: function(code)
			{
				if(code == 0)
				{
					alert("결제 중 오류 발생");
				}
				else if(code == 1)
				{
					swal("결제가 성공적으로 완료되었습니다.")
						.then(() => {  
							location.href="/myb/myPage";
						});;
				}
			},
			error:function(request, status, error)
			{
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		}); 
		
	});

	
	// select해온 orderList_no를 가지고 orderGoods에 insert하기
// 	function orderLlist(orderList_no)
// 	{
		
// 		$.ajax
// 		({
// 			type: "POST",
// 			url: "/order/orderList",
// 			dataType: "JSON",
// 			data:
// 			{
// 				orderList_no: orderList_no
// 			},
// 			success: function(code)
// 			{
// 				if(code == 1)
// 				{
					
// 				}
// 				else
// 				{
// 					swal("결제 진행 중 오류가 발생했습니다.");
// 				}
// 			},
// 			error:function(request, status, error)
// 			{
// 				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
// 			}
// 		})

// 	}	  	
</script>
</body>
</html>