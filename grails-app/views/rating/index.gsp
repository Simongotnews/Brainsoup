
<%@ page import="brainsoup.Rating" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rating" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'rating.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'rating.description.label', default: 'Description')}" />
					
						<th><g:message code="rating.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ratingInstanceList}" status="i" var="ratingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ratingInstance.id}">${fieldValue(bean: ratingInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: ratingInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: ratingInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ratingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
