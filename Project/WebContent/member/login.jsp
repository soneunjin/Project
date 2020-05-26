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
            alert('올바른 아이디가 아닙니다.')
            return;
         }
         if(!spw){
            $('#pw').focus();
            alert('올바른 비밀번호가 아닙니다.')
            return;
         }

         $('#frm').attr('method', 'POST');
         $('#frm').attr('action', '/Project/member/loginProc.cls');
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
      
      // 홈 버튼 처리
      $('#hbtn').click(function(){
         $(location).attr('href', '/Project/main.cls');
      });
      
      //로그인 처리
      $('#pbtn').click(function() {
         $('#frm1').attr('method', 'POST');
         $('#frm1').attr('action', '/Project/member/joinProc.cls');
         $('#frm1').submit();
         
      });
      
      // 아이디 찾기
      $('#findid').click(function(){
    	  $(location).attr('href','/Project/member/id_find.jsp');
      })
      
      // 비밀번호 찾기
      $('#findpw').click(function (){
    	  $(location).attr('href','/Project/member/passFind.jsp');
      })
      
      /*
      $('#findid').mouseover(function(){
    		$('#findid').addClass('overcolor');
    		$('#findid').mouseout(function(){
    			$('#findid').removeClass('overcolor');
    		})
      })
      $('#findpw').mouseover(function(){
    		$('#findpw').addClass('overcolor');
    		$('#findpw').mouseout(function(){
    			$('#findpw').removeClass('overcolor');
    		})
      })
      */
    
   });
</script>
</head>
<body>
   <p class="tip" id="hbtn">집으로 !!</p>
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
    <center>
   <div style="width: 138px;">
    <a href="#" style="text-decoration: none;"><p id="findpw" class="forgot-pass" style=" font-size: 12pt; font-family: Gentium Book Basic, Baekmuk Gentium Book Basic, UnGentium Book Basic, Apple Gothic, Latin font, sans-serif; " >Forgot password?</p></a>
    </div>
      <div style="width: 85px;">
    <a href="#" style="text-decoration: none;"><p id="findid" class="forgot-pass" style=" font-size: 12pt; font-family: Gentium Book Basic, Baekmuk Gentium Book Basic, UnGentium Book Basic, Apple Gothic, Latin font, sans-serif; " >Forgot id?</p></a>
      </div>
      </center>
    <button type="button" class="submit" id="lbtn">Sign In</button>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>새로 가입할랭?</h2>
        <p>가입을 원하면 Sign up!</p>
      </div>
      <div class="img__text m--in">
        <h2>로그인 할랭?</h2>
        <p>준비가 됬으면 Sign In!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Sign In</span>
      </div>
    </div>
    <form id="frm1" name="frm1">
    <div class="form sign-up ">
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
      <label><span>핸드폰번호</span>
        <input type="text" name="phone" id="phone">
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
      </div>
      </form>
    </div>
</body>
</html>