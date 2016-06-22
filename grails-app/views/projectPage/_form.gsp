<%@ page import="brainsoup.ProjectPage" %>

<div class="fieldcontain ${hasErrors(bean: projectPageInstance, field: 'longDescription', 'error')} required">
	<label for="longDescription">
		<g:message code="projectPage.longDescription.label" default="Long Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="longDescription" required="" value="${projectPageInstance?.longDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectPageInstance, field: 'instructions', 'error')} required">
	<label for="instructions">
		<g:message code="projectPage.instructions.label" default="Instructions" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructions" required="" value="${projectPageInstance?.instructions}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectPageInstance, field: 'picture', 'error')} required">
	<label for="picture">
		<g:message code="projectPage.picture.label" default="Picture" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="picture" required="" value="${projectPageInstance?.picture}"/>

</div>
<!--
<div class="fieldcontain ${hasErrors(bean: projectPageInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="projectPage.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${brainsoup.Project.list()}" optionKey="id" required="" value="${projectPageInstance?.project?.id}" class="many-to-one"/>

</div>-->

