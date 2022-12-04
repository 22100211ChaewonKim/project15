<%--
  Created by IntelliJ IDEA.
  User: gongju
  Date: 2022/12/04
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://kit.fontawesome.com/ebba58ba2d.js" crossorigin="anonymous"></script>
    <title>New Post</title>
</head>
<body>
<h1>New Post</h1>
<form action="addok" method="post">
    <table>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" size="20"></td>
        </tr>
        <tr>
            <td>작성자</td>
            <td><input type="text" name="writer" size="20"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" cols="50" rows="10"></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="작성">
                <button type="button"  onclick="location.href='list'">
                    <i class="fas fa-list"></i>
                    돌아가기
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>