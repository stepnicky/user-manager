<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 10.03.2023
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form method="post">
        <fieldset>
            <div class="form-group">
                <label for="userName">Nazwa</label>
                <input name="userName" type="text" id="userName" class="form-control" placeholder="Nazwa użytkownika">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input name="email" type="email" id="email" class="form-control" placeholder="Email użytkownika">
            </div>
            <div class="form-group">
                <label for="password">Nazwa</label>
                <input name="password" type="password" id="password" class="form-control" placeholder="Hasło użytkownika">
            </div>
            <button type="submit" class="btn btn-primary">${action}</button>
        </fieldset>
    </form>
</body>
</html>
