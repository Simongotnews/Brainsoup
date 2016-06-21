<%@ page import="brainsoup.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="sbadmin">
	<title>Brainsoup</title>
</head>
<body>
<g:if test="${session.Account != null}">
	<div id="show-project" class="content scaffold-show" role="main">
        <div class="page-header">
        	<h1 style="text-align: center">${projectInstance.name} (${projectInstance.genre})</h1>
		</div>
	<h4 style="text-align: center"><g:formatDate format="dd.MM.yyyy" date="${projectInstance.written}"/> made by ${projectInstance.member}</h4>
	</br>
	<h3 style="text-align: center">Kurzbeschreibung:</h3>
	</br><p style="text-align: center">${projectInstance.shortDescription}</p>

	</br>

	<h3 style="text-align: center">Anleitung</h3>

	<g:each in="${ProjectPage.findAllByProject(projectInstance)}" status="i" var="page">
		</br><p style="text-align: center">${page.longDescription}</p>
		</br><img  style="width: 40%; display: block; margin: auto;" href="${createLink(action: 'index', controller:'Brainsoup')}" src="${request.contextPath}${page.picture}" alt="Picture">
		</br><p style="text-align: center">${page.instructions}</p>

	</g:each>
	<g:if test="${session.Member.id == projectInstance.member.id}">
		<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</g:if>
	</div>
</g:if>
<g:if test="${session.Account == null}">
	<a href="${createLink(action: 'doLogin', controller:'login')}">Sorry you need to be logged in!</a>
</g:if>
</body>
</html>
