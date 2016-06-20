<%@ page import="brainsoup.Login" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="sbadmin">
<g:set var="entityName"
	value="${message(code: 'account.label', default: 'Account')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body style="align: center; background: darkslategrey;">

			<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
	<div class="body">
		<g:form action="doLogin" method="post">
			<div class="dialog">
				<p>Hier einloggen:</p>
				<table class="userForm">
					<tr class='prop'>
						<td valign='top' style='text-align: left;' width='20%'><label
							for='username'>Username:</label></td>
						<td valign='top' style='text-align: left;' width='80%'><input
							id="username" type='text' name='username'
							value='${account?.username}' /></td>
					</tr>
					<tr class='prop'>
						<td valign='top' style='text-align: left;' width='20%'><label
							for='password'>Password:</label></td>
						<td valign='top' style='text-align: left;' width='80%'><input
							id="password" type='password' name='password'
							value='${account?.password}' /></td>
					</tr>

				</table>
			</div>
			<div class="buttons">
				<span class="formButton"> <input type="submit" value="Login"></input>
				</span>
			</div>
		</g:form>
	</div>
</body>
</html>
