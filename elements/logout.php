<?php
   session_start();
   unset($_SESSION["adminLogin"]);
   unset($_SESSION["password"]);
   unset($_SESSION["valid"]);
   echo 'You have cleaned session';
   header('Location: ../index.php');
?>
