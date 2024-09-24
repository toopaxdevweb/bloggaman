<?php
session_start();

// Vérification de la connexion de l'utilisateur et de son rôle (doit être le rôle 5)
if (!isset($_SESSION['user_id']) || $_SESSION['id_role'] > 5) { // Assurez-vous que 'id_role' correspond au bon nom de session
    die("Accès refusé. Vous n'avez pas l'autorisation pour ajouter un article.");
}

// Connexion à la base de données
try {
    $pdo = new PDO('mysql:host=localhost;dbname=articles_mangas', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}
// Récupérer les catégories
$categories = $pdo->query("SELECT id_categorie, name FROM categories")->fetchAll();

// Vérifie si le formulaire a été soumis
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupère les données du formulaire
    $title = $_POST['title'] ?? '';
    $content = $_POST['content'] ?? '';
    $manga_author = $_POST['manga_author'] ?? ''; // Auteur du manga
    $date_manga = $_POST['date_manga'] ?? ''; // Date de publication du manga
    $image = $_POST['image'] ?? ''; // URL de l'image si saisi manuellement ou ajuster pour le champ file
    
    // Vérifier que toutes les données nécessaires sont présentes
    if (empty($title) || empty($content) || empty($manga_author) || empty($date_manga) || empty($image)) {
        echo "Veuillez remplir tous les champs.";
        exit();
    }

    // Insertion de l'article dans la base de données
    try {
        $sql = "INSERT INTO articles (title, content, image, Auteur, Date_Publi) VALUES (?, ?, ?, ?, ?)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$title, $content, $image, $manga_author, $date_manga]);

        echo "Article ajouté avec succès !";
    } catch (PDOException $e) {
        echo "Erreur lors de l'ajout de l'article : " . $e->getMessage();
    }
    // Récupérer l'ID de l'article inséré
    $article_id = $pdo->lastInsertId();

    // Insertion des catégories dans la table de liaison
    if (isset($_POST['categories'])) {
        foreach ($_POST['categories'] as $category_id) {
            $stmt = $pdo->prepare("INSERT INTO article_categorie (article_id, categorie_id) VALUES (?, ?)");
            $stmt->execute([$article_id, $category_id]);
        }
}}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un article</title>
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
        h1 {
            color: orange;
        }
        .titre {
            color: black;
            font-size: 50px;
            background-color: orange;
            border-radius: 30px;
        }
        label {
            color: black;
            font-size: 50px;
            background-color: orange;
            border-radius: 30px;
        }
    </style>
    <header>
        <?php include 'header.php'; ?>
    </header>
    <div class="position-absolute top-50 start-50 translate-middle">
    <h1 class="titre">Ajouter un article</h1>
    
        <form action="add_article.php" method="post" enctype="multipart/form-data"> <!-- Ajoutez enctype pour gérer les fichiers -->
            <input type="text" name="title" placeholder="Titre de l'article" required><br><br>
            <textarea name="content" placeholder="Contenu de l'article" required></textarea><br><br>
            <input type="text" name="image" placeholder="URL de l'image"><br><br> <!-- Utiliser comme texte si URL -->
            <input type="text" name="manga_author" placeholder="Auteur du manga" required><br><br>
            <input type="text" name="date_manga" placeholder="Date de publication du manga" required><br><br>
            <label for="categories">Sélectionnez les catégories :</label>
            <select name="categories[]" id="categories" multiple required>
                <?php foreach ($categories as $category): ?>
                    <option value="<?= $category['id_categorie'] ?>"><?= $category['name'] ?></option>
                <?php endforeach; ?>
            </select><br><br>
            <button class="btn btn-warning"  type="submit">Ajouter l'article</button>
        </form>
    </div>
  
</body>
</html>
