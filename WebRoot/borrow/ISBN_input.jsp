<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<div class="content">
	<div class="header">
		<h1 class="page-title">输入书目编号</h1>
	</div>
	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading">输入书目编号</p>
				<div class="block-body">
					<form id="addUserForm" action="${pageContext.request.contextPath}/Servlet/BorrowAction?method=ISBNList"
						method="post">
						<input type="hidden"  name="method" value="borrowQuery"> 
						<label>书目编号ISBN</label> 
						<input  id="userid"type="text" class="span5"
							name="ISBN" />
						<br> <input type="submit" class="btn btn-primary "
							value="查询"> <label class="remember-me"></label>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="/common/foot.jsp"%>