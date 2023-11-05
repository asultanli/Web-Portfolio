<?php
// Connect to the database
$host = 'localhost';
$dbname = 'Projects';
$username = 'root';
$password = 'sikiminbashi';

try {
  $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // Get the project ID from the query string
  $projectId = $_GET['id'];

  // Retrieve the full description from the database
  $stmt = $pdo->prepare("SELECT FullDescription FROM Projects WHERE ID = ?");
  $stmt->execute([$projectId]);
  $fullDescription = $stmt->fetchColumn();

  // Output the full description as plain text
  echo $fullDescription;
} catch (PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
  die();
}
?>

