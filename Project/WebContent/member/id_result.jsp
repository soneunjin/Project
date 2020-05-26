<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/Project/css/w3.css">
<script type="text/javascript" src="/Project/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="ex1" class="modal">
  <p>${LIST}</p>
  <a href="#" rel="modal:close">닫기</a>
</div>
 
<p><a href="#ex1" rel="modal:open">찾기</a></p>
	<h2>${LIST}</h2>
</body>
</html>