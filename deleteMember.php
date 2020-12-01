<?php
  include 'dbh.php';
    if($_SERVER["REQUEST_METHOD"] == "POST") {
      $id = $_POST['memberID'];
      echo $id;
      $sql = "DELETE FROM members WHERE memberID=\"$id\"";
      $result = mysqli_query($conn, $sql);
      header('Location: index.php');
    }
?>
