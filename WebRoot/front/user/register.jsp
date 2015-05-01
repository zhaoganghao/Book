<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
 <div class="container" style="border:2px;">
  <form class="form-horizontal" style="padding-left: 300px;" 
  action="${pageContext.request.contextPath}/Servlet/UserAction" method="post"
  >
  <input type="hidden" name="method" value="add">
    <fieldset style="border: 2px;">
      <div id="legend" class="">
        <legend class="">注册用户</legend>
      </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">学号</label>
          <div class="controls">
            <input type="text" placeholder="输入学号" class="input-xlarge" name="id">
            <p class="help-block">不能为空</p>
          </div>
        </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">姓名</label>
          <div class="controls">
            <input type="text" placeholder="输入姓名" class="input-xlarge" name="name">
            <p class="help-block">不能为空</p>
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01" >密码</label>
          <div class="controls">
            <input type="password" placeholder="密码" name="password"class="input-xlarge">
            <p class="help-block">不超过16位</p>
          </div>
        </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">确认密码</label>
          <div class="controls">
            <input type="password" placeholder="确认密码" class="input-xlarge">
          </div>
        </div><div class="control-group">

          <!-- Select Basic -->
          <label class="control-label">学历</label>
          <div class="controls">
            <select class="input-xlarge" name="diploma">
      <option>专科</option>
      <option>本科</option>
      <option>硕士</option>
      <option>研究生</option></select>
          </div>

        </div>

    

    <div class="control-group">
          <label class="control-label">性别</label>
          <div class="controls">
      <!-- Multiple Radios -->
      <label class="radio">
        <input type="radio" value="男" name="sex" checked="checked">
        男
      </label>
      <label class="radio">
        <input type="radio" value="女" name="sex">
        女
      </label>
  </div>

        </div>

    

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">学院</label>
          <div class="controls">
            <input type="text" placeholder="学院" name="department"class="input-xlarge">
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">入学年份</label>
          <div class="controls">
            <input type="text" placeholder="入学年份"name="toschool" class="input-xlarge">
          </div>
        </div><div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">班级</label>
          <div class="controls">
            <input type="text" placeholder="班级" name="classs" class="input-xlarge">
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">电话</label>
          <div class="controls">
            <input type="text" placeholder="电话" name="phone"class="input-xlarge">
          </div>
        </div><div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">电子邮件</label>
          <div class="controls">
            <input type="text" placeholder="电子邮件"name="email"class="input-xlarge">
          </div>
        </div>

    
<div class="control-group">

          <!-- Button -->
          <div class="controls">
            <input type="submit" class="btn btn-success">
          </div>
        </div>
    

    </fieldset>
  </form>
</div>
</div>
  </body>
</html>
