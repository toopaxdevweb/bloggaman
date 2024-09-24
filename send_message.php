<?php
session_start();

// Inclusion du fichier de connexion à la base de données
include 'db.php';

// Vérifie si l'utilisateur est connecté
if (!isset($_SESSION['id_utilisateur'])) {
    die('Vous devez être connecté pour envoyer un message.');
}

// Récupérer les données du formulaire
$message = isset($_POST['message']) ? trim($_POST['message']) : '';

// Vérifie si le message est vide
if (empty($message)) {
    die('Le message ne peut pas être vide.');
}

try {
    // Prépare et exécute la requête pour insérer le message
    $stmt = $pdo->prepare("INSERT INTO messages (username, message, created_at) VALUES (?, ?, NOW())");
    $stmt->execute([$_SESSION['username'], $message]);

    // Redirection vers la page précédente après l'envoi du message
    header('Location: index.php');
    exit();
} catch (PDOException $e) {
    echo 'Erreur lors de l\'envoi du message : ' . $e->getMessage();
}
?>
