<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-3"
				style="margin: auto; max-width: 500px; margin-top: 50px">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fas fa-user fa-3x"></i>
						<h4>Login</h4>
					</div>	
						<%
						String invalidMsg = (String) session.getAttribute("login-failed");
						if(invalidMsg != null)
						{ 
						%>
							<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
						<%
						session.removeAttribute("login-failed");
						}
						%>

<%

String withoutLogin=(String) session.getAttribute("login-error");
if(withoutLogin!=null)
{%>
	
	<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
	
<%
session.removeAttribute("login-error");
}

%>


<%
String lgMsg=(String)session.getAttribute("logoutMsg");
if(lgMsg!=null)
{%>
	
	<div class="alert alert-success" role="alert"><%=lgMsg%></div>
	
<%

session.removeAttribute("logoutMsg");

}
%>

					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Email
									Address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="uemail" placeholder="Enter Your Email">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword"
									placeholder="Enter Your Password">
							</div>
							<button type="submit"
								class="btn-lg btn-outline-primary btn-block">Login</button>
						</form>

					</div>
				</div>
			</div>
		</div>
</body>
</html>