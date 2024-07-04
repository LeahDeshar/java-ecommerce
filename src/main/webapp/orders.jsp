<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.ecommerce.model.*" %>
    <%
    		User auth = (User) request.getSession().getAttribute("auth");
		    if (auth != null) {
		        request.setAttribute("person", auth);
		    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
<%@include file="includes/footer.jsp" %>
</body>
</html>