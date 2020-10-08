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
        <h1>Welcome!</h1>
        <br>

            <p>Hello ${username}</p>
        <br>
        <br>
        <a href="login?logout" value="logout" name="logout">Logout</a>
        <br>
        ${displayMessage}
    </body>
</html>
