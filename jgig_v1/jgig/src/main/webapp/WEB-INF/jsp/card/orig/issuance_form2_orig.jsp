<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 발급</title>
 
</head>
<body>
	<h1>카드 발급 입력 폼2</h1>
	<br>
	

	<div class="content">
		<h2>카드 발급</h2>
		<form action="card_issuance_action" method="post" onsubmit="return validateForm();">

			<h3>기본 정보</h3>
			영문이름 <input type="text" id="en_name"> <br> 
			이메일 <input type="text" id="email1">@<input type="text" id="email2"> <br> 
			주소 <input type="text" id="address"> <br> 
			
			<h3>결제 정보</h3>
			결제계좌은행 <select name="pay_bank">
				<option value="국민은행">국민은행</option>
				<option value="카카오뱅크">카카오뱅크</option>
				<option value="기업은행">기업은행</option>
				<option value="농협은행">농협은행</option>
				<option value="신한은행">신한은행</option>
				<option value="산업은행">산업은행</option>
				<option value="우리은행">우리은행</option>
				<option value="한국씨티은행">한국씨티은행</option>
				<option value="하나은행">하나은행</option>
				<option value="우체국">우체국</option>
				<option value="토스뱅크">토스뱅크</option>
			</select> <br> 
			
			 계좌번호 <input type="number" name="pay_account" >
        <br>
			
			 카드 비밀번호 <input type="password" id="password" name="cd_pw" maxlength="4" oninput="checkPassword()">
        <br>
        카드 비밀번호 확인 <input type="password" id="confirmPassword" maxlength="4" oninput="checkPassword()">
        <p id="pw_message"></p> <br> 

    <script>
        function checkPassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var message = document.getElementById("pw_message");

            if (password.length !== 4 || confirmPassword.length !== 4) {
                message.innerHTML = "비밀번호는 4글자로 입력해야 합니다.";
            } else if (password !== confirmPassword) {
                message.innerHTML = "비밀번호가 일치하지 않습니다.";
            } else {
                message.innerHTML = "";
            }
        }
        </script>
			결제일 매월 <input type="number" name="pay_date">일 <br> 
			
			<p id="form_msg"></p>
			<button type="submit">발급</button>
		
		</form>
		
		<script>
        function validateForm() {
            var en_name = document.getElementById("en_name").value;
            var email1 = document.getElementById("email1").value;
            var email2 = document.getElementById("email2").value;
            var address = document.getElementById("address").value;
            var account=document.querySelector('input[name="pay_account"]').value;
            var pw=document.getElementById("password").value;
            var pw_confirm=document.getElementById("confirmPassword").value;
            var date=document.querySelector('input[name="pay_date"]').value;
            var msg= document.getElementById("form_msg");
            
            if(en_name===''||email1===''||email2===''||address===''||account===''||pw===''||pw_confirm===''||date===''){
            	msg.innerHTML = "입력하지 않은 정보가 있습니다.";
            	return false;
            }

      

            return true; // Allow form submission
        }
    </script>
		
	</div>





</body>
</html>