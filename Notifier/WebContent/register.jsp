<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-3"
				style="margin: auto; max-width: 500px; margin-top: 5px">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fas fa-sign-in-alt fa-3x"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-sucess");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>
						Login<a href="login.jsp"> Click Here</a>
					</div>
					<%
					session.removeAttribute("reg-sucess");
 
					}
					%>


					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
					<%
					session.removeAttribute("failed-msg");

					}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Full
									Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="fname" placeholder="Enter Your Full Name" required="required">
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Email
									Address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="uemail" placeholder="Enter Your Email" required="required">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword"
									placeholder="Enter Your Password" required="required">
							</div>
							<button type="submit"
								class="btn-lg btn-outline-primary btn-block">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
		<%-- <%@include file="all_component/footer.jsp"%> --%>
</body>
</html>