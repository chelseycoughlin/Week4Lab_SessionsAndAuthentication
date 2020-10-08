<%-- 
    Document   : home
    Created on : Oct 8, 2020, 1:53:30 PM
    Author     : Chels
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Home Page</h1>

            <h3>Hello ${username}.</h3>
        <a href="login?logout" value="logout" name="logout">Logout</a>
        <br>
    </body>
</html>
