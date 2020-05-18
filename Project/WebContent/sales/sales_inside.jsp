<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>메인페이지</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/sales.css" />
</head>
<body class="is-preload">
	<script type="text/javascript" src="/Project/assets/js/sales.js"></script>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>Editorial</strong> by
						HTML5 UP</a>

					<div class="icons">
						<a href="/Project/login.jsp" class=""><h5 style="color: black;">SIGN</h5></a>
					</div>
				</header>
				<div id="wrap">
					<br>
					<div id="topForm" style="text-align: left; padding-left: 10px;"><b>매장 정보</b></div>
					<hr style="margin: 15px;">
					<br>
					<div id="board" style="max-width: 1500px;">
						<div style="text-align: left;">
							<h2 style="margin:7px;"><b>영호돈까스</b></h2>
							<h4 style="font-color: gray; padding-left: 15px;">서울특별시 구로구 시흥대로163길 21 1 층</h4>
						</div>
					</div>
					<br>
					 <div style="padding-left: 150px; margin: 0px; display: inline-block;">
					 <span style="margin: 0px;">위치</span>
					 <span style="padding-left: 300px; margin: 0px;">메뉴</span>
					 <span style="padding-left: 300px; margin: 0px;">상품</span>
					 </div>
					 <br>
					 <div id="map" style="width:300px;height:300px; display: inline-block;"></div>
					 <img alt="" src="/Project/images/3.png" style="height:300px; width:300px; margin-left: 0px;">
					 <img alt="" src="/Project/images/3.png" style="height:300px; width:300px; margin-left: 30px;">

					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bfbcb2a9b1a94611a8804b0d71d6315c&libraries=services"></script>
										 <script>
					var addr = document.getElementById('addr');
					var mapContainer = document.getElementById('map');
					var mapOption = {
					    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					    level: 3 // 지도의 확대 레벨
					}// 지도를 표시할 div 
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// btn 클릭시 아이디가 add인 인풋태그 value 끌어와서 주소 검색 넣기
					/* function btn_click(){
						var gap=addr.value;
						if(gap==""){
							alert("주소를 입력하세요.");
							addr.focus();
						return;
					} */
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('시흥대로163길 21', function(result, status) {
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					        
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">여기</div>'
					        });
					        infowindow.open(map, marker);
					
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        
					        map.setCenter(coords);
					     }
					});   
					</script>
					<br>
				</div>
			</div>
			<br>
			<div style="margin: 20px;">
				<h3>리뷰</h3>
				<hr style="margin-top:10px;">
				
			</div>
		</div>
		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<h3>여기는 나중에 아이콘 또는 이미지 추가예정</h3>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<a href="/Project/index.jsp"><h2>MainPage</h2></a>
					</header>
					<ul>
						<li><a href="index.html">여기는 뭐지?</a></li>
						<li><a href="/Project/sales/sales.jsp">팝니당</a></li>
						<li><span class="opener">가세용</span>
							<ul>
								<li><a href="#">D.T 점</a></li>
								<li><a href="#">자동차극장</a></li>
								<li><a href="#">자동차캠핑</a></li>
								<li><a href="#">선별진료소</a></li>
								<li><a href="#">주차장</a></li>
							</ul></li>
						<li><a href="#">놀러왕</a></li>
						<li><a href="#">물어봥</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>