<%-- <%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>  --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.back-img {
	background: url(img/bg1.jpg);
	width: 100%;
	height: 85vh;
}
</style>
<meta charset="ISO-8859-1">
<title> Home : Notifier</title>

<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	
	<div class="container-fluid back-img">
	
	<div class="text-center" id="d1">
	<h1 class="text-dark"> <i class="fas fa-book"></i> Save Your Important Notes</h1>
		<a href="login.jsp" class="btn btn-light"> <i class="fas fa-user"></i> Login</a> 
		<a href="register.jsp" class="btn btn-light" style="margin-left:10px;"> <i class="fas fa-sign-in-alt"></i> Register</a>
	</div>

	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>