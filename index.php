<?php
session_start();
$conn = new mysqli('localhost', 'root', '', 'articles_mangas');
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Récupération du rôle de l'utilisateur connecté
$user_role = isset($_SESSION['id_role']) ? $_SESSION['id_role'] : null;

$articlesPerPage = 8;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $articlesPerPage;

$sql = "SELECT articles.id_article, title, image, Auteur, Date_Publi FROM articles ORDER BY Date_Publi DESC LIMIT $start, $articlesPerPage";
$result = $conn->query($sql);

$totalArticles = $conn->query("SELECT COUNT(*) AS total FROM articles")->fetch_assoc()['total'];
$totalPages = ceil($totalArticles / $articlesPerPage);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil | Blog Manga</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <style>
        body {
            background-image: url(villageGaman.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .text-center {
            background-color: orange;
            color: black;
            border-radius: 30px;
        }
    </style>
    <header>
        <?php include 'header.php'; ?>
    </header>
    <div class="container mt-5">
        <h1 class="text-center">Bienvenue sur Gaman</h1>
        <div class="row mt-4">
            <?php while($row = $result->fetch_assoc()): ?>
                <div class="col-md-3 mb-5">
                    <div class="card">
                        <img src="<?= $row['image'] ?>"  alt="<?= $row['title'] ?>" class="img-fluid   "
             style="max-width: 100%; height: 333px; object-fit: cover;">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['title'] ?></h5>
                            <p class="card-text">Par <?= $row['Auteur'] ?> | <?= $row['Date_Publi'] ?></p>
                            <a href="article.php?id=<?= $row['id_article'] ?>" class="btn btn-warning">Voir l'article</a>

                            <?php if ($user_role == 4): ?>
                                <!-- Bouton de suppression visible seulement si l'utilisateur a le rôle 4 -->
                                <button class="btn btn-danger mt-2" onclick="confirmDelete(<?= $row['id_article'] ?>)">Supprimer</button>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
        <style>
    .pagination .page-item .page-link {
        color: black; /* Couleur du texte des liens */
        background-color: orange; /* Fond des liens */
        border-color: black; /* Couleur de la bordure */
    }

    .pagination .page-item.active .page-link {
        color: orange; /* Couleur du texte pour l'élément actif */
        background-color: black; /* Fond pour l'élément actif */
        border-color: orange; /* Couleur de la bordure de l'élément actif */
    }

    .pagination .page-item .page-link:hover {
        color: orange; /* Couleur du texte au survol */
        background-color: black; /* Fond au survol */
        border-color: orange; /* Bordure au survol */
    }</style>
        <nav>
            
            <ul class="pagination justify-content-center">
                <?php for($i = 1; $i <= $totalPages; $i++): ?>
                    <li class="page-item <?= $i == $page ? 'active' : '' ?>">
                        <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </nav>
    </div>
<?php
include "footer.php";
?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Fonction pour confirmer la suppression d'un article
        function confirmDelete(articleId) {
            if (confirm('Êtes-vous sûr de vouloir supprimer cet article ?')) {
                // Redirige vers la page de suppression avec l'ID de l'article
                window.location.href = 'delete_article.php?id_article=' + articleId;
            }
        }
    </script>
</body>
</html>
