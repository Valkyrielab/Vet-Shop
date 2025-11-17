
```php
<?php
session_start();
include 'db.php'; // Database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    
 // Fetch user from DB
    $stmt = $conn->prepare("SELECT * FROM users WHERE username=?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;
        header("Location: Home.html");
        exit();
    } else {
        $error = "Invalid username or password.";


    header("Location: admin-dashboard.php"); // Redirect to admin dashboard
        exit();
    } else {
        echo "<p style='color:red;'>Invalid username or password!</p>";
    }
}

?>

<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "petshop";

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: login.html");
    exit();
}
?>