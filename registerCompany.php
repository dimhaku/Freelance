<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
</head>
<body>
    <form action="compReg.php" method="post">
        <p>Company Name</p>
        <input type="text" name="companyName">
        <p>Email</p>
        <input type="text" name="email">
        <p>Location</p>
        <input type="text" name="location">
        <p>Description</p>
        <textarea name="description"></textarea>
        <p>Password</p>
        <input type="password" name="password">
        <p>Re-Enter Password</p>
        <input type="password" maxlength="15" name="d">
        <input type="submit">
        <button type="button" name="back"><a href="home.php">Back</a></button>
    </form>
  
</body>
</html>
