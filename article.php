<?php  
// Connexion à la base de données avec PDO  
try {
    $pdo = new PDO('mysql:host=localhost;dbname=articles_mangas', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC  
    ]);
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}

// Vérification de l'ID d'article  
if (!isset($_GET['id']) || empty($_GET['id'])) {
    die("ID d'article invalide.");
}

$article_id = (int)$_GET['id'];
//calculer note moyenne
$average_rating_sql = "SELECT AVG(rating) AS average_rating FROM ratings WHERE article_id = ?";
 $average_rating_stmt = $pdo->prepare($average_rating_sql); $average_rating_stmt->execute([$article_id]);
  $average_rating = $average_rating_stmt->fetchColumn();

// Récupérer l'article par son ID  
$sql = "SELECT articles.*, GROUP_CONCAT(categories.name SEPARATOR ', ') AS category_names  
        FROM articles  
        JOIN article_categorie ON articles.id_article = article_categorie.article_id  
        JOIN categories ON article_categorie.categorie_id = categories.id_categorie  
        WHERE articles.id_article = ?
        GROUP BY articles.id_article";
$stmt = $pdo->prepare($sql);
$stmt->execute([$article_id]);
$article = $stmt->fetch();

if (!$article) {
    die("Article introuvable.");
}

// Récupérer les commentaires pour cet article  
$comments_sql = "SELECT comments.*, users.name AS user_name  
                 FROM comments  
                 JOIN users ON comments.user_id = users.id_utilisateur  
                 WHERE comments.article_id = ?
                 ORDER BY comments.Date_Post DESC";
$comments_stmt = $pdo->prepare($comments_sql);
$comments_stmt->execute([$article_id]);
$comments = $comments_stmt->fetchAll();

// Vérifier si l'utilisateur est connecté  
session_start();
$user_connected = isset($_SESSION['user_id']);
$user_name = $user_connected ? $_SESSION['user_name'] : '';
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($article['title']) ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <style>
    
        body {
            background-image: url(villageGaman.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .card-title{
            color: black;
            background-color: orange;
            text-align: center;
        }
        h3{
            background-color: orange;
        }
        
        .rating {
            display: flex;
            flex-direction: row-reverse;
            justify-content: flex-end;
            margin: 20px 0;
        }
        .rating input {
            display: none;
        }
        .rating label {
            cursor: pointer;
            font-size: 2rem;
            color: #ccc; /* Couleur par défaut des étoiles */
        }
        .rating input:checked ~ label {
            color: gold; /* Couleur des étoiles sélectionnées */
        }
        .rating label:hover,
        .rating label:hover ~ label {
            color: gold; /* Couleur lors du survol */
        }
    
        
    </style>

    <header>
        <?php include 'header.php'; ?>
    </header>

    <div class="container mt-4 pt-3 ">
        <div class="card">
            <div class="card-body mt-1">
                <h1 class="card-title"><?= htmlspecialchars($article['title']) ?></h1>
                <p>Note moyenne : <?= number_format($average_rating, 1) ?>/10</p>
                    <img src="<?= $article['image'] ?>" alt="<?= $article['title'] ?>" class="img-fluid rounded mx-auto d-block"
                    style="max-width: 100%; height: auto; object-fit: cover;">
                
                <p class="card-text">Publié par <?= htmlspecialchars($article['Auteur']) ?> en <?= date(($article['Date_Publi'])) ?></p>
                <p class="card-text">Catégories : <?= htmlspecialchars($article['category_names']) ?></p>
                <p class="card-text"><?= nl2br(htmlspecialchars($article['content'])) ?></p>
            </div>
        </div>
        <div class="container mt-4">
        <form action="submit_rating.php" method="POST">
            <input type="hidden" name="article_id" value="<?= $article_id ?>">
            <div class="rating">
                <input type="radio" id="star10" name="rating" value="10">
                <label for="star10" title="10 étoiles">&#9733;</label>
                <input type="radio" id="star9" name="rating" value="9">
                <label for="star9" title="9 étoiles">&#9733;</label>
                <input type="radio" id="star8" name="rating" value="8">
                <label for="star8" title="8 étoiles">&#9733;</label>
                <input type="radio" id="star7" name="rating" value="7">
                <label for="star7" title="7 étoiles">&#9733;</label>
                <input type="radio" id="star6" name="rating" value="6">
                <label for="star6" title="6 étoiles">&#9733;</label>
                <input type="radio" id="star5" name="rating" value="5">
                <label for="star5" title="5 étoiles">&#9733;</label>
                <input type="radio" id="star4" name="rating" value="4">
                <label for="star4" title="4 étoiles">&#9733;</label>
                <input type="radio" id="star3" name="rating" value="3">
                <label for="star3" title="3 étoiles">&#9733;</label>
                <input type="radio" id="star2" name="rating" value="2">
                <label for="star2" title="2 étoiles">&#9733;</label>
                <input type="radio" id="star1" name="rating" value="1">
                <label for="star1" title="1 étoile">&#9733;</label>
            </div>
            <button type="submit" class="btn btn-primary">Soumettre ma note</button>
        </form>
    </div>

            <h3>Commentaires</h3>
            <?php foreach ($comments as $comment): ?>
                <div class="card mb-3">
                    <div class="card-body">
                        <p class="fw-bold"><?= htmlspecialchars($comment['user_name']) ?></p>
                        <p class="card-text"><?= date('d-m-Y H:i', strtotime($comment['Date_Post'])) ?></p>
                        <p class="card-text"><?= nl2br(htmlspecialchars($comment['content'])) ?></p>
                    </div>
                </div>
            <?php endforeach; ?>

            <?php if ($user_connected): ?>
                <form action="submit_post.php" method="POST" class="mb-4">
                    <input type="hidden" name="article_id" value="<?= $article_id ?>">
                    <div class="mb-3">
                        <textarea name="content" class="form-control" placeholder="Votre commentaire" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-warning">Envoyer</button>
                    <p>Bonjour, <?= htmlspecialchars($user_name) ?></p>
                </form>
            <?php else: ?>
                <p><a href="login.php">Connectez-vous</a> pour laisser un commentaire.</p>
            <?php endif; ?>
        </div>
    </div>
</body>
</html>