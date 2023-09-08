<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌조회및이체</title>
		<style>
			table,th, td{
				border: 1px solid black;
			}
			.button-like-link {
		            display: inline-block;
		            padding: 3px 10px;
		            background-color: #FED671;
		            color: black;
		            text-decoration: none;
		            border: 1px solid black;
		            cursor: pointer;
		            border-radius: 5px;
		            font-weight: bold;
		        }
	        /* 버튼에 호버 효과 추가 */
		    .button-like-link:hover {
		          background-color: #E5CC7C;
		    }	
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
		<script>
		function check_permission(){
			$("#submitButton").prop("disabled", true)
			$("input[name='check']").change(function () {
		           var isChecked = $("input[name='check']:checked").val()
		           if (isChecked ==='yes') {
		        	   $("#submitButton").prop("disabled", false)
		           } else {
		           }
		    });
		}
		
		$(function(){
			check_permission()
		})
		</script>
	</head>
	<body>
		<h1>계좌 해지</h1>
		<table>
			<tr>
				<th>상품명</th><td>${dto.act_name}</td>
			</tr>
			<tr>
				<th>계좌번호 </th><td>${dto.account}</td>
			</tr>
			<tr>
				<th>발급일시</th><td>${formattedRegdate}</td>
			</tr>
			<tr>
				<th>잔액</th><td>${dto.balance}</td>
			</tr>
		</table>
			<table>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type = "text" name = "act_password" minlength = "4" maxlength="4" value = "${dto.act_password}"></td>
				</tr>
			</table>
			<fieldset>
				<input type="radio" class="option1"  id = "option1" name = "check" value = "yes">
		  		<label for="option1">계좌해지시 복구할 수 없음을 인지하였습니다.</label>
			</fieldset>
			<a href = "termination_action?account=${dto.account}" class ="button-like-link">계좌 해지</a>
	</body>
</html>