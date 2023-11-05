<?php
// Connect to the database
$host = 'localhost';
$dbname = 'Projects';
$username = 'root';
$password = 'sikiminbashi';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Insert a new project into the "Projects" table
    $stmt = $pdo->prepare("INSERT INTO Projects (Name, Description, Photo) VALUES (:name, :description, :photo)");
    $stmt->bindParam(':name', $_POST['name']);
    $stmt->bindParam(':description', $_POST['description']);
    $stmt->bindParam(':photo', $_POST['photo']);

    $stmt->execute();

    echo "Le projet a été ajouté avec succès!";
} catch (PDOException $e) {
    echo "Erreur de connexion à la base de données: " . $e->getMessage();
    die();
}
?>

