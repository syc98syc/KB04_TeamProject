<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>거래 내역 조회</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script>
		    $(function() {
		        var urlParams = new URLSearchParams(window.location.search);
		        var showTable = urlParams.get("showTable");
		
		        if (showTable === "true") {
		            $("#tableDiv").show();
		        } else {
		            $("#tableDiv").hide();
		        }
		        $("#datepicker-start").datepicker();
	            $("#datepicker-end").datepicker();
		    });
		    
		</script>
		<style>
		table, th, td {
			border: 1px solid black;
		}
		</style>
	</head>
	<body>
		<h1>거래 내역 조회</h1>
		<fieldset>
			<form action="trans_history_selected_action" method="post" id = "f1" >
				계좌 선택
				<span>${account}</span><br>
				<input type="hidden" name="account" value = "${account}">
				월별 조회 
				<select id="year" name="year" class="form-control">
					<c:forEach var="i" begin="15" end="25">
						<option value="${i}">20${i}</option>
					</c:forEach>
				</select> 
				<span>년</span>
				<select id="month" name="month" class="form-control">
					<c:forEach var="i" begin="1" end="12">
						<c:choose>
							<c:when test="${i lt 10 }">
								<option value="0${i}">0${i}</option>
							</c:when>
							<c:otherwise>
								<option value="${i}">${i}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
				<span>월</span>
				<input type="submit" value="월별조회">
			</form>
			
			<form action="trans_history_selected_action2" method="post">
				<input type="hidden" name="account" value = "${account}">
		        <label for="datepicker-start">조회 기간</label>
		        <input type="text" id="datepicker-start" name="startDate">
		        <label for="datepicker-end">~</label>
		        <input type="text" id="datepicker-end" name="endDate">
		        <input type="submit" value="조회">
		    </form>
		    
		</fieldset>
		<div id="tableDiv" style="display: none;">
			<h2>조회한 계좌번호 ${account}</h2>
		    <table>
		        <thead>
		            <tr>
		                <th>거래일시</th>
		                <th>보내는분</th>
		                <th>받는분</th>
		                <th>받은금액(원)</th>
		                <th>보낸금액(원)</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach items="${transferList}" var="transferDto">
		                <tr>
		                    <td>${transferDto.trans_date}</td>
		                    <td>${transferDto.send_nm}</td>
		                    <td>${transferDto.receive_nm}</td>
		                    <td>${transferDto.withdr_mon}</td>
		                    <td>${transferDto.depo_mon}</td>
		                </tr>
		            </c:forEach>
		        </tbody>
		    </table>
		</div>
	</body>
</html>