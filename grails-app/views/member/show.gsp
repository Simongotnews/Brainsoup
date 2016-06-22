
<%@ page import="brainsoup.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			<div id="show-member" class="content scaffold-show" role="main">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<ol class="property-list member">

					<g:if test="${memberInstance?.title}">
					<li class="fieldcontain">
						<span id="title-label" class="property-label"><g:message code="member.title.label" default="Title" /></span>

							<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${memberInstance}" field="title"/></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.firstName}">
					<li class="fieldcontain">
						<span id="firstName-label" class="property-label"><g:message code="member.firstName.label" default="First Name" /></span>

							<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${memberInstance}" field="firstName"/></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.lastName}">
					<li class="fieldcontain">
						<span id="lastName-label" class="property-label"><g:message code="member.lastName.label" default="Last Name" /></span>

							<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${memberInstance}" field="lastName"/></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.dateOfBirth}">
					<li class="fieldcontain">
						<span id="dateOfBirth-label" class="property-label"><g:message code="member.dateOfBirth.label" default="Date Of Birth" /></span>

							<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${memberInstance?.dateOfBirth}" /></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.email}">
					<li class="fieldcontain">
						<span id="email-label" class="property-label"><g:message code="member.email.label" default="Email" /></span>

							<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${memberInstance}" field="email"/></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.user}">
					<li class="fieldcontain">
						<span id="user-label" class="property-label"><g:message code="member.user.label" default="User" /></span>

							<span class="property-value" aria-labelledby="user-label"><g:link controller="account" action="show" id="${memberInstance?.user?.id}">${memberInstance?.user?.encodeAsHTML()}</g:link></span>

					</li>
					</g:if>

					<g:if test="${memberInstance?.project}">
					<li class="fieldcontain">
						<span id="project-label" class="property-label"><g:message code="member.project.label" default="Project" /></span>

							<g:each in="${memberInstance.project}" var="p">
							<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
							</g:each>

					</li>
					</g:if>

				</ol>
				<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>

	</body>
</html>
