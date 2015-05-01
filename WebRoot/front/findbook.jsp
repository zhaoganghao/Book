<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<%@include file="/common/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书查询</title>
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/front/css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/front/css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/front/css/grid_12.css">
    <link href='http://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <script src="${pageContext.request.contextPath}/front/js/jquery-1.7.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/jquery.easing.1.3.js"></script>
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
    <%@ include file="header.jsp"%><!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="container_12">
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                     <h3>图书分类</h3>
                     <ul class="list-1">
                    	<c:forEach items="${categorys }" var="category">
								<li><a href="<c:url value="/Servlet/FrontAction?method=queryByCategory&category=${category.name }"></c:url>">${category.name }</a>
								</li>
						</c:forEach>
                        
                    </ul>
                </div>
                <div class="wrap block-4">
                  <div>
                            	<img src="${pageContext.request.contextPath}/front/images/t1.jpg" alt="" width="100" height="130" class="img-border">
                                <p><a href="#" class="link"><strong>On show</strong></a></p>
                          
                 </div>
                            <div>
                            	<img src="${pageContext.request.contextPath}/front/images/t2.jpg" alt="" width="100" height="130" class="img-border">
                                <p><a href="#" class="link"><strong>Flower Arranging</strong></a></p>
                               
                 </div>
                            <div>
                            	<img src="${pageContext.request.contextPath}/front/images/t3.jpg" alt="" width="100" height="130" class="img-border">
                                <p><a href="#" class="link"><strong>中国1945：重庆风云</strong></a></p>
                                
                 </div>
                            <div class="last">
                            	<img src="${pageContext.request.contextPath}/front/images/t4.jpg" alt="" width="100" height="130" class="img-border">
                                <p><a href="#" class="link"><strong>毕业以后,一起买房</strong></a>
                 </div>
                  
                   
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
       
                <div class="clear"></div>
 
            </section>
  </div>
<!--==============================footer=================================-->
   <%@ include file="footer.jsp"%> 
</body>
</html>