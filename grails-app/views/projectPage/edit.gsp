<%@ page import="brainsoup.ProjectPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'projectPage.label', default: 'ProjectPage')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-projectPage" class="content scaffold-edit" role="main">
			<h1>Edit ProjectPage</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${projectPageInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${projectPageInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:projectPageInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${projectPageInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
