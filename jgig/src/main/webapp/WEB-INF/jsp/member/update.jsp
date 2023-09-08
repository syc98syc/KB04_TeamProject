<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
</head>
<body>
    <h2>회원 정보 수정</h2>
    <form action="/jgig/member_update" method="post">
        <p>
            이름(실명)<br> <input type="text" name="mem_nm"
                value="${memberDto.mem_nm}" />
        </p>
        <p>
            아이디<br> <input type="text" name="mem_id"
                value="${memberDto.mem_id}" readonly />
        </p>
        <p>
            닉네임<br> <input type="text" name="nickname"
                value="${memberDto.nickname}" />
        </p>
        <p>
            전화번호<br> <input type="text" name="phone_num"
                value="${memberDto.phone_num}" />
        </p>
        <p>
            주민등록번호<br> <input type="text" name="ssn"
                value="${memberDto.ssn}"  readonly/>
        </p>
        <p>
            비밀번호<br> <input type="text" name="mem_pw"
                value="${memberDto.mem_pw}" />
        </p>
        <br>
        <input type="hidden" name="mem_id"
            value="${memberDto.mem_id}">
        <button type="submit">저장하기</button>
    </form>
</body>
</html>
