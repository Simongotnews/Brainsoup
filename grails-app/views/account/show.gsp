
<%@ page import="brainsoup.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="account.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="account.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${accountInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="account.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${accountInstance?.active}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
