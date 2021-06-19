
    <!--  wraper area start -->
    <div class="wraper_area2">
        <div class="top_area2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="top2-left">
                            <a href="tel:'"><i class="fas fa-phone icon-left"></i> <span> +49 (0) 2452 860729</span></a>
                            <a href="https://status.wino-space.de/"><i class="fas fa-check icon-left"></i> <span>Server Status</span></a>
                        </div>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="top2-right">
                            <div class="header-right">
                                <?php if($user->sessionExists($_COOKIE['session_token'])){ ?>
                                    <a class="login" href="<?= $helper->url(); ?>dashboard">Kundenbereich</a>
                                <?php } else { ?>
                                     <a class="login" href="<?= $helper->url(); ?>login">Login</a>
                                     <a class="signup global_gradient_btn" href="<?= $helper->url(); ?>register">Sign up</a>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="home2_mainmenu">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="home2_menubg">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="home2_logo">
                                        <a href="<?= $helper->url(); ?>"><img src="<?= $helper->url(); ?>assets/logonew.png"width="100" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-md-9 text-right">
                                    <div class="responsive_menu"></div>
                                    <div class="home2_menu_right">
                                        <ul>
                                            <li><a href="<?= $helper->url(); ?>">Startseite</a></li>
                                            <li><a >Produkte</a>
                                                <ul class="drop_menu">
                                                    <li><a href="<?= $helper->url(); ?>webspace/order">Webspace</a></li>
													<li>
                                                        <a target="_blank" href="https://domainhost24.eu">Domains</a>
                                                    </li>
                                                    <li><a href="<?= $helper->url(); ?>teamspeak/order">Teamspeak</a></li>
                                                    <li><a href="<?= $helper->url(); ?>teaspeak/order">TeaSpeak</a></li>
                                                    <li><a href="<?= $helper->url(); ?>service/order">Service</a></li>
                                                </ul>
                                            </li>
                                            <?php if($user->sessionExists($_COOKIE['session_token'])){ ?>
                                            <li><a href="#"><?= $username; ?> (KD - <?= $userid; ?>)</a>
                                                <ul class="drop_menu">
                            
                            <li><a href="<?= $helper->url(); ?>account/profile">Mein Profil</a></li>
                            <li><a href="<?= $helper->url(); ?>account/donate">Spenden</a></li>
                            <li><a href="<?= $helper->url(); ?>account/affiliate">Affiliate</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="<?= $helper->url(); ?>logout">Ausloggen</a></li>
                        </ul>
                                            </li>
											<?php } else { ?>
												<li><a href="#">Nicht Eingeloggt</a>
                                                
                                            </li>
											<?php } ?>
                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="home2_hero">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Wino-Space/IT</h1>
                        <p>Wir hosten Sie, und Ihre Projekte</p>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="home2_hero_img">
                            <img src="<?= $helper->url(); ?>assets/server.png"  alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  wraper area end -->






