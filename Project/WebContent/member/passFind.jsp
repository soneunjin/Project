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
	tr {
 border: 0px solid none;
}
k:hover {
 text-decoration: none;
 color: #9354ED
}


</style>
<script type="text/javascript">
/*
// 클릭시 인증번호 출력
$('#sbtn').click(function(){
		$('#clickEvt').css('display','inline-block');
	})
// 10px, 10px 상자에 마우스 올리면 인증번호창 활성화
$("#clickEvt").mouseover(function(){
    $("#clickEvt").addClass("firstDiv");
});
 // 인증번호 입력시 button div 생성
$('#chkey').keyup(function(){
	$('#clickEvt').addClass('he-10');
});
$('#cbtn').click(function(){
	$(location).attr('href', '/Project/main.cls');
});
*/
	
	$(document).ready(function () {
		
		// 아이디 찾기 버튼
		$('#sbtn').click(function () {
			 // 1. 데이터 읽고
	         var sid = $('#name').val();
	         var spw = $('#email').val();
	         // 2. 유효성 검사하고
	         if(!sid){
	            $('#name').focus();
	            alert('올바른 이름이 아닙니다.')
	            return;
	         }
	         if(!spw){
	            $('#email').focus();
	            alert('올바른 아이디가 아닙니다.')
	            return;
	         }
			$('#frm').submit();
		});
		
		// 취소버튼
		$('#cbtn').click(function() {
			$(location).attr('href','/Project/member/login.jsp');
		});
	});

	 </script>
</head>
<body>
	<table width="1330px" height="430px" align="center">
    <tr>
     <td>
      <table width="600px" align="center" border="0" style="color: black; background-color: #F6F6F6; font-size: 20px;">
       <tr>
        <td>
         <table width="750px" align="center" border=0; style="background-color: #d4af7a; margin-top: 3%">
          <tr>
           <td align="center"></td>
           <td align="center">비밀번호 찾기</td>
          </tr>
         </table>
        </td>
       </tr>
       
       <tr>
           <td align="center">
            <table width="300px" height="20px" border="0" style="margin-top: 3%; font-size: 18px;">
             <br>
             <br>
             <tr>
              <td align="center">&nbsp;&nbsp;</td>
              <td align="center">&nbsp;이름,이메일로 찾기</td>
             </tr>
            </table>
           </td>
          </tr>
		  <form method="post" action="/Project/member/PwFindProc.cls" id="frm">
          <td>
           <table width="380px" height="70px" align="center" border="0" style="font-size: 16px;">
            <tr>
             <td>이름</td>
             <td><input type="text" name="name" id="name"></td>
            </tr>
            
            <tr>
             <td style="text-align: center;">e-mail&nbsp;</td>
             <td>
             	<input type="text" name="email" id="email">
             </td>
            </tr>
           </table>
          </td>
          <tr>
           <td>
            <table width="140px" height="10px" border="0" style="margin-top: 2%" align="center">
             <tr>
              <td>
              	<input type="button" name="sbtn" id="sbtn" value="찾기" align="center" style="cursor: pointer; background: white; color: black; border-color: black; ">
              </td>
              <td>
              	<input type="button" name="cbtn" id="cbtn" value="취소" align="center" style="cursor: pointer; background: white; color: black; border-color: black; ">
               </td>
             </tr>
            </table>
            <br>
           </td>
		  </form>
          </tr>
         </table>
        </td>
       </tr>
      </table>
      </body>
</html>