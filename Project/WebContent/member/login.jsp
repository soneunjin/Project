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
<script type="text/javascript">
$(document).ready(function() {
   document.querySelector('.img__btn').addEventListener('click', function(){
      
   
     document.querySelector('.cont').classList.toggle('s--signup');
     })
     
     $('#lbtn').click(function(){
			// 할일
			// 1. 데이터 읽고
			var sid = $('#id').val();
			var spw = $('#pw').val();
			// 2. 유효성 검사하고
			if(!sid){
				$('#id').focus();
				return;
			}
			if(!spw){
				$('#pw').focus();
				return;
			}

			$('#frm').attr('method', 'POST');
			$('#frm').attr('action', './loginProc.cls');
			$('#frm').submit();
		});

		<%
			String sid = (String)session.getAttribute("SID");
		%>
	
		// 로그인 여부에 따른 처리
		var sid = '<%= sid %>';
		/* alert(typeof sid); */
		if(sid != 'null' && sid.length != 0 ){
			$('#loginWin').css('display', 'none');
			$('#msg').html(sid);
			$('#msgWin').css('display', '');
		}
		
		$('#hbtn').click(function(){
			$(location).attr('href', '/Project/main.cls');
		});
		
		$('#pbtn').click(function() {
			alert($('#ab1').val());
			var abc = $('#idx').val();
			alert(abc);
			$('#frm1').attr('method', 'POST');
			$('#frm1').attr('action', './joinProc.cls');
			$('#frm1').submit();
		});
		
   });
</script>
</head>
<body>
   <p class="tip" id="hbtn">Home</p>
<div class="cont">
	<form id="frm" name="frm">
  <div class="form sign-in">
    <h2>어서 오세용 드루왕</h2>
    <label>
      <span for="id">이메일</span>
      <input type="email" id="id" name="id" />
    </label>
    <label>
      <span for="pw">비밀번호</span>
      <input type="password" id="pw" name="pw" />
    </label>
	</form>
    <p class="forgot-pass">Forgot password?</p>
    <button type="button" class="submit" id="lbtn">Sign In</button>
    <button type="button" class="fb-btn">Connect with <span>facebook</span></button>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>New here?</h2>
        <p>Sign up and discover great amount of new opportunities!</p>
      </div>
      <div class="img__text m--in">
        <h2>One of us?</h2>
        <p>If you already has an account, just sign in. We've missed you!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Sign In</span>
      </div>
    </div>
    <form id="frm1" name="frm1">
    <div class="form sign-up">
      <label><span>이메일</span>
        <input type="email" name="email" id="email">
      </label>
      <label><span>비밀번호</span>
        <input type="password" name="pwe" id="birth">
      </label>
      <label><span>비밀번호확인</span>
        <input type="password" name="pwa" id="bitrh">
      </label>
      <label><span>이름</span>
        <input type="text" name="idx" id="idx">
      </label>
      <label><span>사업자번호</span>
        <input type="text" name="bno" id="bno">
      </label>
      <label><span>생년월일</span>
        <input type="text" name="birth" id="birth">
      </label>
      <br>
      		<center><span>차량 선택 : </span>
      		<select name="opt" style="margin: 10px;">
                           <option value="1" id="ab1">소형</option>
                           <option value="2" id="ab2">경형</option>
                           <option value="3" id="ab3">준중형</option>
                           <option value="4" id="ab4">중형</option>
                           <option value="5" id="ab5">준대형</option>
                           <option value="6" id="ab6">대형</option>
                           <option value="7" id="ab7">스포츠카</option>
                           <option value="8" id="ab8">기타</option>
                        </select>
             </center>
      <button type="button" class="submit" id='pbtn'>Sign Up</button>
      </form>
    </div>
  </div>
</div>

<a href="https://dribbble.com/shots/3306190-Login-Registration-form" target="_blank" class="icon-link">
  <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
</a>
<a href="https://twitter.com/NikolayTalanov" target="_blank" class="icon-link icon-link--twitter">
  <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
</a>
</body>
</html>