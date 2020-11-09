<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: slateblue">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${ap1882248_users.name}' />"
						class="form-control" name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text"
						value="<c:out value='${ap1882248_users.email}' />"
						class="form-control" name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text"
						value="<c:out value='${ap1882248_users.country}' />"
						class="form-control" name="country">
				</fieldset>

				<fieldset class="form-group">
					<label>Gender</label>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="gender" id="optionsRadios1"
							value="Female" checked> Female
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="gender" id="optionsRadios2"
							value="Male"> Male
						</label>
					</div>
				</fieldset>

				<fieldset class="form-group">
					<label>Age Group</label> <select name="agegroup">
						<option value="18-32">18-32</option>
						<option value="32-52">32-52</option>
						<option value="52-72">52-72</option>
						<option value="72+">72+</option>
					</select>
				</fieldset>


				<fieldset class="form-group">
					<label>Details</label>
					<textarea rows="5" cols="11"
						value="<c:out value='${ap1882248_users.details}' />"
						class="form-control" name="details"></textarea>
				</fieldset>


				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
