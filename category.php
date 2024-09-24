<?php
session_start();
// Inclure le fichier de configuration pour se connecter à la base de données
include 'config.php';


?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articles par Catégorie</title>
    <!-- Inclure Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
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
            color: black;
            background-color: orange;
            border-radius: 30px;
        }
        .text-dark{
            background-color: orange;
            color: black;
            border-radius: 30px;
        }
        
        
    </style>
    <header>
        <?php
        include 'header.php';
        ?>
    </header>

<div class="container">
    <h1 class="titre"> Mangas par Catégorie</h1>

    <!-- Formulaire pour le menu déroulant -->
    <form method="GET" action="category.php">
        <label class="text-dark" for="category">Choisissez une catégorie :</label>
        <select name="category" id="category" onchange="this.form.submit()">
            <option value="">-- Toutes les catégories --</option>
            <?php
            // Récupérer les catégories de la base de données
            $stmt = $pdo->query("SELECT * FROM categories");
            
            if ($stmt) {
                while ($row = $stmt->fetch()) {
                    $selected = (isset($_GET['category']) && $_GET['category'] == $row['id_categorie']) ? 'selected' : '';
                    echo "<option value=\"{$row['id_categorie']}\" $selected>{$row['name']}</option>";
                }
            } else {
                echo '<option value="">Erreur lors de la récupération des catégories</option>';
            }
            ?>
        </select>
    </form>

    <h2 class="text-warning" >Articles</h2>
    
    <div class="row mt-4">
        <?php
        // Vérifier si une catégorie est sélectionnée
        $categoryId = isset($_GET['category']) ? $_GET['category'] : '';

        // Préparer la requête pour récupérer les articles
        if ($categoryId) {
            $stmt = $pdo->prepare("SELECT articles.*, article_categorie.categorie_id FROM articles INNER JOIN article_categorie ON articles.id_article = article_categorie.article_id WHERE article_categorie.categorie_id = ?");
            $stmt->execute([$categoryId]);
        } else {
            // Récupérer tous les articles si aucune catégorie n'est sélectionnée
            $stmt = $pdo->query("SELECT * FROM articles");
        }

        // Afficher les articles dans des cartes Bootstrap
        while ($article = $stmt->fetch()) {
            ?>
            <div class="container col-3 mt-4 pt-3">
                <div class="card">
                    <div class="card-body mt-1">
                    <img src="<?= $article['image'] ?>"  alt="<?= $article['title'] ?>" class="img-fluid rounded mx-auto d-block"
                    style="max-width: 100%; height: 333px; object-fit: cover;">
                    
                        <h5 class="card-title"><?= $article['title'] ?></h5>
                        <p class="card-text">Par <?= $article['Auteur'] ?> | <?= $article['Date_Publi'] ?></p>
                        <a href="article.php?id=<?= $article['id_article'] ?>" class="btn btn-primary">Voir l'article</a>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
</div>
<style>
    .bg-dark {
        background-color: #000 !important;
    }
    .text-orange {
        color: #FFA500 !important;
    }
    .text-orange:hover {
        color: #FF8C00 !important;
    }
    footer a {
        transition: color 0.3s;
    }
</style>

 
 <footer class="bg-dark text-orange text-center text-white py-4 mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5 class="text-uppercase">À propos</h5>
                <p>Gaman est votre source ultime pour les derniers mangas, articles et discussions avec d'autres passionnés.</p>
            </div>
            <div class="col-md-4">
                <h5 class="text-uppercase">Navigation</h5>
                <ul class="list-unstyled">
                    <li><a href="index.php" class="text-orange text-decoration-none">Accueil</a></li>
                    <li><a href="category.php" class="text-orange text-decoration-none">Categories</a></li>
                    <li><a href="signup.php" class="text-orange text-decoration-none">Nous rejoindres</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5 class="text-uppercase">Suivez-nous</h5>
                <a href="#" class="text-orange me-3"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="text-orange me-3"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-orange me-3"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
        <hr class="bg-light">
        <p class="m-0">&copy; 2027 Gaman. Tous droits réservés.</p>
    </div>
</footer>

</body>
</html>
