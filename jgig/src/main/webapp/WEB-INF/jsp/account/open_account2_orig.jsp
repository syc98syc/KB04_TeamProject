<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌개설</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
		<style>
			input[type="password"] {
			    border: none; /* 테두리 제거 */
			    border-bottom: 1px solid #000; /* 아래쪽에 1px 두께의 줄 생성 */
			    background: transparent; /* 배경을 투명하게 설정 */
			    outline: none; /* 포커스 효과 제거 */
			}
			.d-inline-block {
			    margin-right: 1000px; /* 오른쪽으로 10px 이동 */
			  }
		</style>
		<script>
		function password_check(){
			$(".pw").keyup(function(){
				let pass1 = $("#password1").val()
				let pass2 = $("#password2").val()
				
				if(pass1 != "" || pass2 != ""){
					if(pass1 == pass2){
						$("#checkPw").html("일치").css("color", "green")
						$("#submitButton").prop("disabled", false)
					}else{
						$("#checkPw").html("불일치").css("color", "red")
						$("#submitButton").prop("disabled", true)
					}
				}
			})
		}
		
		$(function(){
			password_check()
		})
		</script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	</head>
	<body>
		<h1>계좌개설</h1>
			<form action="open_action" method = "post">
				<input type = "hidden" name = "act_name" value = "${act_name}" >
				<input type = "hidden" name = "mem_nm" value = "${mem_nm}">
				<input type = "hidden" name = "ssn" value = "${ssn}">
				<input type = "hidden" name = "balance" value = 0>
				<input type = "hidden" name = "phone_num" value = "${phone_num}">
				<input type = "hidden" name = "mem_id" value = "${mem_id}">
				<h3 class="font-weight-bold">개인 정보</h3>
				직업구분
				<select name = "job">
					<option value ="회사원">회사원</option>
					<option value ="전문직">전문직</option>
					<option value ="자영업">자영업</option>
					<option value ="주부">주부</option>
					<option value ="무직">무직</option>
				</select>
				<br>
				거래목적  
				<select name = "pur_trans">
					<option value ="급여">급여</option>
					<option value ="법인">법인</option>
					<option value ="모임">모임</option>
					<option value ="사업자금">사업자금</option>
				</select>
				<br>
				거래자금의 원천  <input type = "text" name = "sor_fund" required><br>
				<h3 class="font-weight-bold">계좌 정보</h3>
				계좌비밀번호  <input type = "password" class = "pw" id = "password1" name = "act_password" 
				placeholder = "네자리 비밀번호" minlength = 4 maxlength = 4 required><br>
				계좌비밀번호 확인  <input type = "password" class = "pw" placeholder = "네자리 비밀번호" id = "password2" minlength = 4 maxlength = 4 required>
				<font id = "checkPw" size = "2"></font>
				
				<div class = "text-center">
					<div class = "d-inline-block">
						<br>
						<input type = "submit" id = "submitButton" class="btn btn-warning" value = "발급">
					</div>
				</div>
			</form>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</body>
</html>