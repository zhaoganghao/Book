<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>本馆概述</title>
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
            <div class="wrap block-3 pad-2">
                <div>
                    <h3 class="p5">图书馆简介</h3>
                   
                    <p class="p6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;武汉图书馆始建于1946年10月，其前身是&ldquo;汉口市立图书馆&rdquo;，1953年正式更名为武汉图书馆，2000年12月搬迁至现址（建设大道861号）并对外开放。现址位于人文气息浓郁、人口密集的汉口建设大道金融一条街上，建筑面积3.2万平方米，拥有借阅合一阅览室、参考文献阅览室、古籍阅览室及多功能报告厅、学术活动室等多个功能服务区16个，并配有计算机网络系统、卫星通讯系统、安全防护监护系统等现代化智能化设施设备。 </p>
                    <a href="#" class="button">More</a>
                </div>
                <div>
                    <h3 class="p6">图书馆历史</h3>
                    <div class="box-1">
                        <span>1987 -</span>
                        <p class="extra-wrap"> 荣获公共文化设施管理先进单位、   全国"全民读书月"活动优秀组织奖。 </p>
                </div>
                    <div class="box-1">
                        <span>1989 -</span>
                        <p class="extra-wrap"> 荣获全省文化单位改革先进集体、   "以文补文"活动先进单位。 </p>
                </div>
                    <div class="box-1">
                        <span>1992 -</span>
                        <p class="extra-wrap">    全省文化系统教育工作先进单位、全国&ldquo;以文补文&rdquo;先进集体金马奖。  </p>
                </div>
                    <div class="box-1 p4">
                        <span>1993 -</span>
                        <p class="extra-wrap"> 荣获全省研究级文献收藏单位、全国文献资源调查研究工作先进单位、全省第一至五届图书馆服务宣传周活动先进集体 。   </p>
            </div>
                    <a href="#" class="button">More</a>
                </div>
                <div class="last">
                    <h3 class="p6">机构设施</h3>
              
                    
              <ul class="list-1 p4 left-1">
                    	<li><a href="#">图书馆领导</a></li>
                        <li><a href="#">文献采访部</a></li>
                        <li><a href="#">文献编辑部</a></li>
                        <li><a href="#">借阅部</a></li>
                        <li><a href="#">参考咨询部</a></li>
                        <li><a href="#">历史文献部</a></li>
                        <li><a href="#">报刊部</a></li>
                        <li><a href="#">信息服务部</a></li> 
                </ul>
                    <a href="#" class="button">More</a>
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