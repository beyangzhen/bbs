<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<form action="admin/Login_login" method="post">
  	
  	  <!-- struts标签value中写方法只能用action中的方法 -->
	  <s:property value="getText('login.username')"/><input name="username" />
	  <s:property value="getText('login.password')"/><input name="password" type="password" />
	  <input type="submit" value="<s:property value="getText('login.login')"/>" /> 
	</form>
	<s:debug></s:debug>
	
	<!-- 在页面上实现中文/英文切换，通过 url带参数"request_locale" -->
    <a href="admin/lang?request_locale=en_US">EN</a> /
	<a href="admin/lang?request_locale=zh_CN">中</a>
  </body>
</html>
