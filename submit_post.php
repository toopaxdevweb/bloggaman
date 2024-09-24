<?php
session_start();

// Vérifier si l'utilisateur est connecté
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

// Connexion à la base de données
$conn = new mysqli('localhost', 'root', '', 'articles_mangas');

// Vérifier la connexion
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Insérer le commentaire
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $content = $_POST['content'];
    $article_id = $_POST['article_id'];
    $user_id = $_SESSION['user_id'];

    // Corriger l'appel de NOW() et retirer les parenthèses après le dernier paramètre
    $sql = "INSERT INTO comments (content, article_id, Date_Post, user_id) VALUES (?, ?, NOW(), ?)";
    $stmt = $conn->prepare($sql);
    
    // Assurez-vous de lier les bons types de données
    $stmt->bind_param("sii", $content, $article_id, $user_id);
    $stmt->execute();

    // Rediriger vers l'article après avoir ajouté le commentaire
    header("Location: article.php?id=$article_id");
    exit();
}

