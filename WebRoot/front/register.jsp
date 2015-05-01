<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
table,table td {
	margin: 20px auto 20px !important;
	border: 2px solid #EBEBEC !important;
	text-align: left;
}

table td {
	height: 30px;
}

table {
	margin-bottom: 100px !important;
	padding-bottom: 100px !important;
}
</style>
<title>图书馆主页</title>
<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" media="screen"
		href="${pageContext.request.contextPath}/front/css/reset.css">
		<link rel="stylesheet" type="text/css" media="screen"
			href="${pageContext.request.contextPath}/front/css/style.css">
			<link rel="stylesheet" type="text/css" media="screen"
				href="${pageContext.request.contextPath}/front/css/grid_12.css">
				<link rel="stylesheet" type="text/css" media="screen"
					href="${pageContext.request.contextPath}/front/css/slider.css">
					<link href='http://fonts.googleapis.com/css?family=Condiment'
						rel='stylesheet' type='text/css'>
						<link href='http://fonts.googleapis.com/css?family=Oxygen'
							rel='stylesheet' type='text/css'>
							<script
								src="${pageContext.request.contextPath}/front/js/jquery-1.7.min.js"></script>
							<script
								src="${pageContext.request.contextPath}/front/js/jquery.easing.1.3.js"></script>
							<script
								src="${pageContext.request.contextPath}/front/js/tms-0.4.x.js"></script>
							<script>
								$(document).ready(function() {
									$('.slider')._TMS({
										show : 0,
										pauseOnHover : true,
										prevBu : false,
										nextBu : false,
										playBu : false,
										duration : 1000,
										preset : 'fade',
										pagination : true,
										pagNums : false,
										slideshow : 7000,
										numStatus : true,
										banners : 'fromRight',
										waitBannerAnimation : false,
										progressBar : false
									})
								});
							</script>
							<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
							<!--[if lt IE 9]>
   		<script type="text/javascript" src="${pageContext.request.contextPath}/front/js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/front/css/ie.css">
	<![endif]-->
</head>
<body>
	<div class="main">
		<!--==============================header=================================-->
		<%@ include file="header.jsp"%>

		<!--==============================content================================-->
		<section id="content">
		<div class="ic"></div>
		<div class="aside">
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/Servlet/UserAction"
				method="post">
				<input type="hidden" name="method" value="add">
				<table width="557" align="center" class="table" style="width:50%">
					<tr>
						<td width="245">学号</td>
						<td width="296"><input type="text" 
							" name="id">
						</td>
					</tr>
					<tr>
						<td>姓名;</td>
						<td><input type="text" 
							 name="name">
						</td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="password" name="password"
							>
						</td>
					</tr>
					<tr>
						<td>学历</td>
						<td><select  name="diploma">
								<option>专科</option>
								<option>本科</option>
								<option>硕士</option>
								<option>研究生</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>性别</td>
						<td><label class="radio"> <input type="radio"
								value="男" name="sex" checked="checked"> 男 
						</label> <label class="radio"> <input type="radio" value="女"
								name="sex"> 女 
						</label>
						</td>
					</tr>
					<tr>
						<td>学院</td>
						<td><input type="text" name="department"
							>
						</td>
					</tr>
					<tr>
						<td>入学年份</td>
						<td><input type="text"  name="toschool"
							>
						</td>
					</tr>
					<tr>
						<td>班级</td>
						<td><input type="text"  name="classs"
							>
						</td>
					</tr>
					<tr>
						<td>电话</td>
						<td><input type="text" name="phone"
							>
						</td>
					</tr>
					<tr>
						<td>电子邮件</td>
						<td><input type="text"  name="email"
						>
						</td>
					</tr>

					<tr>
						<td colspan="2" align="center"> <input type="submit"  value="提交">
						</td>
					</tr>

				</table>
			</form>
		</div>
		</section>
	</div>
		<%@ include file="footer.jsp"%>
</body>
</html>