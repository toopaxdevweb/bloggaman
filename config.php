<?php
// config.php
$host = 'localhost'; // Adresse du serveur
$dbname = 'articles_mangas'; // Nom de la base de données
$username = 'root'; // Nom d'utilisateur de la base de données (par défaut pour XAMPP)
$password = ''; // Mot de passe de la base de données (vide par défaut pour XAMPP)

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erreur de connexion à la base de données : " . $e->getMessage());
}
?>
