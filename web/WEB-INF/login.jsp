<%-- 
    Document   : login
    Created on : Oct 8, 2020, 1:49:41 PM
    Author     : Chels
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form method="post" action="home">
        <label for="title">Username: </label>
        <input type="text" name="username" value="${username}">
        <br>
        <label for="title">Password: </label>
        <input type="text" name="password" value="${password}">
        <br>
        <input type="submit" name="Login" value="login">
        <br>
        <p name="message"></p>
        </form>
        
    </body>
</html>