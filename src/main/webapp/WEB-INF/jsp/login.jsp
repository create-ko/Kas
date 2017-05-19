<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<style>
body {
	background-image: url("images/1.jpg");
}
</style>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>

<!-- CSS -->
<link
	href="<c:url value="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/main/bootstrap/css_login/bootstrap.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/main/bootstrap/css_login/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/main/bootstrap/css_login/bootstrap-theme.css" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/main/bootstrap/font-login/font-awesome.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/main/bootstrap/css_login/form-elements.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/main/bootstrap/css_login/style.css" />"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link
	href="<c:url value="/resources/main/bootstrap/images/favicon.png" />"
	rel="shortcut icon">
<link
	href="<c:url value="/resources/main/images/apple-touch-icon-144-precomposed.png" />"
	rel="apple-touch-icon-precomposed" sizes="144x144">
<link
	href="<c:url value="/resources/main/images/apple-touch-icon-114-precomposed.png" />"
	rel="apple-touch-icon-precomposed" sizes="114x114">
<link
	href="<c:url value="/resources/main/images/apple-touch-icon-72-precomposed.png" />"
	rel="apple-touch-icon-precomposed" sizes="72x72">
<link
	href="<c:url value="/resources/main/images/apple-touch-icon-57-precomposed.png" />"
	rel="apple-touch-icon-precomposed">

</head>

<body>

	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1 style="font-size: 60px">
							<strong>KAS</strong> Project
						</h1>
						<div class="description">
							<p>
								<strong>k</strong> Attached Storage Project <a href="/login"><strong></strong></a>
							</p>
							<p style="font-size: 20px">
								Koseunghee / Kimhyerin<a href="/login"><strong></strong></a>
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Login</h3>
								<p>Enter your password to log on:</p>
							</div>

						</div>
						<div class="form-bottom">
							<form role="form" action="/logincheck" method="post"
								class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="form-password" placeholder="Password..."
										class="form-password form-control" id="password">
								</div>
								<button type="submit" class="btn">Sign in</button>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>


	<!-- Javascript -->
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/bootstrap.js" />"></script>
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/npm.js" />"></script>

	<script
		src="<c:url value="/resources/main/bootstrap/js_login/jquery-1.11.1.min.js" />"></script>
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/jquery.backstretch.min.js" />"></script>
	<script
		src="<c:url value="/resources/main/bootstrap/js_login/scripts.js" />"></script>
	<!--[if lt IE 10]>
        <![endif]-->

</body>


</html>