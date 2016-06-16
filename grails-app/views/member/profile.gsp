
<%@ page import="brainsoup.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="sbadmin">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-member" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="title" title="${message(code: 'member.title.label', default: 'Title')}" />

            <g:sortableColumn property="firstName" title="${message(code: 'member.firstName.label', default: 'First Name')}" />

            <g:sortableColumn property="lastName" title="${message(code: 'member.lastName.label', default: 'Last Name')}" />

            <g:sortableColumn property="dateOfBirth" title="${message(code: 'member.dateOfBirth.label', default: 'Date Of Birth')}" />

            <g:sortableColumn property="email" title="${message(code: 'member.email.label', default: 'Email')}" />

            <th><g:message code="member.user.label" default="User" /></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${memberInstanceList}" status="i" var="memberInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "title")}</g:link></td>

                <td>${fieldValue(bean: memberInstance, field: "firstName")}</td>

                <td>${fieldValue(bean: memberInstance, field: "lastName")}</td>

                <td><g:formatDate date="${memberInstance.dateOfBirth}" /></td>

                <td>${fieldValue(bean: memberInstance, field: "email")}</td>

                <td>${fieldValue(bean: memberInstance, field: "user")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${memberInstanceCount ?: 0}" />
    </div>
</div>
</body>
</html>
