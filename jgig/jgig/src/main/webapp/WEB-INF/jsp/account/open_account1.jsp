<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌개설</title>
		<style>
			#check_user{
				background-color: #EEEEEE;	
				border: none;
			}
			input[type="text"] {
			    border: none; /* 테두리 제거 */
			    border-bottom: 1px solid #000; /* 아래쪽에 1px 두께의 줄 생성 */
			    background: transparent; /* 배경을 투명하게 설정 */
			    outline: none; /* 포커스 효과 제거 */
			}
			#option1{
				color: yellow;
			}
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
		<script>
			function check_button(){
				$("#checkButton").click(function () {
			        var formData = $("#memberCheckForm").serialize()
	
			        $.ajax({
			            type: "POST",
			            url: "/jgig/member_check",
			            data: formData,
			            dataType: "json",
			            success: function (data) {
			                if (data.success) {
			                	alert("본인인증이 완료되었습니다.");
			                    $("#submitButton").prop("disabled", false)
			                } else {
			                	alert("본인인증에 실패하였습니다.");
			                    $("#submitButton").prop("disabled", true)
			                }
			            },
			            error: function (error) {
			                console.error("Error:", error)
			            },
			        });
			    });
			}
			
			function check_permission(){
				$("input[name='check']").change(function () {
		            var isChecked = $("input[name='check']:checked").val() === "yes"
		            if (isChecked) {
		                $("#submitButton").prop("disabled", false)
		            } else {
		                $("#submitButton").prop("disabled", true)
		            }
		        });
			}
			
			$(function () {
				check_button()
				check_permission()
			})
		</script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	</head>
	<body>
		<h1 class="font-weight-bold">계좌개설</h1>
			<form id = "memberCheckForm" action="member_check" method = "post">
				<span class="font-weight-bold">상품명</span>
				<select name = "act_name">
					<option value ="KBablePlus통장">KBablePlus통장</option>
					<option value ="직장인우대종합통장">직장인우대종합통장</option>
					<option value ="KB두근두근외화적금">KB두근두근외화적금</option>
					<option value ="KB국민ON통장">KB국민ON통장</option>
				</select>
				
				<h3 class="font-weight-bold">본인인증</h3>
				<label for="mem_nm" class="font-weight-bold">이름</label> 
				<input type = "text" name = "mem_nm" id = " " required ><br>
				
				<label for="ssn1" class="font-weight-bold">주민등록번호</label> 
				<input type ="text" name= "ssn1" minlength = 6 maxlength = 6 required> - 
				<input type ="text" name= "ssn2" minlength = 7 maxlength = 7 required><br>
				
				<label for="phone_num1" class="font-weight-bold">휴대폰번호</label>
				<input type = "text" name = "phone_num1" minlength = 2 maxlength = 3 required > 
				- <input type = "text" name = "phone_num2" minlength = 3 maxlength = 4 required > 
				- <input type = "text" name = "phone_num3" minlength = 3 maxlength = 4 required><br>
				<div>
					<button type = "button" id = "checkButton" class = "float-right">본인확인</button>
				</div>
			</form>
			
			<form action = "open_account2" method = "post" >
				<h3 class="font-weight-bold">약관동의</h3>
				<fieldset id = "check_user">
					<strong>개인(신용)정보 수집-이용에 동의</strong>
					<p>
						본인은 귀사가 「개인정보보호법」 및 「신용정보의 이용 및 보호에 관한 법률」 에 따라 본인의 개인(신용)정보를 다음과 같이 수집·이용하는 것에 동의합니다
						개인(신용)정보 수집·이용 목적 : 비대면 계좌개설 신청여부 확인
						수집·이용할 개인(신용)정보의 내용 : 주민등록번호
						개인(신용)정보의 보유·이용기간 : 신청일로부터 30일 이내
						※ 상기 동의를 거부하실 경우 비대면 계좌개설이 불가합니다.
					</p>
				</fieldset>
				<div class = "float-right">
					<input type="radio" class="option1" id = "option1" name="check" value="yes">
		  			<label for="option1" >동의</label>
		  			<input type="radio" class="option2" id = "option2" name="check" value="no">
		  			<label for="option2">비동의</label>
		  			<br>
					<input type = "submit" id = "submitButton" class="btn btn-warning" value = "다음">
				</div>
			</form>	
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</body>
</html>