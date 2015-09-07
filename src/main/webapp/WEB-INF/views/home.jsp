<%--
  FileName: home.jsp
  User: LeeSooHoon
  Date: 9/1/15
  Time: 5:50 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css"/>
    <script type="text/javascript"
            src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

    <link type="text/css" rel="stylesheet"
          href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"/>
    <meta http-equiv="CONTENT-TYPE" content="text/html; UTF-8"/>
    <title>Spring Hibernate Gradle Example</title>
</head>
<body>
<h1>Team 관리</h1>

<p>
    ${message}<br>
    <a href="${pageContext.request.contextPath}/team/add.html">
        <button class="btn btn-danger"><i class="icon-plus"></i> 팀 추가하기</button>
    </a>
    <a href="${pageContext.request.contextPath}/team/list.html">
        <button class="btn btn-info"><i class="icon-th-list"></i> 팀 목록보기</button>
    </a>
</p>
</body>
</html>
