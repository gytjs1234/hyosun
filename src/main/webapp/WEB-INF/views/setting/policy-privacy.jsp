<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html lang="ko">
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="format-detection" content="telephone=no" />
		<meta name="description" content="라이브투어 :: 스마트한 라이브 여행">
		<meta name="keywords" content="라이브투어, Live Tour, 스마트 여행, 라이브 여행, 전국 여행, 여행 추천, 라이브 자연, 실시간 라이브 여행, 인기 여행, 추천 여행, 언텍트 힐링, 자연, 힐링, 관광명소, 음식, 숙박, 맞춤형 여행 정보">
		<title>라이브투어 :: 스마트한 라이브 여행</title>

		<!-- CSS -->
		<link href="${rootPath}/static/css/bootstrap.css" rel="stylesheet">
		<link href="${rootPath}/static/css/style.css" rel="stylesheet">

		<!-- Favicons -->
		<link rel="apple-touch-icon" href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${rootPath}/static/brand/favicon.png">

		<!-- Facebook -->
		<meta property="og:url" content="">
		<meta property="og:title" content="라이브투어">
		<meta property="og:description" content="스마트한 라이브 여행">
		<meta property="og:image" content="${rootPath}/static/brand/fishking-social.png">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1200">
		<meta property="og:image:height" content="630">
</head>

<body>
		<!-- Navigation -->
		<nav class="navbar fixed-top navbar-dark bg-primary">
			<a href="javascript:history.back();" class="nav-left"><img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기"/></a>
			<span class="navbar-title">개인정보처리방침</span>
		</nav>
		<!-- // Navigation -->
		<hr class="mt-0"/>

		<!-- 데이터 -->
		<div class="container nopadding mt-0">		
			<div class="padding policy">
						<p>주식회사 투비 (이하 '회사')는 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
개인정보처리방침은 이용자가 언제나 쉽게 열람 할 수 있도록 서비스 초기화면을 통해 공개하고 있으며, 개인정보 관련법령, 지침, 고시 또는 라이브투어 서비스 정책의 변경에 따라 달라질 수 있습니다.</p>
						<p class="clearfix"></p>		


						<h4>1. 개인정보의 수집·이용</h4>
						<p>회사는 다음과 같이 이용자의 개인정보를 수집합니다. 처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 활용되지 않으며, 수집·이용목적이 변경되는 경우에는 개인정보보호법에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.<br/>
						⑴ 수집하는 개인정보의 항목은 아래와 같습니다.</p>
						<p class="clearfix"></p>

						<table class="table table-bordered">
						<colgroup>
							<col style="width:10%">
							<col style="width:10%">
							<col style="width:20%">
							<col style="width:20%">
							<col style="width:20%">
							<col style="width:20%">
						</colgroup>
						<thead>
							<tr>
								<th>분류</th>
								<th>수집대상</th>
								<th>수집시기</th>
								<th>수집이용 목적</th>
								<th>수집이용 정보항목</th>
								<th>정보보유기간 및 파기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th rowspan="5">회원정보</th>
								<td rowspan="5" style="text-align:center">회원</td>
								<td rowspan="2">회원가입</td>
								<td>회원제 서비스 이용 및 상담관리 휴대전화번호 인증</td>
								<td>아이디(전자우편주소), 이름, 닉네임, 비밀번호, 휴대전화번호</td>
								<td rowspan="3">회원탈퇴 후 지체 없이 파기 (단 관련법령 및 회사 정책에 따라 별도 보관되는 정보는 예외)</td>
							</tr>
							<tr>
								<td>만 14세 미만의 이용자 연령확인</td>
								<td>생년월일</td>
							</tr>
							<tr>
								<td>카카오톡ID, 페이스북ID, 네이버ID를 이용한 회원가입</td>
								<td>회원제 서비스 이용 휴대전화번호 인증</td>
								<td>회원가입이름, 전자우편주소(선택), 휴대전화번호</td>
							</tr>
							<tr>
								<td rowspan="2">서비스이용(필수)</td>
								<td>서비스부정사용방지 및 계정 복원요청 대응</td>
								<td>부정이용기록, 기기고유번호(IMEI)</td>
								<td>부정사용방지 및 계정정보 복원 요청 대응을 위하여 1개월간 보관</td>
							</tr>
							<tr>
								<td>현금영수증발급</td>
								<td>휴대폰번호, 이메일</td>
								<td>목적달성 후 파기, 관련법령에 따라 보관되는 정보는 예외</td>
							</tr>
							<tr>
								<th>생성정보</th>
								<td style="text-align:center">회원</td>
								<td>서비스 이용, 사업처리과정</td>
								<td>후기 작성 등 서비스 이용 및 부정거래 기록 확인</td>
								<td>서비스 이용기록, 접속로그, 접속IP정보, 불량이용기록, 통신사정보, OS정보 및 기기정보(디바이스ID), 결제기록, 브라우저 정보, 이용콘텐츠, 서비스 이용에 대한 플랫폼 구분에 따른 OS, 사용된 신용카드정보, 관심지역</td>
								<td>통신비밀보호법에 따라 3개월 보관</td>
							</tr>
							<tr>
								<th rowspan="2">예약 및 구매 정보</th>
								<td style="text-align:center">회원/비회원</td>
								<td>상품예약(필수)</td>
								<td>예약서비스 이용 및 상담</td>
								<td>예약자명, 전화번호, 서비스이용기록, IP address, 위치정보</td>
								<td rowspan="2">전자상거래 등에서의 소비자보호에 관한 법률에 따라 5년간 보관</td>
							</tr>
              <tr>
								<td style="text-align:center">취소환불<br/>요청자</td>
								<td>취소환불(필수)</td>
								<td>취소,환불요청에 따른 대금지급</td>
								<td>은행명, 예금주명, 계좌번호</td>								
							</tr>
							<tr>
								<th>기타</th>
								<td style="text-align:center">회원/비회원</td>
								<td>서비스이용(필수)</td>
								<td>이벤트 중복 참여 확인 및 맞춤형 광고 제공</td>
								<td>ADID/IDFA(광고식별자), 서비스 이용 기록, 쿠키(cookie)</td>
								<td>마케팅 정보 안내를 위한 목적으로 1년 보관 이벤트 진행 관련 안내 및 당첨자 선정을 위해 최대 1년 보관(이벤트 마다 상이할 수 있으며, 개별 이벤트 페이지에 기재된 기간을 우선합니다.)</td>
							</tr>
						</tbody>
						</table>
						

						<h4>2. 개인정보의 위탁처리</h4>
						<p>회사는 편리하고 더 나은 서비스를 제공하기 위해 업무 중 일부를 외부에 위탁하고 있습니다.<br/>
             ⑴ 개인정보의 처리를 위탁하는 경우에는 위탁기관 및 그 사실을 라이브투어 어플리케이션을 통해 미리 고지하겠습니다.<br/>
						 ⑵ 개인정보의 처리를 위탁하는 경우에는 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담, 위탁기간, 처리 종료 후의 개인정보의 반환 또는 파기 등을 명확히 규정하고 당해 계약내용을 서면 등 전자적형태로 보관하겠습니다.<br/>
						 ⑶ 회사의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다.
						</p>
						<p class="clearfix"></p>

						<table class="table table-bordered">
						<colgroup>
							<col style="width:10%">
							<col style="width:60%">
							<col style="width:30%">
						</colgroup>
						<thead>
							<tr>
								<th>수탁자</th>
								<th>위탁업무</th>
								<th>보유 및 이용기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td></td>
								<td style="text-align:center">휴대폰, 신용카드, 계좌이체, 무통장입금(가상계좌) 등을 통한 결제처리</td>
								<td style="text-align:center">위탁 계약 만료 시 까지 보유</td>
							</tr>	
							<tr>
								<td></td>
								<td style="text-align:center">계좌이체, 무통장입금(가상계좌), 출금계좌인증 등을 통한 결제처리</td>
								<td style="text-align:center">위탁 계약 만료 시 까지 보유</td>
							</tr>	
						</tbody>
						</table>


						<h4>3. 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.</h4>
						<p>단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br/>
						 ⑴ 표시/광고에 관한 기록 : 6개월 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
						 ⑵ 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
						 ⑶ 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
					   ⑷ 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
						 ⑸ 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률)<br/>
						 ⑹ 통신사실확인자료 제공 : 3개월 (통신비밀보호법)
						</p>
						<p class="clearfix"></p>


						<h4>4. 회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</h4>
						<p>
						 ⑴ 파기절차 : 회원님이 문의 글 등록을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 되어지는 이외의 다른 목적으로 이용되지 않습니다.<br/>
						 ⑵ 파기방법 : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
						</p>
						<p class="clearfix"></p>


						<h4>5. 회사는 수집한 개인정보는 다음의 목적을 위해 제3자에게 제공합니다.</h4>
						<p>
						 ⑴ 회사는 원칙적으로 수집 및 이용목적 범위를 넘어 회원님의 개인정보를 제3자에게 제공하지 않습니다.<br/>
						 ⑵ 다만 원활한 서비스 제공을 위해 상품 구매 서비스 제공 업체로 회원님의 개인정보제공(제3자 제공)이 필요합니다. 이 경우 관련범령에서 요구하는 사항을 회원님에게 안내하고 사전 동의를 구합니다.<br/>
						 ⑶ 또한 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있을 경우 회원님의 개인정보를 제공할 수 있습니다.<br/>
					   ⑷ 서비스 이용 시 제 3자 제공에 동의한 경우 해당 서비스 제공 업체에게 아래의 개인정보가 제공됩니다.
						</p>
						<p class="clearfix"></p>


						<table class="table table-bordered">
						<colgroup>
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:35%">
							<col style="width:15%">
						</colgroup>
						<thead>
							<tr>
								<th>제공 받는 자</th>
								<th>제공목적</th>
								<th>제공정보</th>
								<th>보유 및 이용기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align:center">이벤트 제공 업체</td>
								<td style="text-align:center">이벤트 당첨자 해피콜</td>
								<td style="text-align:center">이름, 전화번호, 주소</td>
								<td style="text-align:center">재화 또는 서비스의<br/> 제공 목적이 달성 된 후 파기</td>
							</tr>	
							<tr>
								<td style="text-align:center">라이브투어 상품예약 및 구매 서비스 제공 업체[업체 리스트]</td>
								<td style="text-align:center">라이브투어 상품예약 및 구매 서비스 이용계약 이행<br/>(서비스 제공, 확인, 이용자 정보 확인)</td>
								<td style="text-align:center">예약 또는 구매한 서비스의 이용자 정보<br/>(예약자 이름, 휴대폰번호, 예약자 안심번호, 예약번호, 예약한 업체명, 예약한 상품명, 결제금액)</td>
								<td style="text-align:center">상품예약 및 구매 서비스 제공 완료 후 6개월</td>
							</tr>	
						</tbody>
						</table>


						<p>
						 (5) 다음의 경우에는 예외적으로 고객의 동의 없이 개인정보를 제공할 수 있습니다.<br/>
							- 관계법령에 의하여 수사상의 목적으로 공공기관으로부터의 요구가 있을 경우<br/>
							- 통계작성, 학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 연구단체 등에 제공하는 경우<br/>
							- 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우<br/>
							- 그러나 예외 사항에서도 관계법령에 의하거나 수사기관의 요청에 의해 정보를 제공한 경우에는 본래의 수집목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.
						</p>
						<p class="clearfix"></p>



						<h4>6. 비회원 고객의 개인정보수집 및 보호</h4>
						<p>
						 ⑴ 회사에서는 회원뿐만 아니라 비회원 또한 상품예약 및 구매를 하실 수 있습니다. 회사는 비회원 예약 및 구매의 경우 대금 결제에 반드시 필요한 개인정보 만을 요청하고 있습니다. 회사에서 비회원으로 구매를 하신 경우 비회원 고객께서 입력하신 지불인 정보는 대금 결제 및 서비스 이용에 관련한 용도 외에는 다른 어떠한 용도로도 사용되지 않습니다.
						</p>
						<p class="clearfix"></p>



						<h4>7. 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를 요청할 수도 있습니다.</h4>
						<p>
						 ⑴ 이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다. 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
						</p>
						<p class="clearfix"></p>



						<h4>8. 회사는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 라이브투어를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은 목적을 위해 쿠키를 사용합니다.</h4>
						<p>
						 ⑴ 쿠키 등 사용 목적 : 회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저 에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br/>
						 ⑵ 쿠키 설정 거부 방법 : 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.
						</p>
						<p class="clearfix"></p>



						<h4>9. 회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</h4>
						

						<table class="table table-bordered">
						<colgroup>
							<col style="width:35%">
							<col style="width:65%">
						</colgroup>
						<tbody>
							<tr>
								<th>개인정보보호책임자</th>
								<td>소속: 라이브투어 사업총괄<br/>
										성명:<br/> 
										연락처:<br/> 
										이메일:
								</td>
							</tr>
							<tr>
								<th>개인정보보호 전담담당부서</th>
								<td>소속: 라이브투어 플랫폼개발팀<br/> 성명<br/>연락처:<br/>이메일:	</td> 
							</tr>
					  </tbody>
						</table>



						<h4>10. 귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</h4>
						<p>
						 - 개인정보침해신고센터 (<a href="http://www.1336.or.kr" target="_blank" class="point">www.1336.or.kr</a> / 국번없이 118)<br/>
						 - 정보보호마크인증위원회 (<a href="http://www.eprivacy.or.kr" target="_blank" class="point">www.eprivacy.or.kr</a> / 02-580-0533~4)<br/>
						 - 대검찰청 인터넷범죄수사센터 (<a href="http://www.spo.go.kr" target="_blank" class="point">www.spo.go.kr</a> / 02-3480-3600)<br/>
					   - 경찰청 사이버테러대응센터 (<a href="http://www.ctrc.go.kr" target="_blank" class="point">www.ctrc.go.kr</a> / 02-392-0330)
						</p>
						<p class="clearfix"></p>
						<p class="clearfix"></p>

			</div>
		</div>
		<!--// 데이터 -->


    <!-- JS and JavaScript -->
		<script src="${rootPath}/static/js/jquery.min.js"></script>
		<script src="${rootPath}/static/js/bootstrap.min.js"></script>		
		<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
		<script src="${rootPath}/static/js/default.js"></script>
		<script src="${rootPath}/static/js/swiper.min.js"></script>
		
    <script>//Navigation Menu Slider
    $(document).ready(function(){		
        $('#nav-expander').on('click',function(e){
      		e.preventDefault();
      		$('body').toggleClass('nav-expanded');
      	});
      	$('#nav-close').on('click',function(e){
      		e.preventDefault();
      		$('body').removeClass('nav-expanded');
      	});
      });
    </script>    

    <script>//Swipe
		$(".carousel").swipe({
			swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
				if (direction == 'left') $(this).carousel('next');
				if (direction == 'right') $(this).carousel('prev');
			},
			tap:function(event, target) {
				// navigateTo(url)
			},

			allowPageScroll:"vertical",
			excludedElements: "label, button, input, select, textarea, .noSwipe",
			threshold:1
		});

		$(document).swipe({
			swipe:function(event, direction, distance, duration, fingerCount) {
			},
			click:function (event, target) {
				$(target).click();
			},
			threshold:75
		});
    </script>

		<script>
			$('.toggle_menu').on('click', function() {
				$('.toggle_menu>span').stop().toggleClass('on');
				$(this).stop().toggleClass('on');
			});

			chkNum = 0;
			$(".toggle_menu").click(function(){
				if(chkNum == 0){
					$(".toggle_menu>span").stop().addClass('on');
					$('nav').stop().addClass('view');
					$('.navbar').stop().addClass('on');
					$(this).stop().addClass('on');
					$(".allmenu").fadeIn();
					chkNum = 1;
				}else{
					$(".toggle_menu>span").stop().removeClass('on');
					$('nav').stop().removeClass('view');
					$('.navbar').stop().removeClass('on');
					$(this).stop().removeClass('on');
					$(".allmenu").fadeOut();
					chkNum = 0;
				}		
			});
		</script>

		<script type="text/javascript">
			$(document).ready(function(){

				$(".toggle-btn").click(function() {
					$(".toggle-content").slideToggle("slow");
					$(this).toggleClass("active"); return false;
					$('.toggle-content').toggleClass('expanded');
				});	 
			});
		</script>

</body>
</html>