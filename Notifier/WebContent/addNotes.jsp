<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login First to Access Your Notes...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Your Important Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<br>
		<h1 class="text-center">Add Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");

							if (us != null) {
							%>

							<input type="hidden" value="<%=us.getId()%>" name="uid">

							<%
							}
							%>



							<label for="exampleInputEmail1">Note Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp"
								placeholder="Enter Your Note Title..." name="title"
								required="required">
						</div>
						<br>

						<div class="form-group row">
							<label for="example-date-input" class="col-2 col-form-label">Start
								Date</label>
							<div class="col-10">
								<input class="form-control" type="date" value="2011-08-19"
									id="example-date-input">
							</div>
						</div>
						<br>

						<div class="form-group row">
							<label for="example-date-input" class="col-2 col-form-label">End
								Date</label>
							<div class="col-10">
								<input class="form-control" type="date" value="2011-08-19"
									id="example-date-input">
							</div>
						</div>
						<br>

						<div class="form-group row">
							<label for="example-date-input" class="col-2 col-form-label">Reminder
								Date</label>
							<div class="col-10">
								<input class="form-control" type="date" value="2011-08-19"
									id="example-date-input">
							</div>
						</div>
						<br> 
						
						<label for="statusName">Status</label>
						<select class="form-control">
							<option value="started">Started</option>
							<option value="inProgress">InProgress</option>
							<option value="complete">Complete</option>
						</select> 
						
					 <br>  
					 
					 <label for="statusName">Tag</label>
						<select class="form-control">
							<option value="started">Public</option>
							<option value="inProgress">Private</option>
						</select> 

<br>
						<div class="form-group">
							<label for="exampleInputEmail1">Note Description</label>
							<textarea rows="10" cols="" class="form-control"
								placeholder="Enter Your Note Description..." name="content"
								required="required"></textarea>
						</div>
						<br>
						<div class="container text-center">
							<button type="submit" class="btn-lg btn-outline-primary btn-block">Add Note</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>