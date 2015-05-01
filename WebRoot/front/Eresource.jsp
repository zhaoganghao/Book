<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电子资源</title>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
    <link href='http://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
</head>

<body>
 <div class="main">
  <!--==============================header=================================-->
   <%@ include file="header.jsp"%><!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="container_12">
          <div class="grid_12">
                <div class="pad-3">
                    <h3 class="p5">电子资源</h3>
                     <div class="block-8 wrap">
                     	<div>
                        	<img src="images/page4-img3.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>中文数据库</strong></a></p>
                    		<p>《万方数据库》、《中国期刊网》、《维普中文科技期刊数据库》
、《国研报告》、《中经专网》、《中国资讯行》、《中宏数据库》... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<img src="images/page4-img6.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>试用数据库</strong></a></p>
                    		<p>《北大方正艺术博物馆》、《海讯通(高教版)中国进出口贸易信息分析系统》、《墨香华文数字报纸平台》、《ARTstor数字图片库》... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div class="last">
                        	<img src="images/page4-img2.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>外文数据库</strong></a></p>
                    		<p>《Springer电子期刊》、《EBSCO外文数据库》、
 《万方外文文献数据库》《国道外文特色专题数据库》... <a href="#" class="link">Read More</a></p>
                        </div>
                     </div>
                     <div class="block-8 wrap top-3">
                     	<div>
                        	<img src="images/page4-img4.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>网络免费资源</strong></a></p>
                    		<p>《CALIS外文期刊网》... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<img src="images/page4-img5.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>ABI数据库</strong></a></p>
                    		
                        </div>
                        <div class="last">
                        	<img src="images/page4-img1.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>电子资源使用说明</strong></a></p>
                    		
                        </div>
                     </div>
                </div>
          </div>
          <div class="clear"></div>
        </div>
    </section>
  </div>
<!--==============================footer=================================-->
    <%@ include file="footer.jsp"%> 
</body>
</html>