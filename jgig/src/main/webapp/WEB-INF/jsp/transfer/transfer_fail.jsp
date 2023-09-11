<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌 조회 및 이체</title>
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
		
		      .button-like-link:hover {
		            background-color: #E5CC7C;
		      }
		</style>
	</head>
	<body>
		<h2>계좌이체</h2>
		<p>${msg}</p>
		<br>
		<a href = "account_list" class ="button-like-link">계좌조회 및 이체</a>
	</body>
</html>