<?php
  include 'dbh.php';

  $memberId = $_GET['id'];

  $sql = "SELECT memberContent FROM members WHERE memberId=\"$memberId\"";
  $result = mysqli_query($conn, $sql);
  if(mysqli_num_rows($result) > 0){
    $contentMember = mysqli_fetch_assoc($result);
  }else {
    echo "Error";
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <title>Members</title>
  </head>
  <body>
    <div class="grid-container-memberContent">
      <?php include 'elements/header.html'; ?>
      <?php include 'elements/menu.html' ?>
      <?php include 'elements/memberContentElement.php' ?>
      <?php include 'elements/footer.html' ?>
    </div>
  </body>
</html>
