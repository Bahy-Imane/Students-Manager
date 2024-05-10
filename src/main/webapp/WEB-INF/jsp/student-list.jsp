<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Students List</title>
    <style>
        body {

            background-image: url('https://www.bing.com/images/search?view=detailV2&ccid=R1m20ihR&id=437894632C990B80B5AFBC2F943B3E9F45C0E99A&thid=OIP.R1m20ihRkDzayVnVNeKXrQHaEo&mediaurl=https%3a%2f%2fimages.alphacoders.com%2f105%2f105131.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.4759b6d22851903cdac959d535e297ad%3frik%3dmunARZ8%252bO5QvvA%26pid%3dImgRaw%26r%3d0&exph=1600&expw=2560&q=meilleurs+background+image+du+ecole&simid=608040831506912102&FORM=IRPRST&ck=A21E5F850166F995F1E5FCFEADE228F1&selectedIndex=0&itb=0');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .navbar {
            background-color: #86469C;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }


        .navbar img {
            height: 40px;
            margin-left: 20px;
        }


        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
        }

        /* Changement de couleur de fond du lien au survol */
        .navbar a:hover {
            background-color: #ddd; /* Couleur de fond au survol */
            color: black; /* Couleur du texte au survol */
        }
        .sec1{
            display: flex;
            justify-content: end;
            text-align: center;
        }

        .search-form {
            display: inline-block;
            position: relative;
        }

        .search-input {
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 20px;
            width: 200px;
            transition: width 0.4s ease-in-out;
        }

        .search-input:focus {
            width: 300px;
        }

        .search-button {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-button:hover {
            background-color: #0056b3;
        }

        /* Font Awesome icon */
        .search-button i {
            font-size: 18px;
        }

        .student-cards {
            display: flex;
            justify-content: space-evenly;
            gap: 20px;
        }

        .student-card {
            background-color: hotpink;
            border: 1px solid #ddd;
            border-radius: 15px;
            padding: 20px;
            width: 300px;
        }

        .student-info p {
            margin: 5px 0;
        }

        .actions {
            margin-top: 10px;
        }

        .actions a {
            display: inline-block;
            padding: 5px 10px;
            margin-right: 10px;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
        }

        .edit-link {
            background-color: #007bff;
        }

        .delete-link {
            background-color: #dc3545;
        }

    </style>
</head>
<body>


<nav class="navbar">
    <img src="https://i.pinimg.com/736x/00/fd/36/00fd360dcf02885e2dc3c3c52a779abe.jpg" alt="Logo">
    <div>
        <a href="<c:url value='/'/>">Home</a>
        <a href="<c:url value='/addstudent'/>">Add Student</a>
    </div>
</nav>

<h2>Students List</h2>
<div class="sec1">
    <form action="<c:url value='/search'/>" method="get" class="search-form">
        <input type="text" name="keyword" placeholder="Search..." class="search-input">
        <button type="submit" class="search-button"><i class="fas fa-search"></i></button>
    </form>
</div>



<div class="student-cards">
    <c:forEach var="student" items="${students}">
        <div class="student-card">
            <div class="student-info">
                <p><strong>ID:</strong> ${student.id}</p>
                <p><strong>Last Name:</strong> ${student.lastName}</p>
                <p><strong>Name:</strong> ${student.name}</p>
                <p><strong>Email:</strong> ${student.email}</p>
            </div>
            <div class="actions">
                <a class="edit-link" href="<c:url value='/editStudent/${student.id}'/>">Edit</a>
                <a class="delete-link" href="<c:url value='/deleteStudent/${student.id}'/>">Delete</a>
            </div>
        </div>
    </c:forEach>
</div>

<!-- Bouton Back -->
<a  href="<c:url value='/'/>" class="button">Back to Student List</a>
</div>
</body>
</html>
