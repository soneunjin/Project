<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="/Project/css/w3.css">
<link rel="stylesheet" href="/Project/css/login.css">

<script type="text/javascript" src="/Project/js/jquery-3.5.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script type="text/javascript">
$(document).ready(function() {
  
	});
</script>
</head>
<body>
   <p class="tip" id="hbtn">Home</p>
<div class="cont">
   <form id="frm" name="frm">
  <div class="form sign-in">
    <h2>내 정보 수정</h2>
    <label>
      <span for="id">이메일</span>
      <input type="email" id="id" name="id" /><span>${LIST.sid}</span>
    </label>
    <label>
      <span for="pw">비밀번호</span>
      <input type="password" id="pw" name="pw" />
    </label>

    <button type="button" class="submit" id="lbtn">Submit</button>
  </div>
   </form>
  </div>   
</body>
</html>