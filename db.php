<?php
// Live InfinityFree Database Configuration
$servername = "YOUR_SQL_Hostname"; // 1. Replace with your actual MySQL Hostname
$username = "YOUR_INFINITYFREE_ACCONT_Username";             // 2. Replace with your actual MySQL Username
$password = "YOUR_INFINITYFREE_ACCOUNT_PASSWORD";      // 3. Replace with your actual Account Password
$database = "YOUR_Database_Name";  // 4. Replace with your actual MySQL Database Name

// Create connection (Notice we removed the $port variable at the end)
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Optional: Sets the charset to match your database data formatting
$conn->set_charset("utf8mb4"); 
?>