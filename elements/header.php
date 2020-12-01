<?php
  session_start();
  if(isset($_SESSION['valid'])) {
    $loginButtonText = 'Log out';
    $loginButtonHref = 'elements/logout.php';
  }
  else{
    $loginButtonText = 'Log in';
    $loginButtonHref = 'login_page.php';
  }
?>
<header class="grid-item">
    <div class="navbar">
      <div class="logo">
        <a href="index.php" title="Home"> My Members </a>
      </div>
      <ul class="navbarSupportedContent">
        <li>
          <a href="information.php" title="About Us"> About us </a>
        </li>
        <li>
          <a href="contact.php" title="Contact Us"> Contact us</a>
        </li>
        <li>
          <a href=<?php echo $loginButtonHref ?>> <?php echo $loginButtonText ?> </a>
        </li>
        <?php if(isset($_SESSION['valid'])) { ?>
          <li>
            <a href="admin_page.php" title="Admin Page"> Admin Page</a>
          </li>
        <?php } ?>
      </ul>
    </div>
</header>
