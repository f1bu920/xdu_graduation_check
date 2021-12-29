<%@page import="java.util.Map"%>
<%@ page import="java.security.Principal" %>
<%@page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
	String uid = request.getRemoteUser();
	String cn = "";
	if(uid == null || uid == ""){
		response.sendRedirect("login.jsp");
	} else{
		Principal principal = request.getUserPrincipal();
		AttributePrincipal aPrincipal = (AttributePrincipal)principal;
		Map<String, Object> map = aPrincipal.getAttributes();
		cn=(String)map.get("cn");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title></title>
	</head>

	<body>
		Hello,<%=uid%>! Welcome <%=cn %> &nbsp;
		<a href="caslogout.jsp">logout</a>
	</body>
</html>