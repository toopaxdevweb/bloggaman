<?php
// Inclure le fichier de configuration pour se connecter à la base de données
include 'config.php'; // Assurez-vous que le chemin est correct par rapport à l'emplacement de register.php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Hachage du mot de passe

    // Vérifier si l'utilisateur existe déjà
    $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->execute([$email]);

    if ($stmt->rowCount() > 0) {
        echo "Un utilisateur avec cet email existe déjà.";
    } else {
        // Insérer le nouvel utilisateur dans la base de données
        $stmt = $pdo->prepare("INSERT INTO users (name, email, password, id_role) VALUES (?, ?, ?, ?)");
        $stmt->execute([$name, $email, $password, 5]); // 5 pour rôle utilisateur standard
        echo "Inscription réussie !";
        
        // Rediriger vers index.php
        header('Location: index.php');
        exit(); // Toujours appeler exit après une redirection
    }
}
?>
