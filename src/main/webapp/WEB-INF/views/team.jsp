<%--
  File Name: team
  User: LeeSooHoon
  Date: 9/4/15
  Time: 11:07 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css"/>
    <script type="text/javascript"
            src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

    <link type="text/css" rel="stylesheet"
          href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"/>
    <meta http-equiv="Content-Type" content="text/html; UTF-8"/>
    <title>Add Team page</title>
</head>
<body>
<h1>Add team page</h1>

<p>Here you can add a new team.</p>
<form:form method="post" action="${pageContext.request.contextPath}/team/add.html"
           modelAttribute="team">
    <div class="input-group margin-bottom-sm">
        <span class="input-group-addon"></span>
        <form:input class="form-control" type="text" placeholder="team Name" path="teamName"/>
    </div>
    <div class="input-group margin-bottom-sm">
        <span class="input-group-addon"></span>
        <form:input class="form-control" type="text" placeholder="점수" path="rating"/>
    </div>

    <button class="btn btn-primary" type="submit" value="추가하기">팀 등록</button>
</form:form>
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</body>
</html>
