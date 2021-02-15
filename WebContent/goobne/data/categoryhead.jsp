<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 제품 안내 페이지 중 상위 카테고리 표시하는 header -->

<div id="container">
	<div id="contents">
		<div class="tab">
			<ul class="tabType09">
				<li class="dropdown" id="닭가슴살"><a href="#" 
					class="dropbtn">닭가슴살</a>
					<div class="content">
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=소스가 맛있는 닭가슴살';">
								소스가 맛있는 닭가슴살</a>
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=훈제 슬라이스';">
								훈제 슬라이스</a>
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=수비드';">
								수비드</a>
					</div></li>
				<li class="dropdown"><a href="#"
					class="dropbtn">소시지/햄</a>
					<div class="content">
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=후랑크';">
							후랑크</a> 
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=닭가슴살햄';">
							닭가슴살햄</a>
					</div></li>
				<li class="dropdown"><a href="#"
					class="dropbtn">볼/스테이크/큐브</a>
					<div class="content">
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=닭가슴살볼';">
						닭가슴살볼</a>
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=오븐스테이크';">
						오븐스테이크</a>
					</div></li>
				<li class="dropdown"><a href="#"
					class="dropbtn">치밥/볶음밥</a>
					<div class="content">
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=치밥/볶음밥';">
						치밥/볶음밥 <span class="ic_new_ss">New</span></a>
						<a href="#">[특가]볼케이노치밥</a>
					</div></li>
				<li class="dropdown" id=""><a href="#"
					class="dropbtn">소스/샐러드</a>
					<div class="content">
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=소스';">
						소스</a>
						<a href="javascript:location.href='study/goobnemall/product/list.do?category2=샐러드';">
						샐러드</a>
					</div></li>
				<li class="dropdown"><a href="#"
					class="dropbtn">모든판매상품</a>
					<div class="content">
						<a href="study/goobnemall/product/list.do">상품 모두 보기
						<span class="ic_new_ss">New</span></a>
					</div></li>
				<li class="dropdown"><a href="#"
					class="dropbtn">제작자 보기</a>
					<div class="content">
						<a href="#">안다현</a>
						<a href="#">이예리</a>
						<a href="#">임의빈</a>
						<a href="#">정민철</a>
					</div></li>
				</ul>
		</div>

		<!-- dropdown 버튼 동작 script -->
		<script type="text/javascript">

	var swiper = new Swiper(".swiper-container", { 
		spaceBetween: 30, centeredSlides: !0, autoplay: { 
		delay: 3500, disableOnInteraction: !1 }, 
		pagination: { el: ".swiper-pagination", clickable: !0 }, 
		navigation: { nextEl: ".swiper-button-next", prevEl: ".swiper-button-prev" } }); 
		
	$(document).ready(function () { 
		$(".dropdown").on("click", function () { 
		$(this).hasClass("open") ? $(this).removeClass("open") : ($(".dropdown").removeClass("open"),
		$(this).addClass("open")) }) });

	</script>

		<!-- 아래 부분은 TABLE에서 속성 긁어와야 함. 임시 데이터임 -->
		<ul class="path history">
			<li><a href="#none">홈</a></li>
			<li><a href="#none"> 닭가슴살 </a></li>
			<li class="subHave current">
			<a href='/view/category/D97SMCLMM0T422FL'>소스가 맛있는 닭가슴살</a>
				<div class="subList">
					<ul>
						<li class="on"><a href="/view/category/D97SMCLMM0T422FL">소스가
								맛있는 닭가슴살</a></li>
						<li class=""><a href="/view/category/5FK5K0FM9Q21FP2N">훈제
								슬라이스</a></li>
						<li class=""><a href="/view/category/S4U6W3HLKDYQSNH9">수비드</a></li>
						<li class=""><a href="/view/category/A3AASQVTEJVKF4SP">1kg
								생닭가슴살</a></li>
						<li class=""><a href="/view/category/8NMC322GPGM4PZVF">1kg
								생안심살</a></li>
					</ul>
				</div></li>
		</ul>
		<div class="tab">
			<ul class="tabType10">
				<li class=""><a href="#1123647">화이트머쉬룸 </a></li>
				<li class=""><a href="#1123648">레드크림커리 </a></li>
				<li class="last"><a href="#1123649">스파이시커리 </a></li>
			</ul>
		</div>
	</div>
</div>