<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>포인트 전환</title>
    <style>
        /* 스타일을 추가하여 모달 팝업을 숨깁니다. */
        #myModal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
    </style>
</head>
<body>

    <h1>포인트 전환</h1>

    <form action="/jgig/point_transform" method="post"> <!-- POST 요청으로 변경 -->
        <p>현재 보유 포인트: ${totalPoint}P</p> <!-- 현재 보유 포인트 출력 -->
        <label for="insertPoint">전환할 포인트:</label>
        <input type="number" id="insertPoint" name="insertPoint" required>
        <p>잔여 포인트: <span id="remainingPoint">0</span>P</p> <!-- 잔여 포인트 출력 -->
        <button type="submit" onclick="showModal()">포인트 전환</button>
    </form>

   

    <!-- 알림 메시지 상자 -->
    <div id="alertBox"></div>
    <!-- 모달 팝업 -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <p>전환이 완료되었습니다.</p>
        </div>
    </div>
    <!-- 모달 팝업 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <!-- 모달 메시지 표시를 위한 div 요소 추가 -->
        <div id="modalMessage"></div>
    </div>
</div>
    

 
<script>
    // 입력한 전환 포인트에 따라 잔여 포인트를 계산하고 표시하는 함수
    document.getElementById('insertPoint').addEventListener('input', function() {
        const insertPoint = parseInt(this.value);
        const totalPoint = ${totalPoint}; // 현재 보유 포인트

        if (!isNaN(insertPoint)) {
            const remainingPoint = totalPoint - insertPoint;
            document.getElementById('remainingPoint').textContent = remainingPoint;

            // 잔여 포인트가 음수일 때 알림 메시지 표시
            if (remainingPoint < 0) {
                document.getElementById('alertBox').textContent = '잔여 포인트가 부족합니다.';
                document.getElementById('alertBox').style.display = 'block';
            } else {
                // 잔여 포인트가 음수가 아닌 경우 메시지 숨김
                document.getElementById('alertBox').style.display = 'none';
            }

            // 보유 포인트가 1000 미만인 경우 알림 메시지 표시
            if (totalPoint < 1000) {
                document.getElementById('alertBox').textContent = '보유하고 계신 포인트가 1000 미만이라서 전환이 불가능합니다.';
                document.getElementById('alertBox').style.display = 'block';
            } else {
                // 보유 포인트가 1000 이상일 때 메시지 숨김
                document.getElementById('alertBox').style.display = 'none';
            }
        }
    });

    // 포인트 전환 버튼을 클릭할 때 모달 팝업을 열고 메시지를 설정하는 함수
    function showModal() {
        const insertPoint = parseInt(document.getElementById('insertPoint').value);
        const totalPoint = ${totalPoint}; // 현재 보유 포인트

        if (!isNaN(insertPoint)) {
            const remainingPoint = totalPoint - insertPoint;

            if (remainingPoint < 0) {
                document.getElementById('modalMessage').textContent = '잔여 포인트가 부족합니다.';
            } else {
                document.getElementById('modalMessage').textContent = '전환이 완료되었습니다.';
            }

            const modal = document.getElementById('myModal');
            modal.style.display = 'block';
        }
    }

    // 모달 팝업을 닫는 함수
    function closeModal() {
        const modal = document.getElementById('myModal');
        modal.style.display = 'none';
    }
</script>



</body>
