<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<style>
        body {
            background-image: url(villageGaman.jpg);
            background-size: cover ;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .titre {
            color: orange;
            background-color: gray;
        }
    </style>
    <header>
    <?php
include 'header.php' ;
?>
    </header>
    <div class="position-absolute top-50 start-50 translate-middle ">
        <h1 class="titre">Creation de compte</h1>
<form action="register.php" method="post">
    <input type="text" name="name" placeholder="Nom" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button class="btn btn-primary" type="submit">S'inscrire</button>
</form>
    </div>

</body>
</html>