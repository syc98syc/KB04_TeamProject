<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보</title>
</head>
<body>
	<h2>계정관리</h2>
	<form action="/jgig/member_detail" method="post">

		<table>
			<tr>
				<th>아이디</th>
				<td>${memberDto.mem_id}</td>
			</tr>
			<tr>
				<th>이름(실명)</th>
				<td>${memberDto.mem_nm}</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${memberDto.nickname}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${memberDto.phone_num}</td>
			</tr>
			<tr>
				<th>주민등록번호</th>
				<td>${memberDto.ssn}</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>${memberDto.mem_pw}</td>
			</tr>

		</table>
	</form>
		<form action="member_update">
			<button type="submit">정보수정</button>
		</form>
		<form action="member_delete">
			<button type="submit">회원탈퇴</button>
		</form>
</body>
</html>