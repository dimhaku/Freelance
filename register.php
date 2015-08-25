<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
</head>
<body>
<form action="freeLogin.php" method="POST">
        <p>First Name</p>
        <input type="text" name="firstName">
        <p>Last Name</p>
        <input type="text" name="lastName">
        <p>Email</p>
        <input type="text" name="email">
        <p>Websites</p>
        <input type="text" name="website">
        <p>Password</p>
        <input type="password" name="password">
        <p>Re-Enter Password</p>
        <input type="password" maxlength="15" name="rePassword">
        <input type="submit">
        <button type="button" id="back"><a href="home.php">Back</a></button>
    </form> 

</body>
</html>
