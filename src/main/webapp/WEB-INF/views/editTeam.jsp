<%--
  File Name: editTeam
  User: LeeSooHoon
  Date: 9/4/15
  Time: 10:56 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; UTF-8"/>
    <title>Edit team page</title>
</head>
<body>
<h1>Edit team page</h1>

<p>Here you can edit the existing team.</p>

<p>${message}</p>
<form:form method="POST" commandName="team"
           action="${pageContext.request.contextPath}/team/edit/${team.id}.html">
    <table>
        <tdoby>
            <tr>
                <td>Name:</td>
                <td><form:input path="teamName"/></td>
            </tr>
            <tr>
                <td>Rating:</td>
                <td><form:input path="rating"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Edit"/></td>
                <td></td>
            </tr>
        </tdoby>
    </table>
</form:form>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</body>
</html>
