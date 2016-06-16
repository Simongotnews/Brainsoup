
<%@ page import="brainsoup.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="rating" title="${message(code: 'project.rating.label', default: 'Rating')}" />
					
						<g:sortableColumn property="shortDescription" title="${message(code: 'project.shortDescription.label', default: 'Short Description')}" />
					
						<g:sortableColumn property="genre" title="${message(code: 'project.genre.label', default: 'Genre')}" />
					
						<g:sortableColumn property="recension" title="${message(code: 'project.recension.label', default: 'Recension')}" />
					
						<g:sortableColumn property="written" title="${message(code: 'project.written.label', default: 'Written')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "rating")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "shortDescription")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "genre")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "recension")}</td>
					
						<td><g:formatDate date="${projectInstance.written}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
