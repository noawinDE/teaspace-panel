<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a  href="<?= $helper->url(); ?>" class="brand-link">
      
		   <img src="<?= $helper->url(); ?>assets/tea/logo.png" alt=""  class="brand-image "
           style="opacity: .8">
      <p class="brand-text font-weight-light"><?= $siteName; ?></p>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
		  <li class="nav-item">
            <a class="nav-link" href="<?= $helper->url(); ?>dashboard" class="nav-link">
              <i class="fas fa-home"></i>
              <p>Dashboard</p>
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="<?= $helper->url(); ?>tickets" class="nav-link">
              <i class="fa fa-life-ring"></i>
              <p>Support</p>
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="<?= $helper->url(); ?>teaspeak/" class="nav-link">
              <i class="fa fa-life-ring"></i>
              <p>TeaSpeak</p>
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="<?= $helper->url(); ?>teaspeak/order" class="nav-link">
              <i class="fa fa-life-ring"></i>
              <p>TeaSpeak - Bestellen</p>
            </a>
          </li>
		  
		 
		  <li class="nav-item has-treeview ">
            <a class="nav-link" href="#" class="nav-link ">
              <i class="nav-fas fa fa-user"></i>
              <p>
                Mein Account
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              
						<li class="nav-item"><a  class="nav-link active" href="<?= $helper->url(); ?>account/profile">Mein Profil</a></li>
                        <li class="nav-item" ><a class="nav-link active" href="<?= $helper->url(); ?>account/donate">Spenden</a></a></li>
                        <li class="nav-item"><a class="nav-link active" href="<?= $helper->url(); ?>account/affiliate">Affiliate</a></li>
                      

            </ul>
          </li>
          
		  <li class="nav-item has-treeview ">
            <a class="nav-link" href="#" class="nav-link ">
              <i class="nav-fas fa fa-user"></i>
              <p>
                Buchhaltung
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              
						<li class="nav-item"><a  class="nav-link active" href="<?= $helper->url(); ?>accounting/charge">Guthaben aufladen</a></li>
                        <li class="nav-item" ><a class="nav-link active" href="<?= $helper->url(); ?>accounting/transactions">Transaktionen</a></a></li>
                        
                      

            </ul>
          </li>
              <?php if (isset($_COOKIE['old_session_token'])) { ?>
                  <div class="dropdown-divider"></div>  
				  
<li class="nav-item">
            <a class="nav-link" href="<?= $helper->url(); ?>team/login_back" class="nav-link">
                <i class="menu-icon fa fa-life-ring"></i>
              <p>Zum ACP</p>
            </a>
          </li>
                <?php } ?>
				
				<?php if($user->isInTeam($_COOKIE['session_token'])){ ?>
				<div class="dropdown-divider"></div> 
				
				<li class="nav-item ">
                    <a class="nav-link" href="<?= $helper->url(); ?>team/dashboard">
                        <i class="menu-icon fas fa-home"></i>
						<p>ACP</p>
                    </a>
                </li>
                <li class="nav-item" >
                    <a  class="nav-link" href="<?= $helper->url(); ?>team/tickets">
                        <i class="menu-icon fa fa-life-ring"></i>
						<p>Ticket System</p>
                    </a>
                </li>
				<li class="nav-item" >
                        <a class="nav-link" href="<?= $helper->url(); ?>team/users">
                            <i class="menu-icon fas fa-users"></i>
							<p>Benutzerverwaltung</p>
                        </a>
                    </li>
				
		  
<?php if($user->isAdmin($_COOKIE['session_token'])){ ?>
<div class="dropdown-divider"></div>  
		
					
                    <li class="nav-item" >
                        <a class="nav-link" href="<?= $helper->url(); ?>team/transactions">
                            <i class="menu-icon fas fa-euro-sign"></i>
							<p>Transaktionen</p>
                        </a>
                    </li>
                    
					<li class="nav-item" >
                        <a class="nav-link" href="<?= $helper->url(); ?>team/news">
                            <i class="menu-icon fas fa-newspaper"></i>
							<p>News</p>
                        </a>
                    </li>
					<li class="nav-item" >
                        <a class="nav-link" href="<?= $helper->url(); ?>team/gutscheine">
                            <i class="menu-icon fas fa-newspaper"></i>
							<p>Gutscheine</p>
                        </a>
                    </li>
					<li class="nav-item" >
                        <a class="nav-link" href="<?= $helper->url(); ?>team/emailblack">
                            <i class="menu-icon fas fa-newspaper"></i>
							<p>Email Blackliste</p>
                        </a>
                    </li>
<?php } ?>
<?php } ?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>