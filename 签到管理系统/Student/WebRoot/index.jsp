<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	
	</style>
  </head>
  <script type="text/javascript" src="${ctx}/jss/jquery.js"></script>
   <script type="text/javascript" src="${ctx}/jss/login.js"></script>
 
  <body background="${ctx}/tupian/22176b7d13cc44316265628b4c140781.jpeg" style="opacity: 0.8;　">
	  
	  <div style="position: absolute;left:40%; top:30%; border: solid 2px aliceblue; width: 320px; height: 280px; border-radius: 10px; box-shadow: 2px 2px 2px black;">
    <form action="javasrcipt:void(0)">
		<div style="width: 100%; color: azure; padding-top: 20px; height: 30px; font-size: 25px; text-align:center ;">
			login
		</div>
                <div>
                    <input id="user" type="text" class="l_user" name="name" placeholder="请输入用户名" style="width: 270px; height: 40px; border-radius: 10px; border: 0px; margin-left: 25px; margin-top:30px; outline: none; box-shadow: 2px 2px 2px #999; ;" required/>
                </div>
                <div >
                    <input id="mima" type="password"  class="l_pwd"name="pwd" placeholder="请输入密码" style="width: 270px; height: 40px; border-radius: 10px; border: 0px;margin-left: 25px;  margin-top: 30px;outline: none; box-shadow: 2px 2px 2px #999; ;" required/>
                </div>
                <div>
                   <button type="button" class="layui-btn layui-btn-normal" value="登陆" id="log_btn" style="width: 270px; height: 40px; border-radius: 10px; border: 0px;margin-left: 25px;  margin-top: 30px; outline: none;box-shadow: 2px 2px 2px #999; background-color: darkseagreen;" >登陆</button>
                </div>
				
    </form>
	</div>
  </body>
  
</html>