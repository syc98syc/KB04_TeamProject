<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>회원 탈퇴</title>
</head>
<body>
    <form action="/jgig/member_delete" method ="post">

    <h2>회원 탈퇴</h2>
   
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
				<th>전화번호</th>
				<td>${memberDto.phone_num}</td>
			</tr>
			<tr>
				<th>주민등록번호</th>
				<td>${memberDto.ssn}</td>
			</tr>
		</table>
    
    <!-- 회원 탈퇴 양식 -->
     <!-- 에러 메시지 -->
        <p style="color: red;"><%= session.getAttribute("error") %></p>
        <% session.removeAttribute("error"); %>
    <p>
        비밀번호 확인<br> <input type="password" name="mem_pw" placeholder="비밀번호를 입력하세요" required />
    </p>

    <p>정말로 회원 탈퇴를 진행하시겠습니까? <br>
    계정 삭제 시 복구할 수 없습니다.</p>

    <input type="submit" value= "탈퇴">
</form>