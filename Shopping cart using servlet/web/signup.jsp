<%--
  Created by IntelliJ IDEA.
  User: Robel
  Date: 7/14/2019
  Time: 8:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" type="text/css" href="resources/css/login.css" title="style">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="resources/js/mainjs.js"></script>
</head>
<body>

    <form action="signup" method="post">
        <fieldset>
            <legend> Customers</legend>
            Enter Username: <input type="text"  name="username"><br><br>
            Enter Password: <input type="password"  name="password"><br><br>
            <input type="submit" value="Save"><br> <br>

        </fieldset>
    </form>


</body>
</html>
