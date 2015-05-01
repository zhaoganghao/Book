<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/usersList.css">
<div class="content">
	<div class="header">
		<h1 class="page-title">借阅管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
				<div class="block-body">
					<form id="addUserForm" action="${pageContext.request.contextPath}/Servlet/BorrowAction"
						method="post">
						<input type="hidden"  name="method" value="borrowQuery"> 
						学号：<input  id="userid"type="text" class="span5"
							name="userid" />
						 <input type="submit" class="btn btn-primary "
							value="查询"> <label class="remember-me"></label>
						<div class="clearfix"></div>
					</form>
				</div>
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>编号</th>
								<th>用户</th>
								<th>学号</th>
								<th>借书时间</th>
								<th>应还时间</th>
								<th>续借次数</th>
								<th>所剩天数</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="data">
								<tr>
									<td>${data.id }</td>
									<td>${data.user.name }</td>
									<td>${data.user.id }</td>
									<td>${data.borrowTime }</td>
									<td>${data.shouldTime }</td>
									<td>${data.state}</td>
									<td>
									${data.size }天
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="paging"><%@include file="/common/page.jsp"%></div>
			</div>
		</div>
	</div>
</div>
<%@include file="/common/foot.jsp"%>
