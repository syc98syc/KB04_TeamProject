<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="detailYn" value="${detailYn == 'N' ? 'N' : 'Y'}" />
	<h1>번호표 조회 및 취소</h1>
	메시지: ${msg }
	<c:if test="${detailYn eq 'Y'}">
		<div class="waiting_wrap">
			<hr>
			<h3>대기번호</h3>
			<h2>${dto.wt_no}</h2>
			<p>${dto.wt_store}</p>
			<hr>
			<table>
				<tr>
					<td>대기고객</td>
					<td>${dto.wt_list }명</td>
				</tr>
				<tr>
					<td>발행시간</td>
					<td id="wtDate"></td>
				</tr>
			</table>
			<button onclick="waitingCancleHandler('${dto.wt_seq}')">번호표 취소</button>
		</div>
	</c:if>
	<c:if test="${detailYn eq 'N'}">
		<div class="waiting_wrap">
			<hr>
	    	<h2>발행받은 번호표가 없습니다.</h2>
			<hr>
	    </div>
	</c:if>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
//번호표 취소 이벤트 
function waitingCancleHandler(seq){
	console.log(seq);
	console.log(seq.toString());
 	const wt_data = {wt_seq : seq.toString()};
	let options = {
		type: "post",
		url : "/jgig/updateWaiting",
		data: JSON.stringify(wt_data),
		contentType: 'application/json; charset=utf-8',
		success : function() {
			console.log("삭제 성공");
			// location.reload();
			// 삭제 성공 div 
			var waitingWrap = document.querySelector(".waiting_wrap");
			waitingWrap.innerHTML = "";
			var el = document.createElement('div');
			var content = `<hr><h2>발행받은 번호표가 없습니다.</h2><hr>`;
			el.innerHTML = content;
			waitingWrap.append(el);
		},
		error: function(jqXHR, textStatus, errorThrown) {
		    console.error("AJAX 오류 발생: " + textStatus, errorThrown);
		}
	}
	$.ajax(options);
}

function dateFormating(originalDateString) {
	// 날짜 형식을 변환하기 위한 매핑
    const monthNames = [
        "Jan", "Feb", "Mar", "Apr", "May", "Jun",
        "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ];

    // 입력된 문자열을 공백으로 분할
    const parts = originalDateString.split(' ');
    
    // 날짜 정보 추출
    const month = monthNames.indexOf(parts[1]) + 1; // 월은 0부터 시작하므로 +1
    const day = parts[2];

    // 시간 정보 추출
    const timeParts = parts[3].split(':');
   
    const hours = timeParts[0];
    const minutes = timeParts[1];
    const seconds = timeParts[2];

    // 형식화된 문자열 생성
    const formattedDate = `\${month}/\${day} \${hours}시 \${minutes}분 \${seconds}초`;
    return formattedDate;
}
//console.log("${dto.wt_date}");
if("${dto.wt_date}"){
	document.querySelector("#wtDate").innerHTML = dateFormating("${dto.wt_date}");
}
</script>
</body>
</html>