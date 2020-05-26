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
.trang{
	width: 10px;
  height: 27px;
  transition: width 1s;
  margin-bottom:10px;
  background-color: #F6F6F6;
  display: none;
 overflow: hidden; /*내용이 요소 밖으로 나가면 가려줌.*/
}
.firstDiv{
  width: 400px;
  height: 27px;
}

	button {

    width:100px;

    background-color: #f8585b;

    border: none;

    color:#fff;

    padding: 15px 0;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 15px;

    margin: 4px;

    cursor: pointer;

}
.he-10{
	height:54px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#sbtn').click(function() {
			
			$('#frm').submit();
		})
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
      <table width="600px" align="center" border="0"
       style="color: black; background-color: #F6F6F6; font-size: 20px;">
       <tr>
        <td>
         <table width="750px" align="center" border=0;
          style="background-color: #d4af7a; margin-top: 3%">
          <tr>
           <td align="center"></td>
           <td align="center">아이디 찾기</td>
          </tr>
         </table>
        </td>
       </tr>
       
       <tr>
        <td>
         <table width="800px" height="300px" align="center" style="border: dotted 5px none; margin-top: 4%">

          <tr>
           <td align="center">
            <table width="300px" height="30px" border="0" style="margin-top: 3%; color: black; font-size: 18px;">
             <tr>
              <td align="center">&nbsp;&nbsp;
              </td>
              <td align="center">&nbsp;이름,핸드폰번호로 찾기</td>
             </tr>
            </table>
           </td>
          </tr>

          <tr>
           <td>
            <table width="380px" height="70px" align="center" border="0" style="font-size: 16px;">
             <form method="post" action="/Project/member/IdFindProc.cls"id="frm">
             <tr>
              <td>이름</td>
              <td><input type="text" name="name"></td>
             </tr>
             <tr>
              <td>휴대폰</td>
              <td><select name="phone">
                <option value="010" selected="selected">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
              </select> - <input type="text" name="phone1" style="width: 70px">
               - <input type="text" name="phone2" style="width: 70px"></td>
             </tr>
            </table>
           </td>
          </tr>

          <tr>
           <td>
            <table width="140px" height="10px" border="0"
             style="margin-top: 2%" align="center">
             <tr>
              <td id="sbtn" ><input type="button" name="enter2" value="찾기" align="center" style="cursor: pointer; background: white; color: black; border-color: black;"></td>
              <td id="cbtn"><input type="button" name="cancle2" value="취소" align="center" style="cursor: pointer; background: white; color: black; border-color: black;"></td>
             </tr>
             </form>
            </table>
            <br>
           </td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
      <center>
      <div class="trang " id="clickEvt">
      	<b>이메일 인증번호 전송 완료</b>
      <input type="text" placeholder=" 인증번호 " maxlength="6" id="chkey">
      <div>button</div>
      </div>
      </center>
     </body>
</html>