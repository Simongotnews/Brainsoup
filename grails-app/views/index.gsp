<%@ page import="brainsoup.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title>Brainsoup</title>
		<style type="text/css" media="screen">
			body, tbody{
				background-color: #444444;
				color: #a4a4a4;
			}
			#status {
				background-color: #242325;
				border: .3em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				color: #a4a4a4;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				background-color: #444444;
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
<g:if test="${session.Account}">
	<div id="status" role="complementary">
		<h1>Hello ${session.Account.username} !</h1>
		<p>(last time logged in: </br><g:formatDate format="dd.MM.yyyy" date="${session.lastAccessedTime}"/>)</p>
		<ul>
			<g:if test="${session.Project != null}">
				</><li>Projects: ${session.Project.count()}</li>
			</g:if>

			<a href="${createLink(action: 'index', controller: 'project')}"></br><h1> My Projects </h1></a>
		</ul>
		<ul>
			<g:each var="project" in="${Project.findAllByMember(session.Member)}">
				<li>${project.name} (${project.genre})</li>
			</g:each>
		</ul>
	</div>
</g:if>
<div id="page-body" role="main">
	<h1 style="font-size: 80px">Welcome at Brainsoup</h1>
	<p style="font-size: 40px">You can create your Project and discover other ones.</p>
	<div id="controller-list" role="navigation">
		<h2 style="font-size: 30px">Recommended Projects:</h2>
		<table>
			<tbody>
			<g:each var="project" in="${Project.findAll()}">
				<g:link style="font-size: 20px" controller="project" action="show" id="${project.id}"> ${project.name} (${project.genre}), </g:link>
			</g:each>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>
