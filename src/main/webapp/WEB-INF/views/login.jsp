<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        img, label {
            display: inline-block;
        }
        label {
            width: 130px
        }
        button {
            background-color:skyblue;
            color: white;
            font-size: 15px
        }
    </style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px;background: linear-gradient(to bottom, lightblue, whitesmoke, white)'>
    <img src='../img/snowman.jpg' height="250">
    <form method="post" action="loginOk">
        <div>
            <label>UserID: </label>
            <input type='text' name='userid'/>
        </div>
        <div>
            <label>Password: </label>
            <input type='password' name='pwd'/>
        </div>
        <p></p>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>