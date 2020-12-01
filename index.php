<?php
  include 'dbh.php';

  if (isset($_GET['page'])) {
    $page = $_GET['page'];
  }else{
    $page = 1;
  }
  $sql = "SELECT * FROM members";
  $result = mysqli_query($conn, $sql);
  $pageEnd = 5 * $page;
  $pageStart = $pageEnd - 5;
  if(mysqli_num_rows($result) < $pageEnd) {
    $pageEnd = mysqli_num_rows($result);
  }
  $pageCount = ceil(mysqli_num_rows($result)/5);
  $namesArray = array();
  $surnamesArray = array();
  $idArray = array();
  for ($i=0; $i < mysqli_num_rows($result); $i++) {
    $memberData = mysqli_fetch_assoc($result);
    array_push($namesArray, $memberData['memberName']);
    array_push($surnamesArray, $memberData['memberSurname']);
    array_push($idArray, $memberData['memberID']);
  }
  if($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $email = $_POST["email"];
    $opinion = $_POST["opinion"];
    $sql = "INSERT INTO `members`(`memberName`, `memberSurname`, `memberEmail`, `memberContent`) VALUES ('"
      . $name . "','" . $surname . "','" . $email . "','" . $opinion . "')";
    mysqli_query($conn, $sql);
  }

  function pageManager($page){
    $href = $_SERVER['REQUEST_URI'];
    if (strpos($href, '?')) {
      $href .= '&page=' . $page;
    }else {
      $href .= '?page=' . $page;
    }
    return $href;
  }
  function pageNext($page, $pageCount){
    $href = $_SERVER['REQUEST_URI'];
    if ($page < $pageCount) {
      $page++;
      if (strpos($href, '?')) {
        $href .= '&page=' . $page;
      }else {
        $href .= '?page=' . $page;
      }
      }
    return $href;
  }
  function pagePrev($page){
    $href = $_SERVER['REQUEST_URI'];
    if ($page > 1) {
      $page--;
      if (strpos($href, '?')) {
        $href .= '&page=' . $page;
      }else {
        $href .= '?page=' . $page;
      }
      }
    return $href;
  }
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="styles/style.css">
  <title>Oferts</title>
</head>
<body>
  <div class="grid-container">
    <?php
      include 'elements/header.php';
      include 'elements/menu.html';
      include 'elements/addMemberForm.html';
      include 'elements/memberList.php';
      include 'elements/footer.html';
    ?>
  </div>
</body>
</html>
