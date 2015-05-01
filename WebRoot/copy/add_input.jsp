<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/head.jsp"%>
<%@include file="/common/left.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/input.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/pikaday.css">
<c:if test="${user.aid.state!=0 }">
<c:redirect url="/login.jsp"></c:redirect>
</c:if>
<script type="text/javascript">
	function submit1() {
		var myInput = document.createElement("input");
		myInput.type = "hidden";
		myInput.name = "label";
		myInput.value = "save";
		$("a_i_form").appendChild(myInput);
		var istrue = isvalidate();
		if (istrue) {
			$("a_i_form").submit();
		} else {
			alert("保存失败");
		}
	}
	function submit2() {
		var myInput = document.createElement("input");
		myInput.type = "hidden";
		myInput.name = "label";
		myInput.value = "submit";
		$("a_i_form").appendChild(myInput);
		var istrue = isvalidate();
		if (istrue) {
			$("a_i_form").submit();
		} else {
			alert("保存失败");
		}
	}
	//创建ajax引擎
	function getXmlHttpObject() {

		var xmlHttpRequest;
		//不同的浏览器获取对象xmlhttprequest 对象方法不一样
		if (window.ActiveXObject) {

			xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");

		} else {

			xmlHttpRequest = new XMLHttpRequest();
		}

		return xmlHttpRequest;

	}

	var myXmlHttpRequest = "";

	function getCities() {

		myXmlHttpRequest = getXmlHttpObject();

		if (myXmlHttpRequest) {

			var url = "${pageContext.request.contextPath}/Servlet/InformationAction";//post
			var data = "method=getCountry&" + "pid=" + $('aid').value;
			myXmlHttpRequest.open("post", url, true);//异步方式

			myXmlHttpRequest.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");

			//指定回调函数
			myXmlHttpRequest.onreadystatechange = chuli;

			//发送
			myXmlHttpRequest.send(data);
		}
	}

	function chuli() {
		if (myXmlHttpRequest.readyState == 4) {

			if (myXmlHttpRequest.status == 200) {

				//取出服务器回送的数据

				var countrys = myXmlHttpRequest.responseXML
						.getElementsByTagName("mess");

				$('caid').length = 0;
				var myOption = document.createElement("option");
				myOption.value = "";
				myOption.innerText = "--县局--";
				//添加到
				$('caid').appendChild(myOption);

				//遍历并取出城市
				for ( var i = 0; i < countrys.length; i++) {

					var country_id = countrys[i].childNodes[0].childNodes[0].nodeValue;
					var country_name = countrys[i].childNodes[1].childNodes[0].nodeValue;
					//创建新的元素option

					var myOption = document.createElement("option");
					myOption.value = country_id;
					myOption.innerText = country_name;
					//添加到
					$('caid').appendChild(myOption);
				}
			}
		}
	}

	//这里我们写一个函数
	function $(id) {
		return document.getElementById(id);
	}
</script>

<div class="content">
	<div class="header">
		<h1 class="page-title">添加图书信息</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="comInfBox">
				<form id="a_i_form"
				action="${pageContext.request.contextPath}/Servlet/BookAction"
					method="post">
					<input type="hidden" name="method" value="add">
					<table id="tabComInf" class="table table-bordered"
						contenteditable="false">
						<thead>
							<tr>
								<th colspan="2" class="tabtitle">添加图书信息</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>书目
									<div class="infIntr"></div>
								</td>
								<td><select id="did" name="categoryid" id="label2">
										<c:forEach items="${categorys}" var="category">
											<option value="${category.id}">${category.name}</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td>图书名
									<div class="infIntr"></div>
								</td>
								<td><input id="encode" name="name" type="text"
									id="textfield" onblur="strValidate('encode',5)" /><span>不能为空，字符不能超过5个</span>
								</td>
							</tr>
							<tr>
								<td>ISBN
									<div class="infIntr"></div>
								</td>
								<td><input id="department" name="ISBN" type="text"
									onblur="strValidate('department',20)" /><span>不能为空，字符不能超过20个</span>
								</td>
							</tr>
							<tr>
								<td>作者
									<div class="infIntr"></div>
								</td>
								<td><input id="department" name="author" type="text"
									onblur="strValidate('department',20)" /><span>不能为空，字符不能超过20个</span>
								</td>
							</tr>
							<tr>
								<td>数量
									<div class="infIntr"></div>
								</td>
								<td><input id="department" name="num" type="text"
									onblur="strValidate('department',20)" /><span>不能为空，字符不能超过20个</span>
								</td>
							</tr>
							<tr>
								<td>描述
									<div class="infIntr"></div>
								</td>
								<td><textarea id="content2" name="descr"
										onblur="nullValidate('content2',10)"></textarea><span>不能为空</span>
								</td>
							</tr>
								<td colspan="2"><input type="submit" value="保存"						
									 class="btn btn-primary"></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/js/information_input.js"></script>
<script src="${pageContext.request.contextPath}/js/area/define.js"></script>
<script src="${pageContext.request.contextPath}/js/area.js"></script>
<script src="${pageContext.request.contextPath}/js/pikaday.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/inputTime1.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/input.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>