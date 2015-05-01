<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/loginhead.jsp"%>
<div class="row-fluid">
	<div class="dialog">
		<div class="block">
			<p class="block-heading">登录</p>
			<div class="block-body">
				<form name="loginForm"
					action="${pageContext.request.contextPath}/Servlet/UserAction"
					method="post">
					<input type="hidden" name="method" value="login">
					<label>学号</label> <input id="username" type="text" name="id"
						value="${user.id}" class="span12"> <label>密码</label>
					<input id="password" name="password" type="password" class="span12">
					<input type="submit" class="btn btn-primary pull-right" value="登录">
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
		<p></p>
	</div>
</div>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>