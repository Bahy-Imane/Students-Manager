<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Students List</title>
</head>
<body>
<h2>Add Student</h2>
<form action="<c:url value='/saveStudent'/>" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id"><br>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName"><br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"><br>
    <input type="submit" value="Add Student">
</form>

<h2>Students List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Last Name</th>
        <th>Name</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.lastName}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>
                <a href="<c:url value='/editStudent/${student.id}'/>">Edit</a>
                <a href="<c:url value='/deleteStudent/${student.id}'/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
