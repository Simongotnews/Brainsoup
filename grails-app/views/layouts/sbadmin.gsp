<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Brainsoup</title>
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
	<!-- veraendert -->
		<img style="padding-top: 10px"  href="${createLink(action: 'index', controller:'Brainsoup')}" src="${request.contextPath}/sbadmin/images/Brainsoup_LOGO_25x44.png" alt="Logo">
	<!--    		-->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${request.contextPath}/">Brainsoup</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
	<!-- 																																							-->
		<div style="float: left;" class="log_header">
			<g:if test="${session.Account == null}">
				<g:form url="[action:'authenticate',controller:'account']" method="post" >
					<div class="log_header">
						<label for="username">Username:</label>
						<input type="text" id="username" name="username"/>
						<label for="password">Password:</label>
						<input type="password" id="password" name="password"/>
						<span class="button" style="padding-left: 10px; padding-top: 5px;">
							<input class="save" type="submit" value="Sign In" />
						</span>
					</div>
				</g:form>
			</g:if>
			<g:if test="${session.Account != null}">
					<div class="log_header">
						<a href="${createLink(action: 'profile', controller: 'member')}"><label style="font-size: 10em; font-size: large; color: grey">Hallo ${session.Account.username} :)</label></a>
					</span>
				</div>
			</g:if>
		</div>
	<!-- 																																						-->
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Menu <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li>
							<a href="${createLink(action: 'profile', controller: 'member')}"><i class="fa fa-fw fa-user"></i> Profile </a>
						</li>
						<!--<li>
							<a href="#"><i class="fa fa-fw fa-envelope"></i> News </a>
						</li>
						<li>
							<a href="#"><i class="fa fa-fw fa-gear"></i> Settings </a>
						</li>-->
						<li class="divider"></li>
						<g:if test="${session.Account != null}">
							<li>
								<a href="${createLink(action: 'logout', controller:'login')}"><i class="fa fa-fw fa-power-off"></i> Log Out </a>
							</li>
						</g:if>
						<g:if test="${session.Account == null}">
							<li>
								<a href="${createLink(action: 'create', controller:'account')}"><i class="fa fa-fw fa-power-off"></i> Sign Up </a>
							</li>
						</g:if>
					</ul>
				</li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li>
						<a href="${request.contextPath}/"><i class="fa fa-fw fa-dashboard"></i> Dashboard </a>
					</li>
					<li>
						<a href="${createLink(action: 'index', controller:'project')}"><i class="fa fa-fw fa-table"></i> Projects </a>
					</li>
					<li>
						<a href="${createLink(action: 'create', controller:'project')}"><i class="fa fa-fw fa-edit"></i> new Project </a>
					</li>
					<li>		<!-- fa fa-fw fa-bar-chart-o für Chartdiagramm -->
						<g:if test="${session.Account != null}">
							<a href="${createLink(action: 'logout', controller:'account')}"><i class="fa fa-fw fa-power-off"></i> Log Out </a>
						</g:if>
					</li>
					<li>		<!-- fa fa-fw fa-bar-chart-o für Chartdiagramm -->
						<g:if test="${session.Account == null}">
							<a href="${createLink(action: 'create', controller:'account')}"><i class="fa fa-fw fa-power-off"></i> Sign Up </a>
						</g:if>
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
