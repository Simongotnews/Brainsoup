
<%@ page import="brainsoup.ProjectPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'projectPage.label', default: 'ProjectPage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body><!--
		<div id="list-projectPage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
				<tr>
					<g:sortableColumn property="longDescription" title="${message(code: 'projectPage.longDescription.label', default: 'Long Description')}" />

					<g:sortableColumn property="instructions" title="${message(code: 'projectPage.instructions.label', default: 'Instructions')}" />

					<g:sortableColumn property="picture" title="${message(code: 'projectPage.picture.label', default: 'Picture')}" />

					<th><g:message code="projectPage.project.label" default="Project" /></th>

				</tr>
			</thead>
				<tbody>
					<g:each in="${projectPageInstanceList}" status="i" var="projectPageInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td><g:link action="show" id="${projectPageInstance.id}">${fieldValue(bean: projectPageInstance, field: "longDescription")}</g:link></td>

							<td>${fieldValue(bean: projectPageInstance, field: "instructions")}</td>

							<td>${fieldValue(bean: projectPageInstance, field: "picture")}</td>

							<td>${fieldValue(bean: projectPageInstance, field: "project")}</td>

						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectPageInstanceCount ?: 0}" />
			</div>
		</div>-->
	</body>
</html>
