<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<script src="https://kit.fontawesome.com/ebba58ba2d.js" crossorigin="anonymous"></script>
<h2>Hello World!</h2>
<%--    server time print--%>
<h3>Server time is: <%=new java.util.Date()%>
</h3>
<button type="button" onclick="location.href='board/list'">
    <i class="fa fa-list"></i> 게시판으로 이동
</button>
</body>
</html>