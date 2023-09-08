<!-- point_list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>포인트 내역</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h1>나의 포인트</h1>
    
    <h2>포인트 내역</h2>
    <!-- 총 포인트 표시 -->
    <h3>${mem_nm}님의 포인트</h3> <!-- 회원 이름 표시 -->
    <h3>보유 포인트: ${totalPoint}P</h3>
    
    <!-- 필터 버튼 -->
    <div>
        <button onclick="loadData('all')">전체 내역</button>
        <button onclick="loadData('earn')">획득 내역</button>
        <button onclick="loadData('spend')">사용 내역</button>
    </div>
    
    <!-- 포인트 내역 테이블 -->
    <div id="pointTableBody">
        <!-- 데이터는 JavaScript로 추가될 것입니다. -->
     </div>
    
    <!-- 총 포인트 표시 -->
    <p>보유 포인트: ${totalPoint}P</p>
    
    <script>
        function loadData(filter) {
        	var pdata = { filter: filter };
            $.ajax({
                type: 'POST', // POST 방식으로 변경
                url: '/jgig/point_list',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify(pdata), // 필터 데이터를 POST로 전달
                success: function(data) {
                    // 포인트 테이블의 tbody를 가져와서 데이터를 삽입합니다.
                    $('#pointTableBody').html(data);
                },
                error: function(error) {
                    console.error('데이터 로드 중 오류 발생:', error);
                }
            });
        }
        
        // 페이지 로딩 시 기본적으로 전체 내역을 로드합니다.
        loadData('all');
    </script>
</body>
</html>
