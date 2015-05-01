<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/common.jsp"%>
<body>
 <header>

	<script src="${pageContext.request.contextPath}/js/information_input.js"></script>
        <h1><a href="${pageContext.request.contextPath}/front/index.html"><img src="${pageContext.request.contextPath}/front/images/logo.png" alt=""></a></h1>
        <div class="form-search">
            <form id="form-search"  action="${pageContext.request.contextPath}/Servlet/FrontAction" method="post">
              <input type="hidden" name="method" value="query"/>
              
              <input type="text"name="content" value="Type here..." onBlur="if(this.value=='') this.value='Type here...'" onFocus="if(this.value =='Type here...' ) this.value=''"  />
              <a href="#" onClick="document.getElementById('form-search').submit()" class="search_button"></a>
            </form>
        </div>   
        <div class="clear"></div>    
        <nav class="box-shadow">
            <div>
                <ul class="menu">
                    <li class="home-page current"><a href="${pageContext.request.contextPath}/index.jsp"><span></span></a></li>
                    <li><a href="${pageContext.request.contextPath}/front/about.jsp">本馆概述</a></li>
                    <li><a href="${pageContext.request.contextPath}/Servlet/FrontAction?method=queryCategory">图书查询</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/Eresource.jsp">电子资源</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/Readerservice.jsp">读者服务</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/user/index.jsp">个人信息</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/contacts.jsp">咨询</a></li>
               
                </ul>
                <div class="social-icons" >
                     <span>读者登入:</span>
                     <c:if test="${user==null }">
                    <a href="${pageContext.request.contextPath}/login.jsp" class="icon-1" ></a>
                    <a href="${pageContext.request.contextPath}/front/register.jsp" class="icon-3"></a>
                    </c:if>
                       <c:if test="${user!=null }">
                          <a href="${pageContext.request.contextPath}/Servlet/UserAction?method=logout&userid=${user.id }" class="icon-2"></a>
                       </c:if>
                </div>
                <div class="clear"></div>
            </div>
        </nav>
    </header>   
</body>
</html>