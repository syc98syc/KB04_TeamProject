<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
</head>
<body>
    <form action="/jgig/login" method="post">
    <h2>로그인</h2>
        <div>
            <input type="text" name="mem_id" placeholder="아이디를 입력해주세요"/>
        </div>
        <div>
            <input type="password" name="mem_pw" placeholder="비밀번호를 입력해주세요"/>
        </div>
        <br>

        <button type="submit">로그인</button>
        <button type="button" onclick="location.href='register'">회원가입</button>
    </form>
</body>
</html>