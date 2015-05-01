<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>投诉系统</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/main.css">
<script src="${pageContext.request.contextPath}/lib/jquery-1.7.2.min.js"
	type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/information_input.js"></script>
</head>
<body class="">
	<div class="navbar">
		<div class="navbar-inner">
				<ul class="nav pull-right" style="height:50px;">
					<li id="fat-menu" class="dropdown"><a href="#" role="button"
						class="dropdown-toggle" data-toggle="dropdown"style="height:50px;"> <i
							class="icon-user"></i> 用户 <i class="icon-caret-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="#">欢迎</a>
							</li>
							<li class="divider"></li>
							<li class="divider visible-phone"></li>
							<li><a tabindex="-1" href="${pageContext.request.contextPath}/Servlet/LoginAction?method=logout">退出</a>
							</li>
						</ul>
					</li>
				</ul>
			 <a class="brand" href="index.html"><span class="first">图书</span>&nbsp; <span  style="color: #A58C8C;" class="second">管理系统</span></a>
		</div>
		
    </div>
	</div>
    
