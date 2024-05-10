<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <style>

        body {

            background-image: url('https://www.bing.com/images/search?view=detailV2&ccid=R1m20ihR&id=437894632C990B80B5AFBC2F943B3E9F45C0E99A&thid=OIP.R1m20ihRkDzayVnVNeKXrQHaEo&mediaurl=https%3a%2f%2fimages.alphacoders.com%2f105%2f105131.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.4759b6d22851903cdac959d535e297ad%3frik%3dmunARZ8%252bO5QvvA%26pid%3dImgRaw%26r%3d0&exph=1600&expw=2560&q=meilleurs+background+image+du+ecole&simid=608040831506912102&FORM=IRPRST&ck=A21E5F850166F995F1E5FCFEADE228F1&selectedIndex=0&itb=0');
            background-size: cover; /* Redimensionner l'image pour qu'elle couvre tout l'arrière-plan */
            background-position: center; /* Centrer l'image */

            font-family: Arial, sans-serif; /* Police de caractère */
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .navbar {
            background-color: #86469C; /* Couleur de fond */
            overflow: hidden; /* Contenu débordant caché */
            display: flex; /* Utilisation de flexbox pour aligner les éléments */
            justify-content: space-between; /* Alignement des éléments sur les extrémités */
            align-items: center; /* Alignement vertical */
            padding: 10px; /* Espacement interne */
        }

        /* Style du logo */
        .navbar img {
            height: 40px; /* Hauteur du logo */
            margin-left: 20px; /* Marge à gauche */
        }

        /* Liens de la navbar */
        .navbar a {
            color: white; /* Couleur du texte */
            text-decoration: none; /* Suppression du soulignement */
            padding: 10px 20px; /* Remplissage */
            border-radius: 5px; /* Bord arrondi */
        }

        /* Changement de couleur de fond du lien au survol */
        .navbar a:hover {
            background-color: #ddd; /* Couleur de fond au survol */
            color: black; /* Couleur du texte au survol */
        }
        /* Style du cadre */
        .form-container {
            border: 1px solid #ccc; /* Bordure grise */
            border-radius: 5px; /* Bord arrondi */
            padding: 20px; /* Espacement interne */
            width: 300px; /* Largeur du cadre */
        }

        /* Style des champs de saisie */
        .form-container input[type="text"] {
            width: calc(100% - 10px); /* Largeur du champ de saisie */
            margin-bottom: 10px; /* Marge en bas */
            padding: 10px; /* Espacement interne */
            border-radius: 5px; /* Bord arrondi */
            border: 1px solid #ccc; /* Bordure grise */
        }

        /* Style du bouton */
        .form-container input[type="submit"] {
            width: 100%; /* Largeur du bouton */
            padding: 10px; /* Espacement interne */
            border: none; /* Suppression de la bordure */
            border-radius: 5px; /* Bord arrondi */
            background-color: #4CAF50; /* Couleur de fond */
            color: white; /* Couleur du texte */
            cursor: pointer; /* Curseur en forme de main */
        }

        /* Style du bouton au survol */
        .form-container input[type="submit"]:hover {
            background-color: #45a049; /* Couleur de fond au survol */
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


<div class="form-container">
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
</div>
</body>
</html>
