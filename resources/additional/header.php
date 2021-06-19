<section class="row top_header">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <ul class="nav nav-pills pull-left">
                        <li><i class="fas fa-phone"></i> +49 (0) **** ***** </li>
                        <li> <a href="#"><i class="fas fa-check icon-left"></i> <span>Server Status</span></a></li>
                    </ul>
                </div>

                <div class="col-sm-6">
                    <ul class="nav nav-pills pull-right">
                    	<?php if($user->sessionExists($_COOKIE['session_token'])){ ?>
                                   
									<li class="header-link"><a href="<?= $helper->url(); ?>dashboard" class="btn-xlg"><i class="fa fa-user"></i>Kundenbereich</a></li>
                                <?php } else { ?>
<li><a href="<?= $helper->url(); ?>login">Login</a></li>
<li><a href="<?= $helper->url(); ?>register">Register</a></li>                                    
								
                                <?php } ?>
                        
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!--Navbar-->
    <nav class="navbar navbar-default navbar-static-top fluid_header centered">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="logo" href="<?= $helper->url(); ?>">
                	<img src="<?= $helper->url(); ?>assets/tea/logowhite.png" width="200"  alt="">
                </a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navigation" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main_navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<?= $helper->url(); ?>">Home</a></li>
                    <li><a href="<?= $helper->url(); ?>teaspeak/order">TeaSpeak</a></li>
						
                        <li><a href="<?= $helper->url(); ?>contact">contact</a></li>
						<?php if($user->sessionExists($_COOKIE['session_token'])){ ?>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="false"><?= $username; ?> (KD - <?= $userid; ?>)</a>
                            <ul class="dropdown-menu">
                                 <li><a href="<?= $helper->url(); ?>account/profile">Mein Profil</a></li>
                            <li><a href="<?= $helper->url(); ?>account/donate">Spenden</a></li>
                            <li><a href="<?= $helper->url(); ?>account/affiliate">Affiliate</a></li>
                           
                            <li><a href="<?= $helper->url(); ?>logout">Ausloggen</a></li>
                          </ul>
                        </li>
						<?php } else { ?>
												
											<?php } ?>
                </ul>
            </div>
        </div>
    </nav>
    <!--Navbar End-->
	