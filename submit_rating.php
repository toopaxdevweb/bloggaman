<?php
session_start();

if (!isset($_SESSION['user_id']) || !isset($_POST['rating'])) {

die("Vous devez être connecté pour noter un article.");
}

$article_id = (int)$_POST['article_id']; $user_id = $_SESSION['user_id']; $rating = (int)$_POST['rating'];

try { $pdo = new PDO('mysql:host=localhost;dbname=articles_mangas', 'root', '', [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);

// Vérifier si l'utilisateur a déjà noté cet article  
$check_sql = "SELECT * FROM ratings WHERE article_id = ? AND user_id = ?";
$check_stmt = $pdo->prepare($check_sql);
$check_stmt->execute([$article_id, $user_id]);
$existing_rating = $check_stmt->fetch();

if ($existing_rating) {
    // Mettre à jour la notation existante  
    $update_sql = "UPDATE ratings SET rating = ? WHERE article_id = ? AND user_id = ?";
    $update_stmt = $pdo->prepare($update_sql);
    $update_stmt->execute([$rating, $article_id, $user_id]);
} else {
    // Insérer une nouvelle notation  
    $insert_sql = "INSERT INTO ratings (article_id, user_id, rating) VALUES (?, ?, ?)";
    $insert_stmt = $pdo->prepare($insert_sql);
    $insert_stmt->execute([$article_id, $user_id, $rating]);
}

echo "Votre note a été enregistrée.";
} catch (PDOException $e) { die("Erreur : " . $e->getMessage()); } 

header("Location: article.php?id=$article_id");
    exit();

?>
