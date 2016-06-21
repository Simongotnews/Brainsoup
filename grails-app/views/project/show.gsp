<%@ page import="brainsoup.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<title>${session.Account.username}´s Projects</title>
	</head>
	<body>
		<g:if test="${session.Account != null}">
			<div id="show-project" class="content scaffold-show" role="main">
				<h1>${projectInstance.name} (${projectInstance.genre})</h1>
				<h4><g:formatDate format="dd.MM.yyyy" date="${projectInstance.written}"/> made by ${session.Account.username}</h4>
				</br><p>${projectInstance.shortDescription}</p>

				<g:each in="${ProjectPage.findAllByProject(projectInstance)}" status="i" var="page">
					</br><p>${page.longDescription}</p>
					</br><img href="${createLink(action: 'index', controller:'Brainsoup')}" src="${request.contextPath}/sbadmin/images/Brainsoup_LOGO_25x44.png" alt="Logo">
					</br><p>${page.instructions}</p>

				</g:each>

				<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</g:if>
		<g:if test="${session.Account == null}">
			<a href="${createLink(action: 'doLogin', controller:'login')}">Sorry you need to be logged in!</a>
		</g:if>
	</body>
</html>
