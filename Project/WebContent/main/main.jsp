<!DOCTYPE HTML>


<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<meta charset="utf-8" />
		<title>드라이브 스루</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/Project/assets/css/main.css" />
		<link rel="stylesheet" href="/Project/css/w3.css" />
		<script type="text/javascript" src="/Project/js/jquery-3.5.0.min.js"></script>
		
	</head>
	<script type="text/javascript">
	$(function(){
		/*
		$('#login').click(function(){
			$(location).attr('href', '/Project/member/login.cls');
		});
		
		$('#logout').click(function(){
			$(location).attr('href', '/clsProj/member/logoutProc.cls');
		});
		*/
		
		
		$('.btn').click(function() {
			var tid = $(this).attr('id');
			var url = '';
			if(tid == 'login') {
				url = '/Project/member/login.cls';
			} else if (tid == 'logout') {
				url = '/Project/member/logoutProc.cls';
			} 
			
			$(location).attr('href', url);
		});
		
	});
</script>
	<body class="is-preload" >
		

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">
							

							<!-- Header -->
								<header id="header">
									<a href="/Project/main.cls" class="logo"><strong>Main page</strong></a>
									<ul class="icons">
									<c:if test="${empty SID}">
										<li class="btn w3-button" id="login"><b><span>SIGN IN</span></b></a></li>
									</c:if>
									<c:if test="${not empty SID}">
										<li class="btn w3-col" id="logout"><b><span>SIGN OUT</span></b></a></li>
									</c:if>
									
									</ul>
								</header>

							<!-- Banner -->
								<section id="banner">
									<div class="" style="overflow:scroll; width:300px; height: 400px; padding:10px;">
										<header>
											<h2> 내주변 위치 정보<br /></h2>
											<p></p>
										</header>
										<p>* 음식점 <br>
										   * 자동차 극장 <br>
										   * 자동차 캠핌장</p>
										<!-- 
										<ul class="actions">
											<li><a href="#" class="button big">Learn More</a></li>
										 -->
									</div>
									
									
									<span class="image object">
										<div id="map" style="width: 620px;height:400px;">
										</div>
									</span>
										
									<div class="" style="overflow:scroll; width:300px; height: 400px; padding:10px;">
										<header>
											<h2> 탑 10 음식점 추천<br /></h2>
											<p></p>
										</header>
										<p>1. 국밥집 <br>
										   2. 설담재 <br>
										   3. 돈가스 <br>
										   4. 어쩌구 <br>
										   5. 저쩌구 <br>
										   6. 이상해 <br>
										   7. 이럴수가 <br>
										   8. 밥먹자 <br>
										   9. 배고프다 <br>
										   10. 먹어야해</p>
										<!-- 
										<ul class="actions">
											<li><a href="#" class="button big">Learn More</a></li>
										 -->
										</ul>
									</div>	
									


										<!-- <img src="images/pic10.jpg" alt="" /> -->
								</section>

							<!-- Section -->
								<section>
									<header class="major">
									</header>
								</section>

							<!-- Section -->

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- 
							<!-- Main link -->
	
							<!-- Menu -->
								<nav id="menu">
									<header class="major">
							   			<a href="/Project/main.jsp" width="0px;" height="0px;">
							   			<img class="ima_1" src="images/main.png" border="0" />
							   			</a>
										<h2>Manu</h2>
									</header>
									<ul>
										<li><a href="index.html">메인 페이지</a></li>
										<li><a href="generic.html">홍보 게시판</a></li>
										<li><a href="elements.html">자유게시판</a></li>
										<li>
											<span class="opener">위치 정보</span>
											<ul>
												<li><a href="#">음식점</a></li>
												<li><a href="#">자동차 극장</a></li>
												<li><a href="#">자동차 캠핌장</a></li>
												<li><a href="#">주차장 정보</a></li>
												<li><a href="#"></a></li>
											</ul>
										</li>
										<li><a href="#">문의 사항</a></li>
										<li><a href="#">공지 사항</a></li>
										<!--
										<li>
											 <span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul> -->
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
									</header>
								</section>

							<!-- Section -->

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/Project/assets/js/jquery.min.js"></script>
			<script src="/Project/assets/js/browser.min.js"></script>
			<script src="/Project/assets/js/breakpoints.min.js"></script>
			<script src="/Project/assets/js/util.js"></script>
			<script src="/Project/assets/js/main.js"></script>
			<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=15d6de39e7a3af5142106fbb5ed32293"></script>
		<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">H?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
       message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
  //  infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);
    
 // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
}    
</script>
	</body>
</html>