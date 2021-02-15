<%@page import="com.goobne.CustomInfo"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	CustomInfo info = (CustomInfo)session.getAttribute("customInfo");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>굽네몰</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="http://www.goobnemall.com/static-root/resources/pc/css/main.css">

<!-- 메인 폰트, 데이터 담는 틀 UI 정보 다 들어가 있음 -->
<link type="text/css" rel="stylesheet" href="<%=cp %>/goobne/data/css/common.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/goobne/data/css/jquery.ui.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/goobne/data/css/jquery.ui.gnmall.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/goobne/data/css/contents.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<script type="text/javascript" src="<%=cp %>/goobne/data/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=cp %>/goobne/data/js/jquery.ui.min.js"></script>

<!-- 이미지 슬라이딩 기능 포함-->
<script type="text/javascript" src="<%=cp %>/goobne/data/js/style.js"></script>
<script type="text/javascript" src="<%=cp %>/goobne/data/js/slides.jquery.js"></script>

</head>
<body>

<div id="topAd" style="display: block; background-color: #F74B41;">
<div class="bg_rt" style="display: block; background-color: #ffc2b8;"></div>
	<div class="inner">
		<a href="#">
		<img src="http://www.goobnemall.com/static-root/cntnt/2020/07/01/485571cdf233444c8fcdd500292e3046.jpg"
		alt="첫구매시 추천상품이 100원"></a>
		<a href="#">
		<img src="http://www.goobnemall.com/static-root/cntnt/2020/07/15/68949e7e199f4c189f58693f6054fde4.jpg"
		alt="듀먼_영양화식_PC_TOP배너"></a>
		<button onclick="javascript:topBannerClose();" class="closeLyBtn1 btnImg">
		<span>오늘 하루 보이지 않음 | 닫기</span>
		</button>
	</div>
</div>

<div id="header">
	<div class="headerCont LGN_TP_GUEST clB">
		<h1>
			<a href="<%=cp%>/goobnemall/index.do"> 
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/2017/logo.png"
			alt="굽네몰"></a>
		</h1>
	<div id="util">
		<ul>
				<c:choose>
			<c:when test="${empty sessionScope.customInfo.userId }">
			<li><a href="<%=cp%>/goobnemall/user/signin.do">로그인</a></li>
			</c:when>
			<c:otherwise>
			<li><a href="<%=cp%>/goobnemall/user/logout.do">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
			<li><a href="<%=cp%>/goobnemall/user/signup.do">회원가입</a></li>			
		<c:choose>
			<c:when test="${empty sessionScope.customInfo.userId }">
			<li><a href="<%=cp%>/goobnemall/user/signin.do">마이페이지</a></li>
			</c:when>
			<c:otherwise>
			<li><a href="<%=cp%>/goobnemall/user/mypage.do">마이페이지</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${empty sessionScope.customInfo.userId }">
			<li><a href="<%=cp%>/goobnemall/user/signin.do">장바구니</a></li>
			</c:when>
			<c:otherwise>
			<li><a href="<%=cp%>/goobnemall/order/cart.do">장바구니</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${empty sessionScope.customInfo.userId }">
			<li><a href="<%=cp%>/goobnemall/user/signin.do">문의하기</a></li>
			</c:when>
			<c:otherwise>
			<li><a href="<%=cp%>/goobnemall/qna/list.do">문의하기</a></li>
			</c:otherwise>
		</c:choose>
		</ul>
	</div>
	<div class="headerBanner">
		<div class="listW">
			<ul>
				<li><a href="#"> <img src="http://www.goobnemall.com/static-root/cntnt/2019/12/03/0aa82cf6d4b14519b27af8574a25b314.jpg"
				alt="100%휴먼그레이드 자연영양식 듀먼"></a></li>
			</ul>
		</div>
		<div class="btnW">
			<a href="" class="btnImg btnPrev"></a> <a href="" class="btnImg btnNext"></a>
		</div>
	</div>
		<script type="text/javascript">
			topBnnerSlider(".headerBanner", 2500, "fade");
		</script>
		
	<form id="topSearchForm" action="/view/search/result" method="post">
		<input type="text" name="dummy" id="dummy" style="display: none">
		<div class="srchArea">
			<div class="active srchWrap">
				<input type="text" id="top_keyword" name="top_keyword"
						class="keyword" title="검색어" value="" placeholder="검색어를 입력하세요"
						onkeyup="fn_top_keyup()">
				<button class="btnImg btnSrch" id="srchBtn"
					onclick="return topSearch();">
					<span>검색</span>
					<!-- 데이터에서 검색하는 방식 적용해야 함 -->
				</button>
			</div>
		</div>
	</form>
</div>

<!-- 메뉴 고르는 카테고리 -->
<div id="gnb">
	<div class="inner">
	<ul class="sub_ctg_dep">
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">닭가슴살</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">소스가 맛있는 닭가슴살</a></li>
				<li><a href="#">훈제 슬라이스</a></li>
				<li><a href="#">수비드</a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">소시지/햄</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">후랑크</a></li>
				<li><a href="#">닭가슴살햄</a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">볼/스테이크/큐브</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">닭가슴살볼</a></li>
				<li><a href="#">오븐스테이크</a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">치밥/볶음밥</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">치밥/볶음밥 
					<span class="ic_new_ss">New</span></a></li>
				<li><a href="#">[특가]볼케이노치밥</a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">소스/샐러드</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">소스</a></li>
				<li><a href="#">샐러드</a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">모든판매상품</a>
			<ul class="sub_ctg_dep02">
				<li><a href="<%=cp%>/goobnemall/product/list.do">상품 모두 보기
					<span class="ic_new_ss">New</span></a></li>
			</ul></li>
		<li class="ctg_dep_tit"><a href="#" class="ctgTitle" id="">제작자 보기</a>
			<ul class="sub_ctg_dep02">
				<li><a href="#">안다현</a></li>
				<li><a href="#">이예리</a></li>
				<li><a href="#">임의빈</a></li>
				<li><a href="#">정민철</a></li>
			</ul></li>
		<div class="ctg_dep_close" id="btnGnbClose">닫기</div>
	</ul>
		
	<ul class="gnb">
		<li class="ctgTop"><a href="#showMeue" class="gnbDep1 sub_ctg">
			<span id="btnGnbOpen">전체보기</span>
			</a></li>
		<li class=""><a href="#"
			onclick=""
			class="gnbDep1"> <span>닭가슴살</span>
			</a></li>
		<li class=""><a href="#"
			onclick=""
			class="gnbDep1"> <span>소시지/햄</span>
			</a></li>
		<li class=""><a href="#"
			onclick=""
			class="gnbDep1"> <span>볼/스테이크</span>
			</a></li>
		<li class=""><a href="#"
			onclick=""
			class="gnbDep1"> <span>치밥/볶음밥</span>
			</a></li>
	</ul><div class="bgDep2"></div>
	</div>
</div>	
</div>

<!-- 마이페이지 내용 -->

<!-- 왼쪽 바 부분 시작 -->
	<div id="container" class="haveSNB">
		<ul class="path">
			<li><a href="/">홈</a></li>
			<li class="current"><a>마이페이지</a></li>
		</ul>
		<!-- 상단 -->
		<div id="snb">
			<div class="snbTit mypg">
				<h2>
					<a href="/view/mypage/main">마이페이지</a>
				</h2>
			</div>
			<ul class="snb haveSub">
				<li><span class="snbDep2">나의 쇼핑정보</span>
					<ul class="snbDep3">
						<li><a href="/view/mypage/order/main/list">주문내역조회</a></li>
						<li><a href="/view/mypage/order/notpay/list">미입금내역 조회</a></li>
						<li><a href="/view/mypage/order/cancel/list">취소/교환/반품 조회</a></li>

						<li><a href='/view/mypage/addr'>배송지 관리</a></li>
						<li style="display: none;"><a href='/view/mypage/wish'>위시리스트</a></li>
					</ul></li>

				<li><span class="snbDep2">나의 통장현황</span>
					<ul class="snbDep3">
						<li><a href="/view/mypage/gmoney/list">굽머니</a></li>
						<li><a href="/view/mypage/coupon/list">쿠폰</a></li>
						<li><a href="/view/mypage/bonus/list">적립금</a></li>
						<li><a href="/view/mypage/money/list">예치금</a></li>
					</ul></li>
				<li><span class="snbDep2">나의 활동관리</span>
					<ul class="snbDep3">
						<li><a href="/view/mypage/rvw/list">시식후기</a></li>
						<li><a href="/view/mypage/pqa/list">상품 Q&amp;A</a></li>
						<li><a href="/view/mypage/oto/list">1:1 상담문의</a></li>
					</ul></li>

			</ul>
		</div>

	<!-- 컨텐츠 부분 -->
	<div id="contents">
		<div class="titWrap">
			<h3 class="pTit">나의 쇼핑정보</h3>
		</div>

		<div class="myShoppingInfo">
			<div class="NEWmy">
				<div class="myInfo">
					<div class="img">
						<img src="http://www.goobnemall.com/static-root/cntnt/2017/07/20/201357885c914295b67611de4fee31d0.png"
						alt="패밀리 등급" />
					</div>
						<!-- ##등급별 이미지 
							VIP : icon_vip.png / 골드(Gold) : icon_gold.png / 실버(SILVER) : icon_silver.png / 패밀리(FAMILY) : icon_family.png 
							비회원 이미지(2016-01-27 추가) : icon_nonMember.png 
							트레이너 : icon_trainer.png / 사업자 : icon_business.png
					-->
					<div class="cont">
						<p><em class="name"><%=info.getUserId() %></em>님의 멤버십 등급은 <em class="grade">${grade }</em>입니다.</p>
						<a href="/view/mypage/mem/benefit/person" class="btnD">회원등급혜택</a>
					</div>
				</div>
					<div class="mileage">
						<ul>
						<li><i class="myIcon coupon"></i> <span class="tit">할인쿠폰</span>
							<span class="num"><strong>2</strong>장</span></li>
						<li><i class="myIcon reserve"></i> <span class="tit">적립금</span>
							<span class="num"><strong>0</strong>원</span></li>
						<li><i class="myIcon deposit"></i> <span class="tit">예치금</span>
							<span class="num"><strong>0</strong>원</span></li>
						<li><i class="myIcon money"></i> <span class="tit">굽머니</span>
							<span class="num"><strong>0</strong>원</span></li>
						</ul>
					</div>
			</div>
				<div class="NEWmy clB">
					<div class="status flL">
						<dl><dt><strong>주문/배송</strong>현황</dt>
							<dd><ul class="step">
								<li>주문접수 <strong class="num">0</strong></li>
								<li>결제완료 <strong class="num">0</strong></li>
								<li>상품준비중 <strong class="num">0</strong></li>
								<li>배송중 <strong class="num">0</strong></li>
								<li>배송완료 <strong class="num">0</strong></li>
							</ul></dd>
						</dl>
						<dl>
							<dt><strong>교환/반품</strong>현황</dt>
							<dd><ul class="step">
								<li>반품진행 <strong class="num">0</strong></li>
								<li>교환진행 <strong class="num">0</strong></li>
								<li>환불/교환완료 <strong class="num">0</strong></li>
							</ul>
						</dd>
					</dl>
				</div>

				<div class="status02">
					<dl class="h95">
						<dt><strong>문의</strong>현황</dt>
							<dd><ul class="list01">
							<li>1:1 상담문의 답변이 등록되었습니다. 
							<span class="flR"><a href="/view/mypage/oto/list"><strong class="num">0</strong></a>건</span></li>
							</ul></dd>
					</dl>
				</div>
			</div>
		</div>

		<!-- 쇼핑 정보 -->
		<div class="titWrap type02">
			<h4 class="flL tit valB">최근주문내역조회</h4>
		</div>

		<div class="prdtTbl bdLR">
			<div class="myTbl">
				<table>
					<caption>주문내역현황</caption>
					<colgroup>
						<!-- 여기에 주문 목록 출력하게 해야함 -->
						<col width="150px" />
						<col width="30px" />
						<col width="80px" />
						<col width="*" />
						<col width="120px" />
						<col width="120px" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">주문일자/주문번호</th>
							<th scope="col" colspan="3">구매내역</th>
							<th scope="col">총결제금액</th>
							<th scope="col">배송구분</th>
							<th scope="col">후기</th>
						</tr>
						
						<c:forEach var="dto" items="${listsOrderInfoDto }" varStatus="status">
						<tr height="40px" align="center">
							<td scope="col">${dto.orderDate } / ${dto.orderNum }</td>
							<td scope="col" colspan="3">${listsProductDto.get(status.index).getProductName() }</td>
							<td scope="col"><fmt:formatNumber value="${dto.totalCost }" pattern="#,###"/>원</td>
							<td scope="col">${dto.orderState }</td>
							<td scope="col">
							<a href="javascript:location.href='<%=cp%>/goobnemall/product/review.do?orderNum=${dto.orderNum}&productNum=${listsProductDto.get(status.index).getProductNum() }';"> 작성 </a>
</td>
							
						</tr>
						</c:forEach>
						
					</thead>
					<tr align="left" bgcolor="#FF8224" bordercolor="#FF8224">
							<td colspan="7" align="right" bgcolor="#FF8224">
								<h4><font color="white">총결제금액 : <fmt:formatNumber value="${totalAllCost }" pattern="#,###"/> 원</font></h4>
							</td>
						</tr>
					<tbody id="ord-std-tbody">

					</tbody>
				</table>
			</div>
		</div>
		
		<div class="titWrap type06">
			<h4 class="tit">나의 회원정보</h4>
		</div>
		<div class="myInfo">
			<ul><li>
				<div class="info">
					<i class="myIcon phone"></i>
					<!-- 여기부터도 로그인 한 회원정보 불러와야함 -->
						<p class="tit">휴대폰</p>
						<p>010-9748-9290</p>
						<p class="fc99">수신동의안함</p>
				</div>
				<div class="edit">
					<span class="date">최종수정일 : 2020.11.12</span> 
					<a href="/view/mypage/mem/edit" class="btnF">정보수정</a>
				</div></li>
				
				<li>
				<div class="info">
					<i class="myIcon email"></i>
					<p class="tit">이메일</p>
					<p>pudig1@naver.com</p>
					<p class="fc99">수신동의안함</p>
				</div>
				<div class="edit">
					<span class="date">최종수정일 : 2020.11.12</span> 
					<a href="/view/mypage/mem/edit" class="btnF">정보수정</a>
				</div></li>
				
				<li>
				<div class="info">
					<i class="myIcon addr"></i>
					<p class="tit">배송지관리</p>
					<p class="cont">자주 사용하는 배송지 주소를 입력해두세요! 쇼핑이 편해집니다.</p>
				</div>
				<div class="edit">
				<span class="date">최종수정일 : </span> <a href="/view/mypage/addr"
				class="btnF">배송지관리</a>
				</div></li>
				</ul>
			</div>

		</div>

	</div>

	<!-- 주문 목록 -->

<br/><br/>
<!-- 컨테이너 -->
<div class="mainContBox">
	<div class="titWrap">
		<h2 class="tit">건강한 이야기</h2>
	</div>
	
	<div class="healthWrap">
		<ul>
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health01.png"
			alt="국내산 100%">
			<div><strong>국내산 100%</strong> 도계직후 바로 가공되는 <br> 국내산 신선육으로 <br>
			만든 닭가슴살</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health02.png"
			alt="HACCP 인증">
			<div><strong>HACCP 인증</strong> HACCP 인증적용 <br> 작업장에서 깨끗하고 <br>
			안전하게 생산</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health03.png"
			alt="품질안전검사">
			<div><strong>품질안전검사</strong> 매월1회 자가품질 <br> 검사로 안심하고 <br> 먹을
			수 있는</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health04.png"
			alt="소비자 중심경영">
			<div><strong>소비자 중심경영</strong> 소비자의 의견과 <br> 제안을 하나하나 <br>
			소중히</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health05.png"
			alt="맛보장">
			<div><strong>맛보장</strong> 굽네치킨의 기술로 <br> 만들어 믿고 먹을 수 <br> 있는
			맛있는 닭가슴살</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health06.png"
			alt="신선보장">
			<div><strong>신선보장</strong> 드라이아이스 <br> 포장으로 <br> 신선하게 전달</div></li>
			
			<li>
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health07.png"
			alt="정기배송">
			<div><strong>정기배송</strong> 원하는 날짜에 <br> 알아서 배송하는 <br> 맞춤형 쇼핑
			서비스</div></li>
			
			<li><img src="http://www.goobnemall.com/static-root/resources/pc/img/main/img_health08.png"
			alt="빠른배송">
			<div><strong>빠른배송</strong> 2시이전 주문시 <br> 당일 발송되는 <br> 시스템</div></li>
		</ul>
	</div>
</div>

<div class="mainBanner03">
	<div class="mainContBox">
		<span><a href="#">
		<img src="http://www.goobnemall.com/static-root/cntnt/2019/02/07/e5ad7ea971214df781204529cf724c79.jpg"
		alt="2019 3년연속 브랜드 대상 수상"></a> <br /> <br /> <br />
		</span>
	</div>
</div>

<div class="quick qRight">
	<div class="qInner">
		<div class="banner goobne">
			<a href="<%=cp %>/goobnemall/signup.do"> 
			<img src="http://www.goobnemall.com/static-root/cntnt/2018/05/31/ce10c5ce802d4a05a50379dd666a1750.png"
			alt="회원가입시 바로 가능한 쿠폰" /></a>
		</div>
		
		<div class="banner info">
			<img src="http://www.goobnemall.com/static-root/resources/pc/img/2018_main/rightbn_dv.png"
				alt="2시이전 당일배송" />
			<p class="mgT5">2시이전 당일배송</p>
		</div>
		
		<div class="deliveryInfo">
			<ul>
				<li><a href="http://www.goobnemall.com/view/customer/userguide/member">첫 구매 무료배송</a></li>
				<li><a href="http://www.goobnemall.com/view/community/review/2XSBOIY4L6ZUVAYK">베스트 후기</a></li>
			</ul>
		</div>
		
		<div class="cartWrap">
			<div class="cartPrdtInfo">
				<div class="history_prd">
					<dt>최근본상품</dt>
					<dd>(0)</dd>
					<div class="historyWrap">
						<div class="historyItem" style="height: 0px">
							<ul>
							</ul>
						</div>
						<!-- cookie 활용해서 넣을 것 -->
						<div class="btnWrap">
							<button class="btnImg btnPrev">
								<span>이전</span>
							</button>
							<button class="btnImg btnNext off">
								<span>다음</span>
							</button>
						</div>
					</div>
				</div>
					<a href="#gotoTop" class="gotoTop" title="상단으로">TOP</a>
			</div>
		</div>
	</div>
</div>

<div class="footer03">
	<div class="footerMenu2">
		<ul>
			<li><a href="#">고객센터</a></li>
			<li><a href="#">이용안내</a></li>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">이메일무단수집거부</a></li>
			<li><a href="#">사업자정보확인</a></li>
		</ul>
	</div>
	
	<div class="gnmInfo">
		<span style="color: #ef5033">굽네몰 대표이메일 : goobnemall@gngrp.com</span>
		<br> <span>대표이사 :</span> 박상면 <span>상호 : </span>주식회사 지앤건강생활 <span>주소
		: </span>경기도 용인시 처인구 포곡읍 백옥대로 1800번길 1 <br> <span>사업자등록번호 :</span>
		211-88-98174 <span>통신판매업신고번호 :</span> : 제 2017-용인처인-0086호 <br>
		<span>전화 :</span> 1688-9247 <span>팩스 :</span> 02-2643-2094 <span>개인정보보호책임자
		:</span>정보라 <span>Email :</span> wjdbora@gngrp.com
	</div>
	<div class="copyright">Copyright ⓒ 굽네몰 2013 All Right Reserved.</div>
	<div class="escrowService">
		<p>(주) LG유플러스의 에스크로 서비스 가입</p>
		<p class="mgT10">
		저희 쇼핑몰은 고객님의 안전거래를 위해 무통장입금 거래에 대해<br>구매 안전서비스를 적용하고 있습니다.
		</p>
	</div>
</div>

</body>
</html>
