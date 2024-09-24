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
        .titre{
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
        <h1 class="titre">Connexion</h1>
<form action="login.php" method="post">
    <input type="email" name="email" placeholder="email" required>
    
    
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button class="btn btn-primary" type="submit">Se connecter</button>
    </div>
</form>
<?php

session_start();
include 'config.php'; // Fichier contenant les informations de connexion à la DB

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Récupérer l'utilisateur depuis la base de données
    $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password'])) {
        // Si le mot de passe est correct, démarrer une session utilisateur
        $_SESSION['user_id'] = $user['id_utilisateur'];
        $_SESSION['user_name'] = $user['name'];
        $_SESSION['id_role'] = $user['id_role']; // Ajouter le rôle à la session

        echo "Connexion réussie !";

        // Rediriger vers index.php
        header('Location: index.php');
        exit(); // Toujours appeler exit après une redirection
    } else {
        echo "Email ou mot de passe incorrect.";
    }
}
?>





<!-- CSS pour personnaliser les couleurs -->

</body>
</html>