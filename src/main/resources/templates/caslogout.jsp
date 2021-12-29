<%@page import="org.jasig.cas.client.authentication.AttributePrincipal"%>
<%@page import="java.security.Principal"%>
<%@page import="java.lang.reflect.Field"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<%
	session.invalidate();
	String redirectURL = "http://ids.wisedu.com.cn:9086/authserver/logout?service=http://127.0.0.1:9082/ssodemo/caslogin.jsp";
	response.sendRedirect(redirectURL);
%>
<body>
	
</body>
</html>
