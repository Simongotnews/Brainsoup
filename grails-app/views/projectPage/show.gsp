
<%@ page import="brainsoup.ProjectPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'projectPage.label', default: 'ProjectPage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projectPage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projectPage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list projectPage">
			
				<g:if test="${projectPageInstance?.longDescription}">
				<li class="fieldcontain">
					<span id="longDescription-label" class="property-label"><g:message code="projectPage.longDescription.label" default="Long Description" /></span>
					
						<span class="property-value" aria-labelledby="longDescription-label"><g:fieldValue bean="${projectPageInstance}" field="longDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectPageInstance?.instructions}">
				<li class="fieldcontain">
					<span id="instructions-label" class="property-label"><g:message code="projectPage.instructions.label" default="Instructions" /></span>
					
						<span class="property-value" aria-labelledby="instructions-label"><g:fieldValue bean="${projectPageInstance}" field="instructions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectPageInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="projectPage.picture.label" default="Picture" /></span>
					
						<span class="property-value" aria-labelledby="picture-label"><g:fieldValue bean="${projectPageInstance}" field="picture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectPageInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="projectPage.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${projectPageInstance?.project?.id}">${projectPageInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projectPageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projectPageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
