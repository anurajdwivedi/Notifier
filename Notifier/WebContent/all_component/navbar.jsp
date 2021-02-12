<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Notifier</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"> <i class="fas fa-home"></i>
						Home
				</a></li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp">
						<i class="fas fa-plus-circle"></i> Add Notes
				</a></li>

				<li class="nav-item"><a class="nav-link " href="showNotes.jsp">
						<i class="fas fa-book-open"></i> Show Notes
				</a></li>
			</ul>

			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");
			if (user != null) {
			%>

			<a href="#" class="btn btn-light" style="margin-right: 10px"
				type="submit"> <i class="fas fa-bell"></i>
			</a> <a href="" class="btn btn-light" data-bs-toggle="modal"
				data-bs-target="#exampleModal" type="submit"> <i
				class="fas fa-user"></i> <%=user.getName()%>
			</a> <a href="LogoutServlet" class="btn btn-light"
				style="margin-left: 10px" type="submit"> <i
				class="fas fa-sign-in-alt"></i> Logout
			</a>


			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">User Details</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="container text-center">

								<i class="fa fa-user fa-3x"></i>
								<h5><%=user.getName()%></h5>

								<table class="table">
									<tbody>
										<tr>
											<th>User ID</th>
											<td><%=user.getId()%></td>
										</tr>

										<tr>
											<th>Full Name</th>
											<td><%=user.getName()%></td>
										</tr>

										<tr>
											<th>Email Id</th>
											<td><%=user.getEmail()%></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div>
								<button type="button" class="btn btn-danger"
									data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<%
		} else {
		%>

		<a href="login.jsp" class="btn btn-light" type="submit"> <i
			class="fas fa-user"></i> Login
		</a> <a href="register.jsp" class="btn btn-light"
			style="margin-left: 10px" type="submit"> <i
			class="fas fa-sign-in-alt"></i> Register
		</a>
		<%
		}
		%>

	</div>



</nav>