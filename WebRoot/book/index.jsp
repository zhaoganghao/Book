<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<script type="text/javascript">
<!--
	function isDel(str){
	var istrue=window.confirm("是否删除");
	if(istrue){
		window.location=str;
	}
	}
//-->
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/usersList.css">
<div class="content">
	<div class="header">
		<h1 class="page-title">图书管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
				<div id="addUser">
					<a href="${pageContext.request.contextPath}/Servlet/BookAction?method=addInput"
						class="btn btn-primary">增加图书</a>
				</div>
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>编号</th>
								<th>图书名</th>
								<th>ISBN</th>
								<th>作者</th>
								<th>描述</th>
								<th>上架时间</th>
								<th>书目</th>
								<th>修改</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="data">
								<tr>
									<td>${data.id }</td>
									<td>
									${data.name }
									</td>
									<td>${data.ISBN }</td>
									<td>${data.author }</td>
									<td>${data.descr }</td>
									<td>${data.date }</td>
									<td>${data.category.name }</td>
									<td><a
										href="${pageContext.request.contextPath}/Servlet/BookAction?method=updateInput&id=${data.id}">修改</a>
									</td>
									<td>
										<a href="#" onclick="isDel('${pageContext.request.contextPath}/Servlet/BookAction?method=del&id=${data.id}')">删除</a>
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
