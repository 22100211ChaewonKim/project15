<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: gongju
  Date: 2022/12/03
  Time: 6:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>자유 게시판</h1>

<table id="list">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Contents</th>
        <th>작성일</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${boardList}" var="board">
        <tr>
            <td>${board.seq}</td>
            <td>${board.title}</td>
            <td>${board.writer}</td>
            <td>${board.content}</td>
            <td>${board.regdate}</td>
            <td><a href="editform/${board.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${board.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<button type="button" onclick="location.href='add'">글쓰기</button>
</body>
</html>