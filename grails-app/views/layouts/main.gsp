<%--
  Created by IntelliJ IDEA.
  User: ReinDuque
  Date: 11/20/2014
  Time: 12:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><g:layoutTitle default="SSI"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'storageicon.gif')}" type="image/">
	<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">

	<g:layoutHead/>

	<!-- Bootstrap Core CSS -->
	<link href="${resource(dir: 'css',file: 'bootstrap.min.css')}" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="${resource(dir: 'css',file: 'small-business.css')}" rel="stylesheet">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<![endif]-->
	<%--<calendar:resources style="${resource(dir: 'css',file: 'datepicker.css')}" rel="stylesheet"/>--%>
	<calendar:resources lang="en" theme="blue"/>
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				<img src="${resource(dir:'images', file: 'STORAGE.png')}" alt="" height="70">
			</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li>
					<a class="active" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				</li>
				<li>
					<a href="#">Reports</a>
				</li>
				<li>
					<a href="#">Transactions</a>
				</li>
				<li>
					<a href="#">Logout</a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>



<!-- body -->
<div class="container">

<g:layoutBody/>

</div>


<!-- Footer -->
<footer>
	<div class="row">
		<div class="col-lg-offset-1">
			<div class="ssifooter">
				<p>Copyright &copy; SSI 2014</p>
			</div>
		</div>
	</div>
</footer>

</body>
</html>
