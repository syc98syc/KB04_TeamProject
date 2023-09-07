<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 관리</title>

<%-- errorMessage 세션 속성이 존재할 때만 alert 창을 띄우도록 코드 작성 --%>
<c:if test="${not empty sessionScope.errorMessage_status}">
    <script>
        alert("${sessionScope.errorMessage_status}"); // errorMessage를 alert 창에 표시
    </script>
</c:if>


</head>
<body>
<h1>카드 분실신고/취소</h1>

<h2>카드정보</h2>

<table>

		<tr>
			<th>카드 상품명</th>
			<td>${cardDto.cd_item}</td>
		</tr>

		<tr>
			<th>카드번호</th>
			<td>${cardDto.cd_num}</td>
		</tr>
		
		<tr>
			<th>카드상태</th>
			<td>${cardDto.cd_status}</td>
		</tr>
		
	</table>
	
	<form action=card_status_action method="post">
	<h3>본인인증</h3>


			
				이름 <input type="text" name="cd_name"><br>
				
			주민번호 <input type="text" name="cd_ssn_1">-<input type="text" name="cd_ssn_2"> <br> 
				<input type="hidden"name="cd_ssn" id="cd_ssn"> <br>
			
			

			<!-- JavaScript를 사용하여 두 입력 값을 결합하여 cd_ssn 필드에 설정 -->
			<script>
                    // 두 입력 필드의 값을 가져와 결합하여 설정
                    var ssn1 = document.querySelector('input[name="cd_ssn_1"]');
                    var ssn2 = document.querySelector('input[name="cd_ssn_2"]');
                    var cdSsn = document.getElementById('cd_ssn');

                    ssn1.addEventListener('input', updateSsn);
                    ssn2.addEventListener('input', updateSsn);

                    function updateSsn() {
                        cdSsn.value = ssn1.value + '-' + ssn2.value;
                    }
                </script>

			휴대폰번호 <input type="text" name="tel1">-<input type="tel"
				name="tel2">-<input type="tel" name="tel3"> <input
				type="hidden" name="cd_phone" id="cd_phone"> <br>
		
			<script>
       
                    var tel1 = document.querySelector('input[name="tel1"]');
                    var tel2 = document.querySelector('input[name="tel2"]');
                    var tel3 = document.querySelector('input[name="tel3"]');
                    var cdTel = document.getElementById('cd_phone');

                    tel1.addEventListener('input', updateTel);
                    tel2.addEventListener('input', updateTel);
                    tel3.addEventListener('input', updateTel);

                    function updateTel() {
                        cdTel.value = tel1.value + tel2.value + tel3.value;
                    }
                </script>
                
             카드비밀번호  <input type="password" id="password" name="cd_pw" maxlength="4"><br>
             
             <button type="submit">확인</button>
	
	</form>
	

</body>
</html>