<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.ecommerce.model.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.connection.DbCon" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ecommerce.dao.OrderDao" %>
<%
		DecimalFormat dcf = new DecimalFormat("#.##");
		request.setAttribute("dcf", dcf);
		User auth = (User) request.getSession().getAttribute("auth");
		List<Order> orders = null;
		if (auth != null) {
			request.setAttribute("person", auth);
			OrderDao orderDao  = new OrderDao(DbCon.getConnection());
			orders = orderDao.userOrders(auth.getId());
		}else{
			response.sendRedirect("login.jsp");
		}
		ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
		if (cart_list != null) {
			request.setAttribute("cart_list", cart_list);
		}


//    		User auth = (User) request.getSession().getAttribute("auth");
//		    if (auth != null) {
//		        request.setAttribute("person", auth);
//		    }
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