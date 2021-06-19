



<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>


    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link text" data-toggle="dropdown" href="#">
			<i class="fas fa-user"></i>
          <?= $username; ?>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header"><?= $username; ?></span>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="">KD - <?= $userid; ?></a>
		  <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="<?= $helper->url(); ?>account/profile">Mein Profil</a>
            <div class="dropdown-divider"></div>
           <a  class="dropdown-item" href="<?= $helper->url(); ?>account/donate">Spenden</a>
           <div class="dropdown-divider"></div>
            <a  class="dropdown-item" href="<?= $helper->url(); ?>account/affiliate">Affiliate</a>
            <div class="dropdown-divider"></div>
            <form method="post">
                <?php if($_COOKIE['mode'] == 'dark'){ ?>
                <button type="submit" name="changeMode" class="dropdown-item" >Light Mode</button>
                <?php } else { ?>
                <button type="submit" name="changeMode" class="dropdown-item" >Dark Mode</button>
                <?php } ?>
            </form>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="<?= $helper->url(); ?>logout">Ausloggen</a>
          <div class="dropdown-divider"></div>
          
        </div>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->