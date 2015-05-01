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
		<div class="ic"></div>
		<div id="slide" class="box-shadow">
			<div class="slider">
				<ul class="items">
					<li><img
						src="${pageContext.request.contextPath}/front/images/t33.jpg"
						alt="" />
						<div class="banner">Welcome to the library&nbsp;</div></li>
					<li><img
						src="${pageContext.request.contextPath}/front/images/t11.jpg"
						alt="" />
						<div class="banner">We Offer many books&nbsp;</div></li>
					<li><img
						src="${pageContext.request.contextPath}/front/images/t22.jpg"
						alt="" />
						<div class="banner">we wish you have a pleasant
							reading&nbsp;</div></li>
				</ul>
			</div>
		</div>


		<div class="container_12 ">
			<div class="grid_12">
				<div class="pad-0 border-1">
					<h3 class="p5">阅读推荐</h3>
					<div class="wrap block-4">
						<div>
							<img src="${pageContext.request.contextPath}/front/images/t1.jpg"
								alt="" width="200" height="260" class="img-border">
								<p>
									<a href="#" class="link"><strong>On show</strong> </a>
								</p>
								<p>临时设计博览会、特别活动和艺术展览</p>
						</div>
						<div>
							<img src="${pageContext.request.contextPath}/front/images/t2.jpg"
								alt="" width="200" height="260" class="img-border">
								<p>
									<a href="#" class="link"><strong>Flower Arranging</strong>
									</a>
								</p>
								<p>这是一本关于插花艺术的知识的普及性读物，介绍了中外插花的历史、发展、等方面的知识。</p>
						</div>
						<div>
							<img src="${pageContext.request.contextPath}/front/images/t3.jpg"
								alt="" width="200" height="260" class="img-border">
								<p>
									<a href="#" class="link"><strong>中国1945：重庆风云</strong> </a>
								</p>
								<p>本书以重庆谈判这一重大历史事件为背景，讲述国共两党之间斗智斗勇的史实。</p>
						</div>
						<div class="last">
							<img src="${pageContext.request.contextPath}/front/images/t4.jpg"
								alt="" width="200" height="260" class="img-border">
								<p>
									<a href="#" class="link"><strong>毕业以后,一起买房</strong> </a>
								</p>讲述20后、50后、80后、90后几代人买房艰辛历程的书。
								</p>
						</div>
					</div>
				</div>
				<div class="wrap block-1 pad-1">
					<div style="width:500px;">
						<h3>新闻发布</h3>

						<ul class="list-1">
							<c:forEach items="${newss }" var="news">
								<li><a href="${pageContext.request.contextPath}/Servlet/NewsAction?method=getNews&id=${news.id }">${news.title }</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					
					<div style="width:300px;">
						<h3>留言</h3>

						<ul class="list-1">
							<c:forEach items="${messages }" var="message">
								<li><a href="${pageContext.request.contextPath}/Servlet/MessageAction?method=getMessage&id=${message.id }">${message.cont }</a>
								</li>
							</c:forEach>
						</ul>
					</div>




				</div>
				<div class="wrap block-1 pad-1">


					<div>
						<h3>活动公告</h3>
						<ul class="list-1">
							<li><a href="#">关于我馆读者短信平台暂停服务的通知</a></li>
							<li><a href="#">2014年"元旦"开放时间通知</a></li>
							<li><a href="#">图书馆12月读者活动安排</a></li>
							<li><a href="#">关于设备检修暂停服务的通知</a></li>
							<li><a href="#">关于《自助图书馆征名》活动延期的通知</a></li>
						</ul>
						<a href="#" class="button">More</a>
					</div>

					<div>
						<h3>本馆动态</h3>
						<ul class="list-1">
							<li><a href="#">关于我馆读者短信平台暂停服务的通知</a></li>
							<li><a href="#">2014年"元旦"开放时间通知</a></li>
							<li><a href="#">图书馆12月读者活动安排</a></li>
							<li><a href="#">关于设备检修暂停服务的通知</a></li>
							<li><a href="#">关于《自助图书馆征名》活动延期的通知</a></li>
						</ul>

						<a href="#" class="button">More</a>
					</div>
					<div class="last">
						<h3>
							<strong>读者园地</strong>
						</h3>
						<ul class="list-1">
							<li><a href="#">关于我馆读者短信平台暂停服务的通知</a></li>
							<li><a href="#">2014年"元旦"开放时间通知</a></li>
							<li><a href="#">图书馆12月读者活动安排</a></li>
							<li><a href="#">关于设备检修暂停服务的通知</a></li>
							<li><a href="#">关于《自助图书馆征名》活动延期的通知</a></li>
						</ul>

						<a href="#" class="button">More</a>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>


		<div class="aside">
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-2 block-2 wrap">
						<div>
							<h3 class="p3">友情链接</h3>
							<p class="p4">

								<a href="#" class="link">新洲区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="#" class="link">江岸区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="#" class="link">江汉区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="#" class="link">汉阳区图书馆</a><br><a href="#"
									class="link">黄陂区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"
									class="link">洪山区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"
									class="link">青山区图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"
									class="link">江夏区图书馆</a>
							</p>
						</div>
						<div class="last">
							<h3 class="p3">常用网站</h3>
							<p class="p4">
								<a href="#" class="link">中国国家图书馆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="#" class="link">全国文化信息资源共享工程</a><br><a href="#"
									class="link">湖北数字文化网</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"
									class="link">武汉城市圈图书馆联盟</a>
							</p>

						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		</section>
	</div>
	<!--==============================footer=================================-->
	<%@ include file="footer.jsp"%>
</body>
</html>