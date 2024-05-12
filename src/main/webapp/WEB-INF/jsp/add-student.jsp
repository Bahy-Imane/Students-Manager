<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Students List</title>
    <style>

        body {

            /*background-image: url('https://www.bing.com/images/search?view=detailV2&ccid=R1m20ihR&id=437894632C990B80B5AFBC2F943B3E9F45C0E99A&thid=OIP.R1m20ihRkDzayVnVNeKXrQHaEo&mediaurl=https%3a%2f%2fimages.alphacoders.com%2f105%2f105131.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.4759b6d22851903cdac959d535e297ad%3frik%3dmunARZ8%252bO5QvvA%26pid%3dImgRaw%26r%3d0&exph=1600&expw=2560&q=meilleurs+background+image+du+ecole&simid=608040831506912102&FORM=IRPRST&ck=A21E5F850166F995F1E5FCFEADE228F1&selectedIndex=0&itb=0');*/

                /*background-size: cover;
                background-position: center;*/
                background-image: radial-gradient(circle at 32% 86%, rgba(162, 162, 162, 0.05) 0%, rgba(162, 162, 162, 0.05) 50%, rgba(95, 95, 95, 0.05) 50%, rgba(95, 95, 95, 0.05) 100%), radial-gradient(circle at 62% 1%, rgba(99, 99, 99, 0.05) 0%, rgba(99, 99, 99, 0.05) 50%, rgba(70, 70, 70, 0.05) 50%, rgba(70, 70, 70, 0.05) 100%), radial-gradient(circle at 16% 3%, rgba(80, 80, 80, 0.05) 0%, rgba(80, 80, 80, 0.05) 50%, rgba(228, 228, 228, 0.05) 50%, rgba(228, 228, 228, 0.05) 100%), linear-gradient(90deg, rgb(200, 119, 231), rgb(168, 91, 251));
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                height: 100vh;
            }

            .navbar {
                background-image: radial-gradient(circle at 52% 94%, rgba(169, 169, 169, 0.04) 0%, rgba(169, 169, 169, 0.04) 50%, rgba(199, 199, 199, 0.04) 50%, rgba(199, 199, 199, 0.04) 100%), radial-gradient(circle at 96% 98%, rgba(61, 61, 61, 0.04) 0%, rgba(61, 61, 61, 0.04) 50%, rgba(201, 201, 201, 0.04) 50%, rgba(201, 201, 201, 0.04) 100%), radial-gradient(circle at 93% 97%, rgba(227, 227, 227, 0.04) 0%, rgba(227, 227, 227, 0.04) 50%, rgba(145, 145, 145, 0.04) 50%, rgba(145, 145, 145, 0.04) 100%), radial-gradient(circle at 79% 52%, rgba(245, 245, 245, 0.04) 0%, rgba(245, 245, 245, 0.04) 50%, rgba(86, 86, 86, 0.04) 50%, rgba(86, 86, 86, 0.04) 100%), linear-gradient(90deg, rgb(210, 9, 198), rgb(25, 38, 118));
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


            .navbar a:hover {
                background-color: #ddd;
                color: black;
            }


            .card {
                background-image: linear-gradient(135deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(45deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(0deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(90deg, rgb(51, 80, 234),rgb(213, 245, 101)); background-blend-mode:overlay,overlay,overlay,normal;border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 20px;
                width: 300px;
                margin-top: 48px;
                border: 1px solid #ccc;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            .card-body {
                padding: 0;
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
                background-color: #EFB6FF;
                color: white;
                border: none;
                cursor: pointer;
            }

            .student-form input[type="submit"]:hover {
                background-color: #CC6CE7;
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
<<<<<<< HEAD
<h2 style="position: absolute;top: 13%;left: 50%;transform: translate(-50%, -50%);background-color: cornflowerblue;border-radius: 10px;width: 300px;height: 60px;text-align: center;line-height: 60px;color: white;margin-top: 40px">Add Student</h2>
<div class="card">
    <div class="card-body">
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
</div>

=======
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
