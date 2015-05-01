<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
	<%@include file="/front/user/header.jsp"%>
 <div id="content">
 	<p style="margin: 0px;padding:10px;	background:#E1E7F5; "><strong>欢迎${user.name }来到武汉纺织大学图书馆</strong></p>
<table width="800" class="table"style="margin-bottom: 0px;width:70%" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="147" height="50">最大借数</td>
    <td width="147" height="50">&nbsp;${user.maxNum }</td>
  </tr>
  <tr>
    <td height="50">最大预约数</td>
    <td height="50">&nbsp;${user.maxOrder }</td>
  </tr>
   <tr>
    <td height="50">可借[中文图书 ]</td>
    <td height="50">&nbsp;${user.maxNum }</td>
  </tr>
   <tr>
    <td height="50">可借[西文图书 ]</td>
    <td height="50">&nbsp;${user.maxNum }</td>
  </tr>
</table>
 
 
 </div>
 <div id="food"></div>
</div>
  </body>
</html>
