<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/usersList.css">
<div class="content">
	<div class="header">
		<h1 class="page-title">借阅史管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>编号</th>
								<th>书名</th>
								<th>ISBN</th>
								<th>学号</th>
								<th>用户名</th>
								<th>借书时间</th>
								<th>还书时间</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="data">
								<tr>
									<td>${data.id }</td>
									<td>${data.book.name }</td>
									<td>${data.book.ISBN }</td>
									<td>${data.user.id }</td>
									<td>${data.user.name }</td>
									<td>${data.borrowTime}</td>
									<td>${data.returnTime}</td>
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
