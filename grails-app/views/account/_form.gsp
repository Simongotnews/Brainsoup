<%@ page import="brainsoup.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${accountInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${accountInstance?.password}"/>

</div>
<!--
<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="account.active.label" default="Active" />

	</label>
	<g:checkBox name="active" value="${accountInstance?.active}" />

</div>
-->
