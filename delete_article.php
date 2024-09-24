<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = new mysqli('localhost', 'root', '', 'articles_mangas');
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}
session_start();
$conn = new mysqli('localhost', 'root', '', 'articles_mangas');
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Vérifiez que l'utilisateur est connecté et qu'il a le rôle 4
if (!isset($_SESSION['id_role']) || $_SESSION['id_role'] != 4) {
    // Rediriger vers une autre page (par exemple, la page d'accueil) si l'utilisateur n'a pas le droit
    header('Location: index.php');
    exit();
}

// Vérifiez que l'ID de l'article est passé dans l'URL
if (isset($_GET['id_article'])) {
    $id_article = intval($_GET['id_article']); // Sécurisez l'entrée utilisateur

    // Préparez la requête de suppression
    $stmt = $conn->prepare("DELETE FROM articles WHERE id_article = ?");
    $stmt->bind_param('i', $id_article);

    // Exécutez la requête et vérifiez le succès
    if ($stmt->execute()) {
        echo "L'article a été supprimé avec succès.";
    } else {
        echo "Erreur lors de la suppression de l'article : " . $conn->error;
    }

    $stmt->close();
} else {
    echo "ID de l'article manquant.";
}

$conn->close();
?>