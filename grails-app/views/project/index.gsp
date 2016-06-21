
<%@ page import="brainsoup.Project" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="sbadmin">
	<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div id="list-project" class="content scaffold-list" role="main">
	<g:if test="${session.Account != null}">
		<h1>${session.Account.username}´s Projects</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:if test="${Project.findAllByMember(session.Member) == null}">
			You have no Projects.
		</g:if>
		<g:if test="${session.Account != null}">
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />

						<!--<g:sortableColumn property="rating" title="${message(code: 'project.rating.label', default: 'Rating')}" />						-->

						<!--<g:sortableColumn property="shortDescription" title="${message(code: 'project.shortDescription.label', default: 'Short Description')}" />	-->

						<g:sortableColumn property="genre" title="${message(code: 'project.genre.label', default: 'Genre')}" />

						<!--<g:sortableColumn property="recension" title="${message(code: 'project.recension.label', default: 'Recension')}" />	-->

						<g:sortableColumn property="written" title="${message(code: 'project.written.label', default: 'Written')}" />
					</tr>
				</thead>
				<tbody>
					<g:each in="${projectInstanceList}" status="i" var="project">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td><g:link action="show" id="${project.id}">${fieldValue(bean: project, field: "name")}</g:link></td>
							<!--<td>${fieldValue(bean: project, field: "rating")}</td> 				-->
							<!--<td>${fieldValue(bean: project, field: "shortDescription")}</td>			-->
							<td>${fieldValue(bean: project, field: "genre")}</td>
							<!--<td>${fieldValue(bean: project, field: "recension")}</td> 		-->
							<td><g:formatDate format="dd.MM.yyyy" date="${project.written}"/></td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceCount ?: 0}" />
			</div>
		</g:if>
		</g:if>
		<g:if test="${session.Account == null}">
			<a href="${createLink(action: 'doLogin', controller:'login')}">Sorry you need to be logged in!</a>
		</g:if>
	</div>
</body>
</html>
