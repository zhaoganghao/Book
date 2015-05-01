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
		<h1 class="page-title">帖子管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>编号</th>
								<th>留言内容</th>
								<th>发帖人</th>
								<th>留言时间</th>
								<th>回帖内容</th>
								<th>回帖时间</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="data">
								<tr>
									<td>${data.id }</td>
									<td>
									${data.cont }
									</td>
									<td>${data.user.name }</td>
									<td>${data.date }</td>
									<td>${data.reply.cont }
									<c:if test="${data.reply==null}">
										<a
										href="${pageContext.request.contextPath}/Servlet/MessageAction?method=replyInput&id=${data.id}&userid=${data.user.id}">回复</a>
									</c:if>
									</td>
									<td>${data.reply.date}</td>
									<td>
										<a href="#" onclick="isDel('${pageContext.request.contextPath}/Servlet/MessageAction?method=del&id=${data.id}')">删除</a>
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
