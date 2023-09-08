<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>
     <script>
        function checkPassword() {
            var password = document.getElementById("mem_pw").value;
            var confirmPassword = document.getElementById("mem_pw_check").value;
            
            if (password !== confirmPassword) {
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>회원가입</h2>
    <form action="/jgig/register" method="post">
        <div>
            <input type="text" name="mem_nm" placeholder="이름을 입력해주세요"/>
        </div>
        <div>
            <input type="text" name="ssn" placeholder="주민등록번호를 입력해주세요"/>
        </div>
        <div>
            <input type="text" name="phone_num" placeholder="전화번호를 입력해주세요"/>
        </div>
        <div>
            <input type="text" name="nickname" placeholder="닉네임을 입력해주세요"/>
        </div>
        <div>
            <input type="text" name="mem_id" placeholder="아이디를 입력해주세요"/>
        </div>
         <div>
            <input type="password" name="mem_pw" id="mem_pw" placeholder="비밀번호를 입력해주세요" required/>
        </div>
        <div>
            <input type="password" name="mem_pw_check" id="mem_pw_check" placeholder="비밀번호를 한번 더 입력해주세요" required/>
        </div>
        <br>
        
        <button type="submit">회원가입</button>
    </form>
</body>
</html>