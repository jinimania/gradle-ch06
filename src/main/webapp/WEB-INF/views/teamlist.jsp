<%--
  File Name: teamlist
  User: LeeSooHoon
  Date: 9/3/15
  Time: 4:57 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
    <title>List of teams</title>
</head>
<body>
<h1>팀 목록</h1>

<table>
    <thead>
    <tr>
        <th width="10%">id</th>
        <th width="15%">name</th>
        <th width="10%">rating</th>
        <th width="10%">actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="team" items="${teams}">
        <tr>
            <td>${team.id}</td>
            <td>${team.teamName}</td>
            <td>${team.rating}</td>
            <td>
                <a href="${pageContext.request.contextPath}/team/edit/${team.id}.html">Edit</a>
                <a href="${pageContext.request.contextPath}/team/delete/${team.id}.html">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p>
    <a href="${pageContext.request.contextPath}/index.html">Home page</a>
</p>
</body>
</html>
