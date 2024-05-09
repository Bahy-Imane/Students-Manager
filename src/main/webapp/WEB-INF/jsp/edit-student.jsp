<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>
<body>
<h2>Edit Student</h2>
<form action="<c:url value='/updateStudent'/>" method="post">
    <input type="hidden" id="id" name="id" value="${student.id}">
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="${student.lastName}"><br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${student.name}"><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="${student.email}"><br>
    <input type="submit" value="Update Student">
</form>
</body>
</html>
