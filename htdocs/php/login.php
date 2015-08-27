<?php 
	session_start();
	$email = $_POST['email'];
	$password = $_POST['password'];

if($email&&$password)
	{
		$connect = mysql_connect("localhost","root","")or die("Couldn't connect to the database!");
	mysql_select_db("spin it") or die("Couldn't find database");
	$query = mysql_query("SELECT * FROM freelancers WHERE email = '$email'");
	$numrows = mysql_num_rows($query);
	if($numrows!==0){
		while($row = mysql_fetch_assoc($query)){

			$dbemail = $row['email'];
			$dbpassword = $row['password'];

		if($email==$dbemail&&$password==$dbpassword){
			echo "You are logged in!";
			@$_SESSION['email'] = $email;
		}
		else
			echo "Your password is incorrect!";
	}
	// else
	// 	die("That user doesn't exist!");
}
}
else
	die("Please enter a email and password");
?>