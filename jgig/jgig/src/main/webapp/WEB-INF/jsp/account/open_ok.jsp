<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌개설</title>
		<style>
			table{
				border-collapse: collapse;
				
			}
			.no-left-right-border{
				border-left: none;
			}
			.bgc{
				background-color: #DEDEDE;
			}
			tr, th, td{
				border: 1px solid black
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
			<tr class="no-left-right-border">
				<td class = "bgc">상품명</td>
				<td>${dto.act_name}</td>
			</tr>
			<tr>
				<td class = "bgc">계좌번호</td>		
				<td>${account_num}</td>
			</tr>
			<tr>
			<% 
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyy-MM-dd/hh-mm");
				String strdate = simpleDate.format(date);
			%>
				<td class = "bgc">발급일시</td>
				<td><%=strdate%></td>
			</tr>
		</table>
		<strong>${msg}</strong><br>
		<a href = "open_account1" class ="button-like-link">계좌개설</a>
	</body>
</html>