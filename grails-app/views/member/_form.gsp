<%@ page import="brainsoup.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="member.title.label" default="Title" />
		
	</label>
	<g:select name="title" from="${memberInstance.constraints.title.inList}" value="${memberInstance?.title}" valueMessagePrefix="member.title" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="member.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" pattern="${memberInstance.constraints.firstName.matches}" required="" value="${memberInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" pattern="${memberInstance.constraints.lastName.matches}" required="" value="${memberInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="member.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${memberInstance?.dateOfBirth}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${memberInstance?.email}"/>

</div>

<!--<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="member.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${brainsoup.Account.list()}" optionKey="id" value="${memberInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>-->

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'project', 'error')} ">
	<label for="project">
		<!--<g:message code="member.project.label" default="Project" />-->
	</label>
	<ul class="one-to-many"><!--
		<g:each in="${memberInstance?.project?}" var="p">
			<li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
		</g:each>--><!--
		<li class="add">
			<g:link controller="project" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
		</li>-->
	</ul>
</div>

