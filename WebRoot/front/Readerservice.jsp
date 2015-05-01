<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>读者服务</title>
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
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3>读者服务</h3>
                     <ul class="list-1">
                    	<li><a href="#">图书续借</a></li>
                        <li><a href="#">图书预约</a></li>
                        <li><a href="#">馆际互借</a></li>
                        <li><a href="#">文献传递</a></li>
                        <li><a href="#">少儿服务</a></li>
                        <li><a href="#">通借通还</a></li>
                        <li><a href="#">流动图书车</a></li>
                        <li><a href="#">短信服务</a></li>
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">联合参考咨询</a></li>
                        <li><a href="contacts.jsp">咨询台</a></li>
               
                    </ul>
                </div>
                <div class="block-6">
                    <h3 class="p6">读者服务--续借与预约</h3>
                    <div class="wrap">
                      <h2>一、图书续借</h2>
<p>根据我馆的《书刊资料外借规则》，读者外借的图书如果没有超期，并且没有人预约该书，则可以续借一次，即延长30天的借期。</p>
<p>续借期是从进行续借操作的日期开始，向后延30天。例如：读者在5月9日外借了一本书，那么应还日期是6月8日，如果读者在5月20日进行了续借，应还日期则变为6月19日。</p>
<p>读者可以到馆续借、电话续借或网上续借。续借电话为：65210248、65210457 (自助)。
网上续借的网址为：http://www.cqlib.cn 。</p>
<p><strong>图书网上续借具体操作步骤如下：</strong></p>
                <p class="p1">1． 点击"借阅登录"，进入登录界面；
<br>2． 输入自己的读者卡上的ID号码及密码，点击"登录"； 
<br>3． 点击图书续借图标，系统显示出您的在借图书的信息；
<br>4． 点击对应图书下的"续借"，即可完成该书的续借，也可以点击一键续借来续借全部图书。
<br>注意：读者登录的初始密码为读者的出生年月日，为八位数。如：1991年1月6日出生的读者，初始密码为"19910106"。使用非身份证等证件办理的，初始密码为"12345678"。读者在首次登录后，请务必自行修改密码。 </p>
                    	
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