<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
	<%@include file="/front/user/header.jsp"%>
 <div id="content">
 	<p style="margin: 0px;padding:10px;	background:#E1E7F5; "><strong>欢迎${user.name }来到武汉纺织大学图书馆</strong></p>
 <table  width="600" class="table"style="margin-bottom: 0px;width:50%" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="147" height="50">读者证号:</td>
    <td width="147">${user.id}</td>
    <td width="147">读者名称:</td>
    <td width="193" height="50">&nbsp;${user.name}</td>
  </tr>
  <tr>
    <td height="50">读者类型:</td>
    <td>${user.diploma}</td>
    <td>证有效期:</td>
   
    <td height="50">&nbsp; <fmt:formatDate value="${user.period}" pattern="yyyy/MM/DD"/></td>
  </tr>
   
</table>
<c:if test="${borrows !=null}">
<table  width="800" class="table"style="margin-bottom: 0px;width:70%" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="127" height="50">序号</td>
    <td width="127">书名</td>
    <td width="103">ISBN</td>
    <td width="105" height="50">借书时间</td>
    <td width="125">应还时间</td>
    <td width="126">还剩多少天</td>
  </tr>
  <c:forEach items="${borrows }" var="borrow">
  <tr>
    <td height="50">${borrow.id }</td>
    <td>${borrow.book.name }</td>
     <td height="50">${borrow.book.ISBN }</td>
    <td> <fmt:formatDate value="${borrow.borrowTime }" pattern="yyyy/MM/DD"/></td>
    <td> <fmt:formatDate value="${borrow.shouldTime }" pattern="yyyy/MM/DD"/></td>
    <td>${borrow.size }</td>
   
  </tr>
   </c:forEach>
</table>
           
</c:if>

 
 </div>
 <div id="food">
 <p style="padding-top: 10px">版权：武汉纺织大学信管1101  地址：武汉市武汉纺织大学</p>
   <p>  © 2014 The library</p>
 
 </div>
</div>
  </body>
</html>
