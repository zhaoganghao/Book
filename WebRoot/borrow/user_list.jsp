<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/usersList.css">
<div class="content">
	<div class="header">
		<h1 class="page-title">${user.name }</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
				<div id="addUser">
				</div>
					<form id="addUserForm" action="${pageContext.request.contextPath}/Servlet/BorrowAction"
						method="post">
						<input type="hidden"  name="method" value="borrow"> 
						<input type="hidden"  name="userid" value="${user.id }"> 
                         ISBN :<input  id="userid"type="text" class="span5"
							name="ISBN" />
						<input type="submit" class="btn btn-primary "
							value="借阅"> <label class="remember-me"></label>
						<div class="clearfix"></div>
					</form>
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
								<th>最大借数</th>
								<th>最大预约数</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${borrows}" var="data">
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
									<td>${user.maxNum}</td>
									<td>${user.maxOrder}</td>
								</tr>
							</c:forEach>
							<tr>
								<th colspan="6"></th>
								<th >欠费</th>
								
								<th>${price }</th>
							<td>	<a href="${pageContext.request.contextPath}/Servlet/BorrowAction?method=pay2&userid=${user.id }&ISBN=${ISBN}"
						           class="btn btn-primary">缴费</a>
						           </td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
	</div>
</div>
<%@include file="/common/foot.jsp"%>
