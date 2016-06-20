
<%@ page import="brainsoup.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="sbadmin">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div id="list-member" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'member.project.name.label', default: 'Name')}" />

            <g:sortableColumn property="rating" title="${message(code: 'member.project.rating.label', default: 'Rating')}" />

            <g:sortableColumn property="shortDescription" title="${message(code: 'member.project.shortDescription.label', default: 'short Description')}" />

            <g:sortableColumn property="written" title="${message(code: 'member.project.written.label', default: 'Written')}" />

            <g:sortableColumn property="recension" title="${message(code: 'member.project.recension.label', default: 'Recension')}" />

            <g:sortableColumn property="genre" title="${message(code: 'member.project.genre.label', default: 'Genre')}" />

            <th><g:message code="member.user.label" default="User" /></th>

        </tr>
        </thead>
        <tbody>
            <g:each in="${session.Project}" status="i" var="projects">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show" id="${session.Member.Project.id}">${fieldValue(bean: projects, field: "title")}</g:link></td>

                    <td>${fieldValue(bean: projects, field: "name")}</td>

                    <td>${fieldValue(bean: projects, field: "rating")}</td>

                    <td>${fieldValue(bean: projects, field: "shortDescription")}</td>

                    <td><g:formatDate date="${projects.written}" /></td>

                    <td>${fieldValue(bean: projects, field: "recension")}</td>

                    <td>${fieldValue(bean: projects, field: "genre")}</td>
                </tr>
            </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
