<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    UserDetails user2=(UserDetails)session.getAttribute("userD");
    
    if(user2==null)
    {
    	response.sendRedirect("login.jsp");
    	session.setAttribute("login-error", "Please Login First to Access Your Notes...");
    }
    %>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home : Notifier</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>


<div class="container-fluid p-0"> 
<%@include file="all_component/navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/papar.png" class="img-fluid mx-auto" style="max-width: 580px;">
<h1>START WRITING YOUR NOTES WITHOUT PAPER...</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary btn-lg">Start Here</a>
</div>
</div>
</div>

<%@include file="all_component/footer.jsp" %>
</body>
</html>