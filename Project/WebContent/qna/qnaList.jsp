<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<meta charset="utf-8" />
<title>메인페이지</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="/Project/css/w3.css">
<link rel="stylesheet" href="/Project/css/qna.css">
<link rel="stylesheet" href="/Project/assets/css/main.css" />

<script type="text/javascript" src="/Project/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/Project/js/qnaList.js"></script>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
				  
                           <a href="/Project/main/main.jsp" class="logo"><strong>Main page</strong></a>
                           <ul class="icons">
                              <li><a href="/Project/member/login.jsp" class="w3-col"><b><span>SIGN IN</span></b></a></li>
                           </ul>
                      
				</header>

				<head>

<style type="text/css">
</style>

<script type="text/javascript">
        $(function(){
        	$('#wbtn').click(function(){
        		alert('글쓰기 창으로 이동합니다');
        		$(location).attr('href','/Project/qna/qnaWrite.jsp');
        	});
        	$('.dtlogo').click(function(){
        		alert('홈으로 드루와~');
        		$(location).attr('href', '/Project/main.cls');
        	});
        });
    </script>

				</head>
				<body >

					<div id="wrap" >
						<br>
						<div id="topForm">
							<div class="w3-center ftt" >Q&A</div>
							<c:if test="${sessionScope.sessionID!=null}">
							</c:if>
						</div>
						<br>
						<div id="board">
							<table id="bList">
								<tr heigh="30">
									<td>글번호</td>
									<td>제목</td>
									<td>작성자</td>
									<td>작성일</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>

							</table>
						</div>
						<div class="w3-right">
							<input type="button" value="글쓰기" id="wbtn">
						</div>
						<div class="w3-row"><p></p></div>
						<div id="pageForm">페이지 번호</div>
						<br>
						
						<br>
						<div class="w3-col w-300" id="searchForm" >
							<form id="botform">
							
							<!-- 꼭 필요할까요??? 셀렉트박스 -->
							<div class="w3-col m2">
								<select name="opt" style="margin: 10px;">
									<option value="0">제목</option>
									<option value="1">내용</option>
									<option value="2">제목+내용</option>
									<option value="3">글쓴이</option>
								</select> 
							</div>
							<!-- ------------------------ -->
							
							<div class="w3-col m6">
								<input type="text" size="20" name="condition" style="margin: 10px;" />
							</div>
							<div class="w3-col m4">
								<input  type="submit" value="search" style="margin: 10px;" />
							</div>
							</form>
						</div>
					</div>

				</body>

			</div>
		</div>
		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->


				<!-- Menu -->
				<nav id="menu">
					<header class="major w3-padding-top">
						<img class="dtlogo" src="../images/main.png" width="300px"
							height="auto"> <a href="main.jsp"><h2>menu</h2></a>
					</header>
					<ul>
						<li><a href="index.html">모른당X</a></li>
						<li><a href="elements.html">팝니당$</a></li>
						<li><span class="opener">오세용~</span>
							<ul>
								<li><a href="#">자동차극장</a></li>
								<li><a href="#">자동차캠핑</a></li>
								<li><a href="#">선별진료소</a></li>
							</ul></li>
						<li><a onclick="">놀러왕!</a></li>
						<li><a href="#">물어봥?</a></li>

					</ul>
				</nav>
			</div>
		</div>
	</div>

</body>
</html>