<%--
  Created by IntelliJ IDEA.
  User: gongju
  Date: 2022/12/04
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <script src="https://kit.fontawesome.com/ebba58ba2d.js" crossorigin="anonymous"></script>
    <title>Update Post</title>
</head>
<body>
<h1>Update Post</h1>
<form:form action="../editok" method="post" modelAttribute="boardVO">
    <form:hidden path="seq"/>
    <table>
        <tr>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td><form:input path="writer"/></td>
        </tr>
        <tr>
            <td><form:textarea path="content" cols="50" rows="10"/></td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="수정">
                <button type="button" onclick="location.href='../list'">
                    <i class="fas fa-list"></i>
                </button>
        </tr>

    </table>
</form:form>
</body>
</html>