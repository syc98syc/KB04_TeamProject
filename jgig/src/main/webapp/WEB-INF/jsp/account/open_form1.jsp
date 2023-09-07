<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌개설</title>
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
			                    $("#msg").text()
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
	</head>
	<body>
		<h1>계좌개설</h1>
		<fieldset>
			<form id = "memberCheckForm" action="member_check" method = "post">
				상품명 
				<select name = "act_name">
					<option value ="계좌상품1">계좌상품1</option>
					<option value ="계좌상품2">계좌상품2</option>
					<option value ="계좌상품3">계좌상품3</option>
					<option value ="계좌상품4">계좌상품4</option>
				</select>
				
				<h2>본인인증</h2>
				이름  <input type = "text" name = "mem_nm" required><br>
				주민등록번호 <input type ="text" name= "ssn1" minlength = 6 maxlength = 6 required> - 
				<input type ="text" name= "ssn2" minlength = 7 maxlength = 7 required><br>
				휴대폰번호 <input type = "text" name = "phone_num1" minlength = 2 maxlength = 3 required > 
				- <input type = "text" name = "phone_num2" minlength = 3 maxlength = 4 required > 
				- <input type = "text" name = "phone_num3" minlength = 3 maxlength = 4 required><br>
				
				<button type = "button" id = "checkButton">본인확인</button>
				<p id = "msg"></p>
			</form>
			
			<form action = "open_form2" method = "post">
				<h2>약관동의</h2>
				<fieldset>
					<p>약관동의!</p>
				</fieldset>
				<input type="radio" class="option1"  id = "option1" name="check" value="yes">
	  			<label for="option1">동의</label>
	  			<input type="radio" class="option2" id = "option2" name="check" value="no">
	  			<label for="option2">비동의</label>
	  			<br>
	  			
				<input type = "submit" id = "submitButton" value = "다음">
			</form>	
		</fieldset>
	</body>
</html>