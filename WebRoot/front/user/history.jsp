<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
	<%@include file="/front/user/header.jsp"%>
 <div id="content">
 	<p style="margin: 0px;padding:10px;	background:#E1E7F5; "><strong>欢迎${user.name }来到武汉纺织大学图书馆</strong></p>
 
 <table width="800" class="table"style="margin-bottom: 0px;width:70%" align="center" cellpadding="0" cellspacing="0">
  
  <c:if test="${historys!=null}">
  <tr>
    <td width="127" height="50">序号</td>
    <td width="127">书名</td>
    <td width="103">ISBN</td>
    <td width="105" height="50">借书时间</td>
    <td width="105" height="50">还书时间</td>
  </tr>
  <c:forEach items="${historys }" var="history">
  <tr>
    <td height="50">${history.id }</td>
    <td>${history.book.name }</td>
     <td height="50">${history.book.ISBN }</td>
    <td><fmt:formatDate value="${history.borrowTime }" pattern="yyyy/MM/DD"/></td>
    <td><fmt:formatDate value="${history.returnTime }" pattern="yyyy/MM/DD"/></td>
   
  </tr>
   </c:forEach>
   </c:if>
   <c:if test="${historys==null}">
   <tr align="center"><td colspan="6" align="center">没有借书记录</td></tr>
   
   
   </c:if>
</table>
                   


 
 
 </div>
 <div id="food">
 <p style="padding-top: 10px">版权：武汉纺织大学信管1101  地址：武汉市武汉纺织大学</p>
   <p>  © 2014 The library</p>
 
 </div>
</div>
  </body>
</html>
