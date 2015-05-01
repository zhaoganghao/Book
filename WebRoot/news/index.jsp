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
		<h1 class="page-title">新闻管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
				<div id="addUser">
					<a href="${pageContext.request.contextPath}/Servlet/NewsAction?method=addInput"
						class="btn btn-primary">增加新闻</a>
				</div>
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>编号</th>
								<th>新闻标题</th>
								<th>来源</th>
								<th>作者</th>
								<th>时间</th>
								<th>查看</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="data">
								<tr>
									<td>${data.id }</td>
									<td>
									${data.title }
									</td>
									<td>${data.source }</td>
									<td>${data.author }</td>
									
									<td>${data.date }</td>
									<td><a
										href="${pageContext.request.contextPath}/Servlet/NewsAction?method=updateInput&id=${data.id}">修改</a>
									</td>
									<td>
										<a href="#" onclick="isDel('${pageContext.request.contextPath}/Servlet/NewsAction?method=del&id=${data.id}')">删除</a>
									</td>
									<td>
										<a href="${pageContext.request.contextPath}/Servlet/NewsAction?method=getInfor&id=${data.id}">查看</a>
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
