<%@ page import="brainsoup.Project" %>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" pattern="${projectInstance.constraints.name.matches}" required="" value="${projectInstance?.name}"/>
</div>
<!--<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="project.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rating" required="" value="${projectInstance?.rating}"/>
</div>-->
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'shortDescription', 'error')} required">
	<label for="shortDescription">
		<g:message code="project.shortDescription.label" default="Short Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortDescription" required="" value="${projectInstance?.shortDescription}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'genre', 'error')} required">
	<label for="genre">
		<g:message code="project.genre.label" default="Genre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genre" required="" value="${projectInstance?.genre}"/>
</div>
<!--<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'recension', 'error')} required">
	<label for="recension">
		<g:message code="project.recension.label" default="Recension" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="recension" required="" value="${projectInstance?.recension}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'written', 'error')} ">
	<label for="written">
		<g:message code="project.written.label" default="Written" />
	</label>
	<g:datePicker name="written" precision="day"  value="${projectInstance.written}" default="none" noSelection="['': '']" />
</div>
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'member', 'error')} required">
<label for="member">
		<g:message code="project.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${session.Member}" optionKey="id" required="" value="${session.Member}" class="many-to-one"/>

	<g:set var="member" />
</div>-->

