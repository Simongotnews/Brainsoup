<%@ page import="brainsoup.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="sbadmin">
        <title>Profile</title>

    </head>
    <g:if test="${session.Account != null}">
        <body>
            <div style="padding-left: 60px;">
                <h1>Username:        ${session.Account.username}</h1>
                <h3>${session.Member.title} ${session.Member.firstName} ${session.Member.lastName}</h3>
                <h3>Date of Birth:   <g:formatDate format="dd.MM.yyyy" date="${session.Member.dateOfBirth}"/></h3>
                <h3>Email:           ${session.Member.email}</h3>
                </br>
                <div style="padding-left: 60px;">
                    <h1 style="font-size: 120px">Your Projects</h1>
                    <table style="border: 1px solid grey; padding: 50px; font-size: 45px;">
                        <thead>
                            <tr>
                                <g:sortableColumn  style="padding: 5px" property="name" title="${message(code: 'member.project.name.label', default: 'Name')}" />
                                <!--    <g:sortableColumn  style="padding: 5px" property="rating" title="${message(code: 'member.project.rating.label', default: 'Rating')}" />
                                <g:sortableColumn style="padding: 5px" property="shortDescription" title="${message(code: 'member.project.shortDescription.label', default: 'short Description')}" />-->
                                <g:sortableColumn style="padding: 5px" property="written" title="${message(code: 'member.project.written.label', default: 'Written')}" />
                                <!--    <g:sortableColumn style="padding: 5px" property="recension" title="${message(code: 'member.project.recension.label', default: 'Recension')}" /> -->
                                <g:sortableColumn style="padding: 5px" property="genre" title="${message(code: 'member.project.genre.label', default: 'Genre')}" />
                                <!--    <th><g:message style="padding: 5px" code="member.user.label" default="User" /></th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${Project.findAllByMember(session.Member)}" status="i" var="projects">
                                <tr style="border: 1px solid grey;" class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td style="border: 1px solid grey; padding: 5px"><g:link controller="project" action="show" id="${projects.id}">${fieldValue(bean: projects, field: "name")}  </g:link></td>
                                    <!--<   td>${fieldValue(bean: projects, field: "rating")}  </td>
                                    <td style="border: 1px solid grey; padding: 5px">${fieldValue(bean: projects, field: "shortDescription")}  </td> -->
                                    <td style="border: 1px solid grey; padding: 5px"><g:formatDate format="dd.MM.yyyy" date="${projects.written}"/>  </td>
                                    <!--    <td>${fieldValue(bean: projects, field: "recension")}  </td>-->
                                    <td style="border: 1px solid grey; padding: 5px">${fieldValue(bean: projects, field: "genre")}  </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </body>
    </g:if>
    <g:if test="${session.Account == null}">
        <a href="${createLink(action: 'doLogin', controller:'login')}">Sorry you need to be logged in!</a>
    </g:if>
</html>
