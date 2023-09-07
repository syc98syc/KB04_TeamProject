<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>지금입금</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="/assets/img/apple-touch-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="/assets/img/favicon.ico">

<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/templatemo.css">
<link rel="stylesheet" href="/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="/assets/css/fontawesome.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
<%-- errorMessage 세션 속성이 존재할 때만 alert 창을 띄우도록 코드 작성 --%>
<c:if test="${not empty sessionScope.errorMessage_issu}">
	<script>
        alert("${sessionScope.errorMessage_issu}"); // errorMessage를 alert 창에 표시
    </script>
</c:if>
<c:if test="${not empty sessionScope.errorMessage_agree}">
	<script>
        alert("${sessionScope.errorMessage_agree}"); // errorMessage를 alert 창에 표시
    </script>
</c:if>


</head>

<body>

	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow navcolor">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="/jgig/"> <img src="/assets/img/KB-logo.png" width="30"
				height="30" alt=""> <img src="/assets/img/jgig-icon.png"
				height="45" alt="">
			</a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- 화면 작아질시 토글바 -->

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item dropdown"><a class="nav-link " href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 금융거래연습 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/open_account1">계좌
										개설</a></li>
								<li><a class="dropdown-item" href="/jgig/account_list">계좌
										조회 및 이체</a></li>
								<li><a class="dropdown-item" href="/jgig/trans_history">거래
										내역 조회</a></li>
								<hr>
								<li><a class="dropdown-item" href="/jgig/card_issuance">카드
										발급</a></li>
								<li><a class="dropdown-item" href="/jgig/card_list">카드
										조회 및 관리</a></li>
								<hr>
								<li><a class="dropdown-item" href="/jgig/certification">인증서
										발급</a></li>

							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 금융교육 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/searchWord">금융
										용어 검색</a></li>
								<li><a class="dropdown-item" href="#">금융 상식 퀴즈</a></li>
								<hr>
								<li><a class="dropdown-item" href="#">이용 가이드</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 커뮤니티 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">공지사항</a></li>
								<li><a class="dropdown-item" href="/jgig/board_list">게시판</a></li>
								<li><a class="dropdown-item" href="#">내가 쓴 글</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 지점찾기 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/findStore">지점찾기
										및 번호표 발행</a></li>
								<li><a class="dropdown-item" href="/jgig/detailWaiting">번호표
										조회 및 취소</a></li>

							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 마이포인트 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">포인트 조회</a></li>
								<li><a class="dropdown-item" href="#">포인트 전환</a></li>
							</ul></li>


					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>


					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">

						<c:if test="${not empty sessionScope.mem_id}">
							<li class="nav-item dropdown">
								<%-- 로그인 했을 때 --%> <a
								class="nav-icon position-relative text-decoration-none nav-link"
								href="/jgig/member_detail" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i
									class="fa fa-fw fa-user text-dark mr-3"></i>
									${sessionScope.mem_nm}님 <!--session값으로 받아오기 -->
							</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="/jgig/member_detail">마이페이지</a></li>


								</ul>
							</li>
							<li class="nav-item"><a class="nav-link" href="/jgig/logout">로그아웃</a>
							</li>
						</c:if>

						<%-- 로그인 안했을 때 --%>
						<c:if test="${empty sessionScope.mem_id}">
							<li class="nav-item"><a class="nav-link" href="/jgig/login">로그인</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="/jgig/register">회원가입</a></li>
						</c:if>




					</ul>


				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>



	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">

			<div class="col-lg-2">
				<div class="sidemenubox">
					<h2 class="h3 pt-3 ">금융거래연습</h2>
					<hr>
					<ul class="list-unstyled ">
						<li><a
							class="collapsed d-flex justify-content-between text-decoration-none"
							href="#"> <!--선택된 메뉴는 selectsidemenu 클래스 추가 --> 계좌 개설
						</a></li>
						<li><a
							class="collapsed d-flex justify-content-between  text-decoration-none"
							href="#"> 계좌 조회 및 이체 </a></li>
						<li><a
							class="collapsed d-flex justify-content-between  text-decoration-none"
							href="#"> 거래 내역 조회 </a></li>
						<hr>
						<li><a
							class="collapsed d-flex justify-content-between text-decoration-none selectsidemenu "
							href="/jgig/card_issuance"> 카드발급 </a></li>
						<li><a
							class="collapsed d-flex justify-content-between text-decoration-none "
							href="/jgig/card_list"> 카드 조회 및 관리 </a></li>
						<hr>


						<li><a
							class="collapsed d-flex justify-content-between  text-decoration-none"
							href="#"> 인증서 발급 </a></li>


					</ul>
				</div>
			</div>

			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pt-5 pl-3">
							<h2>카드 발급</h2>
						</ul>
					</div>

				</div>
				<div class="row">
					<div id="service-content">
						<!-- 여기에 넣으시며 됩니당 -->

						<form action="card_issuance_form2" method="post"
							onsubmit="return validateForm();">

							<div class="subcontent">
							
							<table id="issu_info_table">

									<colgroup>
										<col style="width: 184px">
										<col style="width: *">
									</colgroup>
									<tbody>

										<tr>
											<th scope="row"><label for="cd_item">카드 상품명</label></th>
											<td>
											<select name="cd_item">
									<option value="노리2 체크카드">노리2 체크카드</option>
									<option value="알뜰교통플러스 체크카드">알뜰교통플러스 체크카드</option>
									<option value="톡톡M 체크카드">톡톡M 체크카드</option>
									<option value="마이핏카드">마이핏카드</option>
								</select>
								</td>
										</tr>
										</tbody>
										</table>
								
							</div>


							<div class="subcontent">
								<h3 class="h3-subtitle">신청인 정보</h3>
								<div class="subcontent card-info">




								<table id="issu_info_table">

									<colgroup>
										<col style="width: 184px">
										<col style="width: *">
									</colgroup>
									<tbody>

										<tr>
											<th scope="row"><label for="성명">이름</label></th>
											<td><input type="text" name="cd_name" class="border-bt"
												placeholder="이름 입력"></td>
										</tr>
											<tr>
												<th scope="row"><label for="주민등록번호1">주민등록번호</label></th>
												<td><input type="text" name="cd_ssn_1"
													class="border-bt" placeholder="앞 6자리" maxlength="6">
													- <input type="text" name="cd_ssn_2" class="border-bt"
													placeholder="뒤 7자리" maxlength="7"> <br> <input
													type="hidden" name="cd_ssn" id="cd_ssn"></td>	
											</tr>
			<!-- JavaScript를 사용하여 두 입력 값을 결합하여 cd_ssn 필드에 설정 -->
			<script>
                    // 두 입력 필드의 값을 가져와 결합하여 설정
                    var ssn1 = document.querySelector('input[name="cd_ssn_1"]');
                    var ssn2 = document.querySelector('input[name="cd_ssn_2"]');
                    var cdSsn = document.getElementById('cd_ssn');

                    ssn1.addEventListener('input', updateSsn);
                    ssn2.addEventListener('input', updateSsn);

                    function updateSsn() {
                        cdSsn.value = ssn1.value + '-' + ssn2.value;
                    }
                </script>
											
											<tr>
												<th scope="row"><label for="call_hp1">휴대폰번호</label></th>
												<td><input type="text" name="tel1" class="border-bt"
													maxlength="3"> - <input type="text" name="tel2"
													class="border-bt" maxlength="4"> - <input
													type="text" name="tel3" class="border-bt" maxlength="4">
													<input type="hidden" name="cd_phone" id="cd_phone"></td>
			  <script>
       
                    var tel1 = document.querySelector('input[name="tel1"]');
                    var tel2 = document.querySelector('input[name="tel2"]');
                    var tel3 = document.querySelector('input[name="tel3"]');
                    var cdTel = document.getElementById('cd_phone');

                    tel1.addEventListener('input', updateTel);
                    tel2.addEventListener('input', updateTel);
                    tel3.addEventListener('input', updateTel);

                    function updateTel() {
                        cdTel.value = tel1.value + tel2.value + tel3.value;
                    }
                </script>
											</tr>
										</tbody>
								</table>
								</div>
							</div>
		<div class="subcontent">
							<h3 class="h3-subtitle">약관동의</h3>
							
							<div class="subcontent">
								<div class="terms-container">
								<p>귀하는 개인신용정보 수집·이용·조회 및 제공 동의에 대해 거부하실 수 있습니다. 다만, 개인(신용)정보 수집·이용·조회 및 제공에 관한 동의는 KB국민카드(KB국민비씨카드의 경우 비씨카드㈜ 포함. 이하 같습니다.)와의 상거래 관계의 설정, 유지에 필수적이거나 상거래 관계에 따라 귀하에게 제공되는 서비스와 직접적으로 관련된 필수적 사항이므로 아래의 사항에 동의하셔야만 거래관계의 설정 및 유지가 가능합니다.

■ 수집·이용에 관한 사항

▶ 수집·이용 목적

- 카드(신청 상품) 또는 가맹점 계약의 체결·유지·이행·관리·개선, 신청 상품 서비스 또는 가맹점 서비스 제공, 법령상 의무이행, 신용질서 문란행위 조사, 분쟁처리, 전화상담 업무, 민원처리, 본인여부 확인, 신분증 진위확인
▶ 보유 및 이용기간

- 거래 종료일로부터 5년
(단, 다른 관련 법령에 해당되는 경우 해당 법령상의 보존기간을 따름)
* 민감정보는 처리 목적 달성 후 즉시 파기
* 위의 거래 종료일이란 “회원 탈회, 가맹점 해지 또는 채권ㆍ채무 관계가 소멸된 날”을 말한다
■ 수집·이용 항목

▶ 고유식별정보

- 주민등록번호, 운전면허번호, 여권번호, 외국인등록번호
위 고유식별정보 수집·이용에 동의하십니까?

동의하지 않음 동의함

▶ 민감정보

- 신분증 사진 특징점 평가점수
위 민감정보 수집·이용에 동의하십니까?

동의하지 않음 동의함

▶ 개인(신용)정보

- 일반개인정보 : 성명, 영문명, 연락처(휴대폰, 자택, 직장), 주소(자택, 직장), 이메일, 직장명, 부서, 직위, 성별, 국적, 음성data, CI값, 가족정보, OTP일련번호
※ 가족정보, OTP일련번호의 경우 가족카드 또는 OTP기능 탑재카드 발급 신청고객에 한함
- 신용거래정보 : 여신성거래정보, 보험거래정보, 금융투자상품정보, 그 외 금융거래정보, 상거래정보
- 신용도판단정보 : 신용질서 문란정보, 연체정보
- 신용능력정보 : 직업정보, 소득정보, 재산정보, 채무정보, 납세실적 정보
- 공공정보 : 인적정보, 체납정보, 채무조정정보, 개인신용평점, 공적장부 정보, 공공요금 납부정보, 주민등록 관련 정보
위 개인(신용)정보 수집·이용에 동의하십니까?</p>
</div>
								<div id="terms-radio">
								<input type="radio" name="agreement1" value="동의"> 동의 
								<input
									type="radio" name="agreement1" value="비동의"> 비동의
									</div>
							</div>

							</div>
							
							<div class="btn-div">
							<p id="form_msg"></p>
							<button type="submit" class="card-sumit-btn">확인</button>
							</div>

						</form>

			<script>
			// 폼이 제출될 때 실행되는 함수
			function validateForm() {
				var agreement1 = document
						.querySelectorAll('input[name="agreement1"]:checked');

				if (agreement1.length === 0) {
					var formMsg = document.getElementById("form_msg");
					formMsg.innerHTML = "약관에 동의해야 합니다.";
					return false; 
				}


				return true; 
			}
		</script>


					</div>

				</div>


			</div>

		</div>
	</div>
	<!-- End Content -->



	<!-- Start Footer -->
	<footer class="footer-cust" id="tempaltemo_footer">


		<div class="w-100 footer-cust py-2">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">Copyright &copy; 2023 KB IT's
							Your Life , Ditto</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script src="/assets/js/jquery-1.11.0.min.js"></script>
	<script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/templatemo.js"></script>
	<script src="/assets/js/custom.js"></script>
	<!-- End Script -->
</body>

</html>