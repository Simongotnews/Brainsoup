
<%@ page import="brainsoup.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="project.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="project.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${projectInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="project.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${projectInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="project.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label"><g:fieldValue bean="${projectInstance}" field="genre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.recension}">
				<li class="fieldcontain">
					<span id="recension-label" class="property-label"><g:message code="project.recension.label" default="Recension" /></span>
					
						<span class="property-value" aria-labelledby="recension-label"><g:fieldValue bean="${projectInstance}" field="recension"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.written}">
				<li class="fieldcontain">
					<span id="written-label" class="property-label"><g:message code="project.written.label" default="Written" /></span>
					
						<span class="property-value" aria-labelledby="written-label"><g:formatDate date="${projectInstance?.written}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="project.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${projectInstance?.member?.id}">${projectInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
