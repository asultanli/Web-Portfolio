<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Projet</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Mon Portefolio</h1>
        <nav>
            <ul>
                <li><a href="#">Accueil</a></li>
                <li><a href="#">Projets</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Ajouter un Projet</h2>
            <form action="add_project.php" method="post">
                <div>
                    <label for="name">Nom:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div>
                    <label for="description">Description:</label>
                    <textarea id="description" name="description" required></textarea>
                </div>
                <div>
                    <label for="photo">Photo URL:</label>
                    <input type="text" id="photo" name="photo" required>
                </div>
                <div>
                    <button type="submit">Ajouter</button>
                </div>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Mon Portefolio</p>
    </footer>
</body>
</html>

