<?php

// Connect to the database
$host = 'localhost';
$dbname = 'Projects';
$username = 'root';
$password = 'sikiminbashi';

// Get the project ID from the query string
$id = isset($_GET['id']) ? $_GET['id'] : '';

// Set the default language to English
$language = 'en';

// Check if the language is set to French
if (isset($_GET['lang']) && $_GET['lang'] === 'fr') {
    $language = 'fr';
}

// Include the language file
if ($language === 'fr') {
    $language_vars = include 'lang/fr_version.php';
} else {
    $language_vars = include 'lang/en_version.php';
}

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Determine the appropriate column name for the description based on the language
    $desc_col = $language === 'en' ? 'FullDescription_en' : 'FullDescription';

    // Retrieve the project from the database
    $stmt = $pdo->prepare("SELECT *, $desc_col FROM Projects WHERE projectId = ?");
    $stmt->execute([$id]);
    $project = $stmt->fetch();
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}
?>

<!DOCTYPE html>
<html lang="<?php echo $language_vars['lang']; ?>">
<head>
    <meta charset="<?php echo $language_vars['charset']; ?>">
    <meta name="viewport" content="<?php echo $language_vars['viewport']; ?>">
    <title><?php echo $language_vars['title']; ?></title>
    <link rel="stylesheet" href="css/style-project.css">
</head>
<body>
<header>
    <h1><?php echo $language_vars['header']; ?></h1>
    <div id="lang-selection">
        <a href="?id=<?php echo $id; ?>&lang=en">English</a> | <a href="?id=<?php echo $id; ?>&lang=fr">Français</a>
    </div>
</header>
    <main>
        <section id="project-details">
            <div class="project">
                <h2><?php echo $project[$language_vars['name']]; ?></h2>
                <img src="<?php echo $project['Photo']; ?>" alt="<?php echo $project[$language_vars['name']]; ?>">
                <p><?php echo $project[$desc_col]; ?></p>
                <a href="index.php"><?php echo $language_vars['back_to_list']; ?></a>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 <?php echo $language_vars['footer']; ?></p>
    </footer>
</body>
</html>

