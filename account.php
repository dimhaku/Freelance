<?php
$servername = "localhost";

// Create connection
$connect = mysql_connect($host,"root","")or die("Couldn't connect to the database!");
mysql_select_db("spin it") or die("Couldn't find database");

$_SESSION['uid']=$uid

$query = "SELECT * FROM freelancers WHERE "$_SESSION['uid']='$uid';
$result = $connect->query($query);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "email: " . $row["email"]. " - Name: " . $row["firstName"]. " " . $row["lastName"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
