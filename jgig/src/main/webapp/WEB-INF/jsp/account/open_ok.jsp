<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌개설</title>
		<style>
			table, tr, th, td{
				border: 1px solid black
				border-collapse : seperate
			}
			 .button-like-link {
		            display: inline-block;
		            padding: 3px 10px;
		            background-color: #FED671;
		            color: black;
		            text-decoration: none;
		            border: 1px solid black;
		            cursor: pointer;
		            border-radius: 5px;
		            font-weight: bold;
		        }
		
		        /* 버튼에 호버 효과 추가 */
		      .button-like-link:hover {
		            background-color: #E5CC7C;
		      }
		</style>
	</head>
	<body>
		<table>
			<tr>
				<td>상품명</td>
				<td>${dto.act_name}</td>
			</tr>
			<tr>
				<td>계좌번호</td>		
				<td>${account_num}</td>
			</tr>
			<tr>
			<% 
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyy-MM-dd/hh-mm");
				String strdate = simpleDate.format(date);
			%>
				<td>발급일시</td>
				<td><%=strdate%></td>
			</tr>
		</table>
		<strong>${msg}</strong>
		<a href = "open_form1" class ="button-like-link">계좌개설</a>
	</body>
</html>