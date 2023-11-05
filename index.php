<?php
// Set the language cookie based on the user's language preference
if (isset($_GET['lang']) && ($_GET['lang'] === 'en' || $_GET['lang'] === 'fr')) {
    setcookie('language', $_GET['lang'], time() + (86400 * 30), '/');
    header('Location: ' . $_SERVER['PHP_SELF']);
    exit;
}

// Determine the current language based on the language cookie or the browser settings
if (isset($_COOKIE['language']) && $_COOKIE['language'] === 'fr') {
    $lang = include 'lang/fr.php';
} else {
    $lang = include 'lang/en.php';
}
?>
<!DOCTYPE html>
<html lang="<?php echo $lang['lang']; ?>">
<head>
    <meta charset="<?php echo $lang['charset']; ?>">
    <meta name="viewport" content="<?php echo $lang['viewport']; ?>">
    <title><?php echo $lang['title']; ?></title>
    <link rel="stylesheet" href="css/style.css">
    <script src="script.js"></script>
</head>
<body>
    <header>
    <h1><?php echo $lang['title']; ?></h1>
    <a href="https://www.linkedin.com/in/aykhansultanli/" target="_blank"><?php echo $lang['linkedin']; ?></a>

    <div id="lang-selection">
        <a href="?lang=en">English</a> | <a href="?lang=fr">Français</a>
    </div>
	</header>


    <main>
    	<section id="about-me">
  <div class="profile-picture">
    <img src="photos/profilep.jpeg" alt="Profile Picture">
  </div>
  <div class="bio">
    <h2><?php echo $lang['about']; ?></h2>
    <?php
    if ($lang['lang'] === 'fr') {
        echo "<p>" . $lang['about_text'] . "</p>";
    } else {
        echo "<p>Hello, my name is Sultanli Aykhan and I'm excited to present my personal portfolio website. This platform showcases my skills in web programming, featuring projects that I have worked on and highlighting my proficiency in various programming languages and tools. I hope that this website gives you a glimpse into my passion for web development</p>";
    }
    ?>
  </div>
</section>



        <section id="projets">
    <h2><?php echo $lang['projects']; ?></h2>
    <?php
    // Connect to the database
    $host = 'localhost';
    $dbname = 'Projects';
    $username = 'root';
    $password = 'sikiminbashi';

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Determine the appropriate column name for the description based on the language
        $desc_col = $lang['lang'] === 'en' ? 'description_en' : 'description_fr';

        // Retrieve projects from the database
        $stmt = $pdo->query("SELECT * FROM Projects");

        // Output each project as a <div> element
        while ($row = $stmt->fetch()) {
            echo "<div class='projet'>";
            echo "<h3>" . $row[$lang['name']] . "</h3>";
            echo "<img src='" . $row['Photo'] . "' alt='" . $row[$lang['name']] . "' style='max-width: 150px;'>";
            echo "<p>" . $row[$desc_col] . "</p>";
            echo "<a href='project.php?id=" . $row['projectId'] . "&lang=" . $lang['lang'] . "'>" . $lang['learn_more'] . "</a>";

            echo "</div>";
        }
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        die();
    }
    ?>
</section>


        <section id="contact">
            <h2><?php echo $lang['contact']; ?></h2>
            <form action="envoyer.php" method="post">
                <div>
                    <label for="nom"><?php echo $lang['name']; ?>:</label>
                    <input type="text" id="nom" name="nom" required>
                </div>
                <div>
                    <label for="email"><?php echo $lang['Email']; ?>:</label>

					<input type="email" id="email" name="email" required>

				</div>
				<div>
					<label for="message"><?php echo $lang['message']; ?>:</label>
					<textarea id="message" name="message" required></textarea>
				</div>
				<div>
					<button type="submit"><?php echo $lang['send']; ?></button>
				</div>
			</form>
		</section>
	</main>
	<footer>
 	   <p>&copy; <?php echo date('Y'); ?> <?php echo $lang['title']; ?></p>
	</footer>
	</body>
</html>

