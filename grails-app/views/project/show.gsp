<%@ page import="brainsoup.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="sbadmin">
	<title>Brainsoup</title>
</head>
<body>
<g:if test="${session.Account != null}">
	<div class="jumbotron">
		<h1 style="text-align: center">${projectInstance.name} (${projectInstance.genre})</h1>
	</div>
	<div style="background-color: #414141" class="jumbotron">
		<h4 style="text-align: center"><g:formatDate format="dd.MM.yyyy" date="${projectInstance.written}"/> made by ${projectInstance.member}</h4>
		</br>
		<h3 style="text-align: center">Short Description:</h3>
		<p style="text-align: center">${projectInstance.shortDescription}</p>
	</div>
	</br>
	<g:if test="${session.Member.id == projectInstance.member.id}">
		<g:form style="padding-left: 47%" url="[resource:projectInstance, action:'delete']" method="DELETE">
			<div class="btn btn-warning btn-sm">
				<g:link style="color: white" class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
			</div>
			<!--
			<g:actionSubmit class="btn btn-danger btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			-->
		</g:form>
	</g:if>
	<div style="background-color: #444444;" class="jumbotron">
		<div class="jumbotron">
			<h3 style="text-align: center">Steps:</h3>
		</div>
		<g:each in="${ProjectPage.findAllByProject(projectInstance)}" status="i" var="page">
			<div style="background-color: #414141" class="jumbotron">
				</br><p style="text-align: center">${page.longDescription}</p>
				</br><img  style="width: 40%; display: block; margin: auto;" href="${createLink(action: 'index', controller:'Brainsoup')}" src="${request.contextPath}${page.picture}" alt="Picture">
				</br><p style="text-align: center">${page.instructions}</p>
				<g:if test="${session.Member.id == projectInstance.member.id}">
					<g:form url="[resource:page, action:'delete']" method="DELETE">
						<fieldset class="buttons" style="padding-left: 45%">
							<div class="btn btn-warning btn-sm">
								<g:link style="color: white" class="edit" action="edit" resource="${page}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							</div>
							<g:actionSubmit class="btn btn-danger btn-sm" action="delete" resource="${page}" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							<% grailsApplication.config.currentProjectId = projectInstance.id %>
						</fieldset>
					</g:form>
				</g:if>
			</div>
		</g:each>
	</div>
	<g:if test="${session.Member.id == projectInstance.member.id}">
		<!--global: ${grailsApplication.config.currentProjectId}-->
		<% grailsApplication.config.currentProjectId = projectInstance.id %>
		<g:set var="grailsApplication.config.currentProjectId" value="${projectInstance.id}" scope="session"/>
		<!--projectInstanceId: ${projectInstance.id} nowglobal: ${grailsApplication.config.currentProjectId}-->
		<div class="btn btn-warning btn-sm">
			<a href="${createLink(action: 'create', controller:'projectPage')}">Schritt hinzuf&uuml;gen</a>
		</div>
	</g:if>
	</div>
</g:if>
<g:if test="${session.Account == null}">
	<a href="${createLink(action: 'doLogin', controller:'login')}">Sorry you need to be logged in!</a>
</g:if>
</body>
</html>
