<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<div class="sidebar-nav">
		<a href="${pageContext.request.contextPath}/user/shouye.jsp"
			class="nav-header"><i class="icon-home"></i>首页</a>
		<a
			href="${pageContext.request.contextPath}/Servlet/CategoryAction"
			class="nav-header"><i class="icon-dashboard"></i>书目管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/BookAction"
			class="nav-header"><i class="icon-dashboard"></i>图书管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/BorrowAction"
			class="nav-header"><i class="icon-dashboard"></i>借阅管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/BorrowAction?method=ISBNInput"
			class="nav-header"><i class="icon-dashboard"></i>还书管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/NewsAction"
			class="nav-header"><i class="icon-dashboard"></i>新闻管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/MessageAction"
			class="nav-header"><i class="icon-dashboard"></i>帖子管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/HistoryAction"
			class="nav-header"><i class="icon-dashboard"></i>借阅史管理</a>
			<a
			href="${pageContext.request.contextPath}/Servlet/UserAction"
			class="nav-header"><i class="icon-dashboard"></i>用户管理</a>
			
			
</div>