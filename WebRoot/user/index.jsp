<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/usersList.css">
	<<script type="text/javascript">
<!--
function updateMaxNum(str,id){
str=str+document.getElementById("maxNum"+id).value
window.location=str;
}
function updateMaxOrder(str){
str=str+document.getElementById("maxOrder"+id).value
window.location=str;
}
//-->
</script>
<div class="content">
	<div class="header">
		<h1 class="page-title">用户信息列表</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
					<table class="table table-bordered table-hover"
						contenteditable="false">
						<thead>
							<tr>
								<th>学号</th>
								<th>姓名</th>
								<th>学院</th>
								<th>班级</th>
								<th>学历</th>
								<th>入学时间</th>
								<th>有效期</th>
								<th>电话</th>
								<th>邮件</th>
								<th>性别</th>
								<th>注册时间</th>
								<th>最大借数</th>
								<th>最大预约数</th>
								
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list }" var="data">
								<tr>
									<td>${data.id }</td>
									<td>${data.name }</td>
									<td>${data.department }</td>
									<td>${data.classs }</td>
									<td>${data.diploma }</td>
									<td>${data.toschool }</td>
									<td>${data.period }</td>
									<td>${data.phone }</td>
									<td>${data.email }</td>
									<td>${data.sex }</td>
									<td>${data.date }</td>
									<td >
									
									<input type="text" id="maxNum${data.id }" style="width: 20px;"size="2" value="${data.maxNum }"
									onchange="updateMaxNum('${pageContext.request.contextPath}/Servlet/UserAction?method=updateMaxNum&id=${data.id }&maxNum=',${data.id });">
									
									</td>
									<td>
									
									<input  id="maxOrder${data.id }" type="text"size="2 " style="width: 20px;" value="${data.maxOrder }"  
									onchange="updateMaxOrder('${pageContext.request.contextPath}/Servlet/UserAction?method=updateMaxOrder&id=${data.id }&maxOrder=')">
									</td>
									<td><a href="#"
										onclick="isDel('${pageContext.request.contextPath}/Servlet/UserAction?method=del&id=${data.id}')">删除</a>
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
<script type="text/javascript">
<!--
	function isDel(str) {
		var istrue = window.confirm("是否删除");
		if (istrue) {
			window.open(str);
		}
	}
//-->
</script>
<%@include file="/common/foot.jsp"%>
