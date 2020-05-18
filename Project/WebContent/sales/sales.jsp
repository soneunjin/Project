<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>팝니당</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/Project/assets/css/main.css" />
<link rel="stylesheet" href="/Project/assets/css/sales.css" />
<script type="text/javascript"></script>
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
						<a href="/Project/login.jsp" class=""><h5
								style="color: black;">SIGN</h5></a>
					</div>
				</header>
				<div class="mg30" style="padding-left: 20px;">팝니당</div>
				<hr style="margin: 10px;">
				<div id="wrap">
					<br>
					<div id="topForm">
						<a href="/Project/sales/sales_write.jsp"><b>write</b></a>
					</div>
					<br>
					<div id="board" style="max-width: 1500px;">
						<div></div>
						<table id="bList" border="3" bordercolor="lightgray">
							<tr heigh="30" style="font-size: 12pt;">
								<td>글번호</td>
								<td>썸네일</td>
								<td>제목</td>
								<td>작성자</td>
								<td>작성일</td>
								<td>조회수</td>
							</tr>
							<tr>
								<td style="font-size: 14pt;">1001<br>
								<h6 style="font-color: gray;">서울시 구로구</h6></td>
								<td style="height: 100px; line-height: 100px;">
									<img style="font-size: 14pt; height:60px; width: 60px;" src="/Project/images/scissors.jpg" alt="" ></img>
								</td>
								<td style="font-size: 14pt;"><a
									href="/Project/sales/sales_inside.jsp">영호돈까스</a></td>
								<td style="font-size: 14pt;">김영호</td>
								<td style="font-size: 14pt;">2020-05-16</td>
								<td style="font-size: 14pt;">1456</td>
						</table>
					</div>
					<br> <br>
					<div id="searchForm" style="max-width: 150px; margin-left: 40%;">
						<form>
							<select name="opt" style="margin: 10px;">
								<option value="0">제목</option>
								<option value="1">내용</option>
								<option value="2">제목+내용</option>
								<option value="3">글쓴이</option>
							</select> <input type="text" size="20" name="condition"
								style="margin: 10px;" />&nbsp; <input type="submit"
								value="search" style="margin: 10px;" />
						</form>
					</div>
				</div>

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