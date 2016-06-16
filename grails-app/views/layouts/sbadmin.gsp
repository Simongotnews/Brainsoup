
<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>SB Admin - Bootstrap Admin Template</title>

	<!-- Bootstrap Core CSS -->
	<link href="${request.contextPath}/sbadmin/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="${request.contextPath}/sbadmin/css/sb-admin.css" rel="stylesheet">

	<!-- Custom Fonts -->
	<link href="${request.contextPath}/sbadmin/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Brainsoup</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
<!-- 																																							-->
	<div class="log_header">
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>
	</div>
	<div style="float: left;" class="log_header">

		<g:form action="authenticate" method="post" >
			<div class="log_header">

					<label for="username">Username:</label>

					<input type="text" id="username" name="username"/>

					<label for="password">Password:</label>

					<input type="password" id="password" name="password"/>

				<span class="button" style="padding-left: 10px; padding-top: 5px;">
					<input class="save" type="submit" value="Einloggen" />
				</span>
			</div>
		</g:form>
	</div>
<!-- 																																						-->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Menu <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li>
						<a href="#"><i class="fa fa-fw fa-user"></i> MyStuff </a>
					</li>
					<li>
						<a href="#"><i class="fa fa-fw fa-envelope"></i> FriendStuff </a>
					</li>
					<li>
						<a href="#"><i class="fa fa-fw fa-gear"></i> Account </a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="${createLink(action:'logout', controller:'Account')}"><i class="fa fa-fw fa-power-off"></i> Log Out </a>
					</li>
				</ul>
			</li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li>
					<a href="../account/index.html"><i class="fa fa-fw fa-dashboard"></i> Account</a>
				</li>
				<li>
					<a href="../member/index.html"><i class="fa fa-fw fa-bar-chart-o"></i> Member</a>
				</li>
				<li>
					<a href="../project/index.html"><i class="fa fa-fw fa-table"></i> Project</a>
				</li>
				<li>
					<a href="../projectPage/index.html"><i class="fa fa-fw fa-edit"></i> ProjectPage</a>
				</li>
				<li>
					<a href="../rating/index.html"><i class="fa fa-fw fa-desktop"></i> Rating</a>
				</li>

				<!--
				<li>
					<a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
				</li>
				<li>
					<a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="demo" class="collapse">
						<li>
							<a href="#">Dropdown Item</a>
						</li>
						<li>
							<a href="#">Dropdown Item</a>
						</li>
					</ul>
				</li>
				<li class="active">
					<a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
				</li>
				<li>
					<a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
				</li>
				-->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<div id="page-wrapper">
			<g:layoutBody/>
	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="${request.contextPath}/sbadmin/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${request.contextPath}/sbadmin/js/bootstrap.min.js"></script>

</body>

</html>
