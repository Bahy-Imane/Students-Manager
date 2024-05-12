<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            background-image: radial-gradient(circle at 32% 86%, rgba(162, 162, 162,0.05) 0%, rgba(162, 162, 162,0.05) 50%,rgba(95, 95, 95,0.05) 50%, rgba(95, 95, 95,0.05) 100%),radial-gradient(circle at 62% 1%, rgba(99, 99, 99,0.05) 0%, rgba(99, 99, 99,0.05) 50%,rgba(70, 70, 70,0.05) 50%, rgba(70, 70, 70,0.05) 100%),radial-gradient(circle at 16% 3%, rgba(80, 80, 80,0.05) 0%, rgba(80, 80, 80,0.05) 50%,rgba(228, 228, 228,0.05) 50%, rgba(228, 228, 228,0.05) 100%),linear-gradient(90deg, rgb(200, 119, 231),rgb(168, 91, 251));            font-family: Arial, sans-serif;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .navbar {

            background-image: radial-gradient(circle at 52% 94%, rgba(169, 169, 169,0.04) 0%, rgba(169, 169, 169,0.04) 50%,rgba(199, 199, 199,0.04) 50%, rgba(199, 199, 199,0.04) 100%),radial-gradient(circle at 96% 98%, rgba(61, 61, 61,0.04) 0%, rgba(61, 61, 61,0.04) 50%,rgba(201, 201, 201,0.04) 50%, rgba(201, 201, 201,0.04) 100%),radial-gradient(circle at 93% 97%, rgba(227, 227, 227,0.04) 0%, rgba(227, 227, 227,0.04) 50%,rgba(145, 145, 145,0.04) 50%, rgba(145, 145, 145,0.04) 100%),radial-gradient(circle at 79% 52%, rgba(245, 245, 245,0.04) 0%, rgba(245, 245, 245,0.04) 50%,rgba(86, 86, 86,0.04) 50%, rgba(86, 86, 86,0.04) 100%),linear-gradient(90deg, rgb(210, 9, 198),rgb(25, 38, 118));

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
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .sec1{
            display: flex;
            justify-content: end;
            text-align: center;

            margin-top: 50px;
        }

        .search-form {
            display: inline-block;
            position: relative;
            right: 60px;
            margin-top: 40px;
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
            background-color: hotpink;
        }


        .search-button i {
            font-size: 18px;
        }

        .student-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            gap: 20px;
            margin-top: 48px;
        }

        .student-card {
            background-image: linear-gradient(135deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(45deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(0deg, rgb(208, 57, 227) 0%, rgb(208, 57, 227) 1%,rgb(218, 94, 219) 1%, rgb(218, 94, 219) 24%,rgb(228, 130, 212) 24%, rgb(228, 130, 212) 30%,rgb(238, 167, 204) 30%, rgb(238, 167, 204) 73%,rgb(248, 203, 196) 73%, rgb(248, 203, 196) 100%),linear-gradient(90deg, rgb(51, 80, 234),rgb(213, 245, 101)); background-blend-mode:overlay,overlay,overlay,normal;border-radius: 15px;            padding: 20px;
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
            display: flex;
            justify-content: space-between;
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
            background-color: cornflowerblue;
        }

        .delete-link {
            background-color: hotpink;
        }

        .back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            width: 70px;
            text-align: center;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
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

<h2 style="position: absolute;top: 13%;left: 50%;transform: translate(-50%, -50%);background-color: cornflowerblue;border-radius: 10px;width: 300px;height: 60px;text-align: center;line-height: 60px;color: white;margin-top: 40px">Students List</h2>


<div class="sec1">
    <form action="<c:url value='/search'/>" method="get" class="search-form">
        <input type="text" name="keyword" placeholder="Search..." class="search-input">
        <button type="submit" class="search-button"><i class="fas fa-search"></i></button>
    </form>
</div>


<div class="student-cards">
    <c:forEach var="student" items="${students}" varStatus="loop">
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


<div style="display: flex;justify-content: end;margin-right: 80px;">
<c:if test="${not empty keyword}">
    <a href="<c:url value='/'/>" class="back-link">Back</a>
</c:if>
</div>

</div>
</body>
</html>
