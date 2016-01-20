<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/signIn.css" />"
	rel="stylesheet" type="text/css" />
</head>
<body>

	<form class="form-signin" role="form" name="f"	action='/simple-app/login' method='POST'>
		<h2 class="form-signin-heading">Please sign in</h2>
			<label class="sr-only">Name</label> 
				<input type="text" name="username" id="inputUserName" class="form-control" placeholder="Name" required	autofocus>
			<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
<!-- 		a<button class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Sign	in</button> -->
				<input name="submit" type="submit" value="Login"/>
	</form>


</body>
