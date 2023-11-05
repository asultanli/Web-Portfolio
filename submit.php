<?php
// Connect to the database
$host = 'localhost';
$dbname = 'Projects'; // change database name to "Projects"
$username = 'root';
$password = 'sikiminbashi';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Get form data
        $nom = $_POST['nom'];
        $email = $_POST['email'];
        $message = $_POST['message'];

        // Insert the data into the Contacts table
        $stmt = $pdo->prepare("INSERT INTO Contacts (nom, email, message) VALUES (:nom, :email, :message)");
        $stmt->bindParam(':nom', $nom);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':message', $message);
        $stmt->execute();

        // Show success message
        echo "<p>Votre message a été envoyé avec succès.</p>";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}
?>

