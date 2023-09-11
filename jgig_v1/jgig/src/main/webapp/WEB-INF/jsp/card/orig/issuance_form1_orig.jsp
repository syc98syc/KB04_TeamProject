<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카드 발급</title>

    <!-- errorMessage 세션 속성이 존재할 때만 alert 창을 띄우도록 코드 작성 -->
    <c:if test="${not empty sessionScope.errorMessage_issu}">
        <script>
            alert("${sessionScope.errorMessage}"); // errorMessage를 alert 창에 표시
        </script>
    </c:if>

    <!-- errorMessage 세션 삭제 -->
    <c:remove var="errorMessage" scope="session" />
</head>
<body>
    <h1>카드 발급 입력 폼1</h1>
    <br>

    <div class="content">
        <h2>카드 발급</h2>
        <form action="card_issuance_form2" method="post" onsubmit="return validateForm();">
            <label for="cd_item">카드상품명</label>
            <select name="cd_item" id="cd_item">
                <option value="노리2 체크카드">노리2 체크카드</option>
                <option value="알뜰교통플러스 체크카드">알뜰교통플러스 체크카드</option>
                <option value="톡톡M 체크카드">톡톡M 체크카드</option>
                <option value="마이핏카드">마이핏카드</option>
            </select>

            <h3>신청인 정보</h3>
            <label for="cd_name">이름</label>
            <input type="text" name="cd_name" id="cd_name"><br>

            <label for="cd_ssn_1">주민번호</label>
            <input type="text" name="cd_ssn_1" id="cd_ssn_1"> -
            <input type="text" name="cd_ssn_2" id="cd_ssn_2"> <br>
            <input type="hidden" name="cd_ssn" id="cd_ssn"> <br>

            <!-- JavaScript를 사용하여 두 입력 값을 결합하여 cd_ssn 필드에 설정 -->
            <script>
                var ssn1 = document.getElementById('cd_ssn_1');
                var ssn2 = document.getElementById('cd_ssn_2');
                var cdSsn = document.getElementById('cd_ssn');

                ssn1.addEventListener('input', updateSsn);
                ssn2.addEventListener('input', updateSsn);

                function updateSsn() {
                    cdSsn.value = ssn1.value + '-' + ssn2.value;
                }
            </script>

            <label for="tel1">휴대폰번호</label>
            <input type="text" name="tel1" id="tel1"> -
            <input type="tel" name="tel2" id="tel2"> -
            <input type="tel" name="tel3" id="tel3"> <br>
            <input type="hidden" name="cd_phone" id="cd_phone"> <br>

            <script>
                var tel1 = document.getElementById('tel1');
                var tel2 = document.getElementById('tel2');
                var tel3 = document.getElementById('tel3');
                var cdTel = document.getElementById('cd_phone');

                tel1.addEventListener('input', updateTel);
                tel2.addEventListener('input', updateTel);
                tel3.addEventListener('input', updateTel);

                function updateTel() {
                    cdTel.value = tel1.value + tel2.value + tel3.value;
                }
            </script>

            <h2>약관 동의</h2>
            <div>
                <h3>약관 1</h3>
                <p>약관 1 내용...</p>
                <label><input type="radio" name="agreement1" value="동의"> 동의</label>
                <label><input type="radio" name="agreement1" value="비동의"> 비동의</label>
            </div>

            <p id="form_msg"></p>
            <button type="submit">확인</button>
        </form>

        <script>
            // 폼이 제출될 때 실행되는 함수
            function validateForm() {
                var agreement1 = document.querySelectorAll('input[name="agreement1"]:checked');

                if (agreement1.length === 0) {
                    var formMsg = document.getElementById("form_msg");
                    formMsg.innerHTML = "약관에 동의해야 합니다.";
                    return false;
                }

                return true;
            }
        </script>
    </div>
</body>
</html>
