<%@ page language="java" import="java.util.*,cn.wtu.model.User" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/lib/jquery-1.7.2.min.js"
	type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/information_input.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	User user = (User) request.getSession().getAttribute("user");
	if (user == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
%>
<style type="text/css">
ul li table td tr p {
	font-size: 10px;
	margin: 0;
	padding: 0;
}

#cont {
	width: 900px;
	margin: auto;
	padding: 0;
}

#head {
	height: 250px;
	background-image: url("/Book/images/tushu-1.jpg");
}

{
height
:
500px;

	

}
#navbar ul {
	height: 50px;
	text-align: center;
	vertical-align: middle;
	background-color: #ADB4E0;
	margin: 0px;
}

#navbar ul li {
	font-size: 20px !important;
	list-style: none;
	line-height: 50px;
	width: 140px;
	float: left;
	vertical-align: middle;
	text-align: center;
	margin: 0;
}

#content {
	background: #E1E7F5;
	width: 900px;
	margin: 0;
	text-align: center;
	margin: 0;
}

#food {
	background: #BCC2E6;
	width: 900px;
	height: 100;
	margin: 0;
	text-align: center;
	margin: 0;
}
</style>
 </head>
<body>

	<div id="cont">
		<div id="head"></div>
		<div id="navbar">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/front/user/index.jsp">首页</a>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/front/user/authority.jsp">权限查询</a>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/Servlet/FrontAction?method=borrowQuery&userid=${user.id }">借阅查询</a>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/Servlet/FrontAction?method=historyQuery&userid=${user.id }">借阅史查询</a>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/front/user/update_user.jsp">资料更新</a>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/Servlet/UserAction?method=logout&userid=${user.id }">退出</a>
				</li>

			</ul>

		</div>
