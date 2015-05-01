<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,cn.wtu.model.User" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>咨询</title>
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
<%
	User user = (User) request.getSession().getAttribute("user");
	if (user == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
%>
<body>
 <div class="main">
  <!--==============================header=================================-->
   <%@ include file="header.jsp"%>  
  <!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3 class="p5">地点</h3>
                    <div class="map img-border">
                      <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                    </div>
                    <dl>
                       <!--  <dt>8901 Marmora Road,<br>Glasgow, D04 89GR.</dt>
                        <dd><span>Freephone: </span>+1 800 559 6580</dd>
                        <dd><span>Telephone: </span>+1 800 603 6035</dd>
                        <dd><span>Fax: </span>+1 800 889 9898</dd>
                        <dd><span>E-mail: </span><a href="#" class="link">mail@demolink.org</a></dd> -->
                    </dl> 
                </div>
                <div class="block-6">
                    <h3>咨询留言</h3>
                    <form id="form" method="post" action="${pageContext.request.contextPath}/Servlet/MessageAction" >
                     <input type="hidden" name="method" value="add"/>
  <input type="hidden" name="userid" value="${user.id }"/>
                      <fieldset>
                        <label><textarea name="cont"onBlur="if(this.value==''){this.value='Message'}" onFocus="if(this.value=='Message'){this.value=''}">Message</textarea></label>
                        <div class="btns"><a href="#" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>
                      </fieldset>  
                    </form> 
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
    </section> 
  </div>    
<!--==============================footer=================================-->
    <footer>
		<p>Professional free web templates <a href="http://www.websitetemplatesonline.com" target="_blank">at www.websitetemplatesonline.com</a>. | <a href="http://www.flashtemplates.com/" title="Flash Templates">Flashtemplates.com</a>. Flash Design - the Smart Choice.</p>
        <p>© 2012 Global</p>
        <p><a rel="nofollow" href="http://templatemonster.com/" target="_blank" class="link">Website Template</a> by TemplateMonster.com</p>
    </footer>	    
</body>
</html>