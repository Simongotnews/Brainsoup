<%@ page import="brainsoup.Rating" %>



<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="rating.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${ratingInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="rating.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${ratingInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="rating.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${brainsoup.Project.list()}" optionKey="id" required="" value="${ratingInstance?.project?.id}" class="many-to-one"/>

</div>

