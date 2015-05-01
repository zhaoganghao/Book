<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	import="java.sql.*,cn.wtu.model.User" contentType="text/html; charset=utf-8"%>
	<%@include file="/front/user/header.jsp"%>

	
 <div id="content">
 	<p style="margin: 0px;padding:10px;	background:#E1E7F5; "><strong>欢迎${user.name }来到武汉纺织大学图书馆</strong></p>
 <table width="800" class="table"style="margin-bottom: 0px;width:70%" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="85" height="66"><div align="center"><a href="${pageContext.request.contextPath}/front/user/authority.jsp"><strong>权限查询</strong></a></div></td>
    <td width="438">在这里你可以查看你目前在图书馆所享受的服务</td>
  </tr>
  <tr>
    <td height="56"><div align="center"><a href="${pageContext.request.contextPath}/Servlet/FrontAction?method=borrowQuery&userid=${user.id }"><strong>借阅查询</strong></a></div></td>
    <td>在这里你可以查看你在图书馆当前的借阅、预约情况</td>
  </tr>
  <tr>
    <td height="77"><div align="center"><a href="${pageContext.request.contextPath}/Servlet/FrontAction?method=historyQuery&userid=${user.id }"><strong>借阅史查询</strong></a></div></td>
    <td>在这里你可以查看你在图书馆以往的的借阅、预约情况</td>
  </tr>
  <tr>
    <td height="137"><div align="center"><a href="${pageContext.request.contextPath}/front/user/update_user.jsp"><strong>资料更新</strong></a></div></td>
    <td>在这里你可以更新你的个人资料</td>
  </tr>
  <tr>
    <td height="137"><div align="center"><a href="${pageContext.request.contextPath}/index.jsp"><strong>返回图书馆首页</strong></a></div></td>
    <td></td>
  </tr>
</table>
 
 </div>
 <div id="food">
 <p style="padding-top: 10px">版权：武汉纺织大学信管1101  地址：武汉市武汉纺织大学</p>
   <p>  © 2014 The library</p>
 
 </div>
</div>
  </body>
</html>
