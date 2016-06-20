<%@ page import="brainsoup.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="sbadmin">
    <title><g:message code="default.list.label" args="[session.Account.username]" /></title>

</head>
<body>
    <div>
        <h1>${session.Account.username}</h1>
        <table>
            <thead>
                <tr>
                    <g:sortableColumn property="name" title="${message(code: 'member.project.name.label', default: 'Name')}" />
            <!--    <g:sortableColumn property="rating" title="${message(code: 'member.project.rating.label', default: 'Rating')}" />
                    <g:sortableColumn property="shortDescription" title="${message(code: 'member.project.shortDescription.label', default: 'short Description')}" />-->
                    <g:sortableColumn property="written" title="${message(code: 'member.project.written.label', default: 'Written')}" />
            <!--    <g:sortableColumn property="recension" title="${message(code: 'member.project.recension.label', default: 'Recension')}" /> -->
                    <g:sortableColumn property="genre" title="${message(code: 'member.project.genre.label', default: 'Genre')}" />
            <!--    <th><g:message code="member.user.label" default="User" /></th>-->
                </tr>
            </thead>
            <tbody>
                <g:each in="${Project.findAllByMember(session.Member)}" status="i" var="projects">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link controller="project" action="show" id="${projects.id}">${fieldValue(bean: projects, field: "name")}</g:link></td>
                <!--<   td>${fieldValue(bean: projects, field: "rating")}</td>
                        <td>${fieldValue(bean: projects, field: "shortDescription")}</td> -->
                        <td><g:formatDate format="dd.MM.yyyy" date="${projects.written}"/></td>
                <!--    <td>${fieldValue(bean: projects, field: "recension")}</td>-->
                        <td>${fieldValue(bean: projects, field: "genre")}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>
</body>
</html>
