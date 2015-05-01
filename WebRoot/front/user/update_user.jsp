<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@include file="/front/user/header.jsp"%>
<div id="content" class="container">
	<br>
	<form class="form-horizontal"
		action="${pageContext.request.contextPath}/Servlet/UserAction"
		method="post">
<table width="557"  align="center" class="table" style="width:50%">
<input type="hidden" name="method" value="update">
  <tr>
    <td width="245">学号</td>
    <td width="296"><input type="text" placeholder="输入学号" class="input-xlarge"
						name="id" value="${user.id }"></td>
  </tr>
  <tr>
    <td>姓名;</td>
    <td><input type="text" placeholder="输入姓名" class="input-xlarge"
						name="name" value="${user.name }"></td>
  </tr>
  <tr>
    <td>密码</td>
    <td><input type="password" placeholder="密码" name="password"
						class="input-xlarge" value="${user.password }"></td>
  </tr>
  <tr>
    <td>学历</td>
    <td><select class="input-xlarge" name="diploma">
							<option>专科</option>
							<option>本科</option>
							<option>硕士</option>
							<option>研究生</option>
						</select></td>
  </tr>
  <tr>
    <td>性别</td>
    <td><label class="radio"> <input type="radio" value="男"
						name="sex" checked="checked"> 男 </label> <label class="radio">
						<input type="radio" value="女" name="sex"> 女 </label></td>
  </tr>
  <tr>
    <td>学院</td>
    <td>	<input type="text" placeholder="学院" name="department"
						class="input-xlarge" value="${user.diploma }"></td>
  </tr>
  <tr>
    <td>入学年份</td>
    <td><input type="text" placeholder="入学年份" name="toschool"
						class="input-xlarge" value="${user.toschool }"></td>
  </tr>
  <tr>
    <td>班级</td>
    <td>		<input type="text" placeholder="班级" name="classs"
						class="input-xlarge" value="${user.classs }"></td>
  </tr>
  <tr>
    <td>电话</td>
    <td><input type="text" placeholder="电话" name="phone"
						class="input-xlarge" value="${user.phone }"></td>
  </tr>
  <tr>
    <td>电子邮件</td>
    <td><input type="text" placeholder="电子邮件" name="email"
						class="input-xlarge" value="${user.email }"></td>
  </tr>
  
   <tr>
    <td colspan="2"><input type="submit" class="btn btn-success"></td>
      </tr>
  
</table>
</form>
</div>
<div id="food">
	<p style="padding-top: 10px">版权：武汉纺织大学信管1101 地址：武汉市武汉纺织大学</p>
	<p>© 2014 The library</p>

</div>
</div>
</div>
</body>
</html>
