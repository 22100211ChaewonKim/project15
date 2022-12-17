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
            <td>제목</td>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td>작성자</td>
            <td><form:input path="writer"/></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><form:textarea path="content" cols="50" rows="10"/></td>
        </tr>
        <tr>
            <td>찬양팀</td>
            <td>
                    <%--                    <input type = "radio" name = "worshipTeam" value = "프레이즈">프레이즈--%>
                    <%--                    <input type = "radio" name = "worshipTeam" value = "끝시간">끝시간--%>
                    <%--                    <input type = "radio" name = "worshipTeam" value = "강물">강물--%>
                <form:select path="team">
                    <option value="프레이즈">프레이즈</option>
                    <option value="끝시간">끝시간</option>
                    <option value="강물">강물</option>
                    <option value="기타/신앙공동체">기타/신앙공동체</option>
                </form:select>

            </td>
        </tr>
        <tr>
            <td>세부 찬양팀(ex. 수요끝시간, 일요채플 ..)</td>
            <td><form:input type="text" path="type" /></td>
        </tr>
        <td>예배 날짜</td>
        <td><form:input type="date" path="worshipDate" size="20" /></td>
        </tr>
        <tr>
            <td>유튜브 링크</td>
            <td><form:input type="text" path="youtubeLink" size="20" /></td>
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