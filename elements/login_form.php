<?php
  include 'dbh.php';
  $msg = '';
  if($_SERVER["REQUEST_METHOD"] == "POST") {
        $login = $_POST['adminLogin'];
        $password = $_POST['password'];
        $sql = "SELECT * FROM admin WHERE adminLogin=\"$login\" AND password=\"$password\"";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) > 0){
          $_SESSION['valid'] = true;
          $_SESSION['timeout'] = time();
          header('Location: index.php');
        }else {
          $msg = 'Wrong username or password';
        }
  }
?>
<div class = "container form-signin">
  <form class = "form-signin" role = "form"
     action = "<?php echo htmlspecialchars($_SERVER['PHP_SELF']);
     ?>" method = "post">
     <h4 class = "form-signin-heading"><?php echo $msg; ?></h4>
     <input type = "text" class = "form-control"
        name = "adminLogin" placeholder = "Username"
        required autofocus></br>
     <input type = "password" class = "form-control"
        name = "password" placeholder = "Password" required>
     <button class = "btn btn-lg btn-primary btn-block" type = "submit"
        name = "login">Login</button>
  </form>
</div>
