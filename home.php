<?php session_start() ?>
<!DOCTYPE HTML>
<html lang='en'>
<head>
  <meta charset='UTF-8'>
  <title>Freelancers</title>
</head>
<body>
  <div id="head">
  <h1>Spinit</h1>
  <p>There are thousands of freelance workers out there and thousands of tasks to complete at businesses. Freelance Connect will bring those two together!</p>
  </div>
  <form>
    <ol>
      <li>A simple sign-up system for freelance workers.</li>
      <li>A refined search system for clients to find the best web professional for their projects.</li>
      <li>A hassle free payment system for everybody!</li>
    </ol>
  </form>
  
  <?php  
  if(!isset($_SESSION['uid'])){
  echo"<button type='button' id='registerCompanies'><a href='registerCompany.php'>Register for Companies</a></button>";
  echo"<button type='button' id='register'><a href='register.php'>Register for Freelancers</a></button>";
  echo"<form action='login.php' method='POST'>
        Email:<input type='text' name ='email'>
        Password:<input type='password' name ='password'>   
        <button type='submit' id='btn'>Submit</button>
    </form>";}
 else{
      echo "<p>You are logged in as ".$_SESSION['email']."<a href='logout.php'>Log Out</a>";
         if ($_SESSION['type'] == 0){
      echo"<a href='accountCompany.php'><button type='button'>Account</button></a>";
    }else{
      echo"<a href='account.php'><button type='button'>Account</button></a>";
    }
    }




  ?>

  
</body>
</html>
