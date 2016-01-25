<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

</head>
<body>

	<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
		prefix="tilesx"%>
	<tilesx:useAttribute name="current" />
	${current}
	<div class="container">
		<!-- Static navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
					</button>
					<a class="navbar-brand"
						href="/simple-app/index" >Bilgi
						Sepeti</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="${current == 'index' ? 'active' : ' ' }"><a
							href='/simple-app/index'> Home </a></li>
						<li class="${current == 'users' ? 'active' : ' ' }"><a
							href='/simple-app/users'> Users</a></li>
						<li class="${current == 'blogs' ? 'active' : ' ' }"><a
							href='/simple-app/users'> Blogs</a></li>
						<security:authorize access="!isAuthenticated()">
						<li class="${current == 'user-register' ? 'active' : ' ' }"><a
								href='/simple-app/user-register'> Register</a></li>
						</security:authorize>
						<security:authorize access="!isAuthenticated()">
							<li class="${current == 'login' ? 'active' : ' ' }"><a
								href='/simple-app/login.html'> Login</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<li class="${current == 'account' ? 'active' : ' ' }"><a
								href='/simple-app/account'> My Account</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<li><a href='/simple-app/logout'> Logout</a></li>
						</security:authorize>
				</div>
				<!--/.container-fluid -->
		</nav>

		<tiles:insertAttribute name="body" />
		<br /> <br />
		<center>
			<tiles:insertAttribute name="footer" />
		</center>
	</div>
</body>
</html>