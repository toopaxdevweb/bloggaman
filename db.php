<?php
// Connexion à la base de données avec PDO
try {
    $pdo = new PDO('mysql:host=localhost;dbname=articles_mangas', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('Erreur de connexion : ' . $e->getMessage());
}
?>
