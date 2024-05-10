<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        /* Style du logo */
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


        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .title1{
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #86469C;
                color: white;
                height: 100px;
                width: 200px;
                border: 5px;
                border-radius: 10px;
                margin-top: 10px;
                transition: background-color 0.3s ease;
            }

        .title1:hover {
                background-color: #6b2f7d;
            }


        .container {
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 205, 0.8);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }


        .student-form input[type="text"],
        .student-form input[type="submit"] {
            width: calc(100% - 10px);
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .student-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .student-form input[type="submit"]:hover {
            background-color: #45a049;
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
<h2 class="title1">Add Student</h2>
<div class="container">

    <form class="student-form" action="<c:url value='/addstudent'/>" method="post">
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
</div>

</body>
</html>
