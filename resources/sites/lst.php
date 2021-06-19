<?php
$currPage = 'front_Lst/Version';
include 'app/controller/PageController.php';



?>

        <!--  cta area start -->
    <div class="home2_cta wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul>
                        <li><span>Unterstützte Systeme</span></li>
                        <li><img src="<?= $helper->url(); ?>img/2.png" width="100" alt=""></li>
                        <li><img src="https://teaspeak.de/gb/img/teaspeak-logo.png" width="100"alt=""></li>
                        <li><img src="" width="100" alt="In comming"></li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--  cta area end -->
    
    
    <!--  pricing area start -->
    <div class="home2_pricing wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="home2_section_title">
                        <h2>Versionen</h2>
                        <span class="section_border"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="Home2_table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Version </th>
                                    <th>Art</th>
                                    <th>Was wurde Geändert</th>
                                    <th>Datum</th>
                                    <th>Von</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1.0.0.0.0</td>
                                    <td>Beta</td>
                                    <td>1 Version Öffentlich gemacht</td>
                                    <td>07.07.2020</td>
                                    <td>Nico Jeffrey B</td>
                                </tr>
                                <tr>
                                    <td>1.0.0.0.1</td>
                                    <td>Beta</td>
                                    <td>Änderrung Über uns & Versions Seite Erstellt</td>
                                    <td>07.07.2020</td>
                                    <td>Jonas G & Nico Jeffrey B.</td>
                                </tr>
                                <tr>
                                    <td>1.0.0.0.2</td>
                                    <td>Beta</td>
                                    <td>Update Fehler Behoben</td>
                                    <td>07.07.2020</td>
                                    <td>Nico Jeffrey B.</td>
                                </tr>
								<tr>
                                    <td>1.0.0.0.3</td>
                                    <td>Beta</td>
                                    <td>FMS Fehler Behoben</td>
                                    <td>07.07.2020</td>
                                    <td>Nico Nico Jeffrey B. & Jonas G.</td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  pricing area end -->
    
    
    
    <!--  faq area start -->
    <div class="home2_faq_area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="home2_section_title">
                        <h2>FAQ</h2>
                        <span class="section_border"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-12">
                    <div class="home2_faq">
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                  Wem Gehört die lst und wer hat diese Entwickelt
                                  <span class="faq_arrow"><img src="assets/svg/faq_arrow.svg" alt=""></span>
                                </button>
                              </h5>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        Haubt entwickler : Nico Bary<br>
										Vertrag berechtigter<br>
										Nico Bary (Wino-space/it)<br>
										Jonas Galindo (Wino-space/it)<br>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                  Wer ist aktuell entwickler
                                  <span class="faq_arrow"><img src="assets/svg/faq_arrow.svg" alt=""></span>
                                </button>
                              </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        Nico Nico Nico Jeffrey B.<br> 
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                 Für was wurde die lst Entwickelt
                                 <span class="faq_arrow"><img src="assets/svg/faq_arrow.svg" alt=""></span>
                                </button>
                              </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                       Für Funkspiele Die sich auf das spielen virtuelle Feuerwehr ,Polizei ,Rettungsdienst Einsätze spezialisiert haben
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  faq area end -->
	
	
	    <!--  transfer area start -->
    <div class="transfer_area">
        <div class="container">
            <div class="row margin_bottom190">
                <div class="col-lg-5 offset-lg-1 wow fadeInLeft col-md-6">
                    <div class="transfer_text">
                        <h2>Login</h2>
                        <p>Ein kleines modernes login extra für euch</p>
                        
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1 wow fadeInRight col-md-6">
                    <img src="<?= $helper->url(); ?>/img/1.PNG" alt="">
                </div>
            </div>
            <div class="row margin_bottom190">
                <div class="col-lg-5 col-md-6 wow fadeInLeft">
                    <img src="<?= $helper->url(); ?>/img/" alt="">
                </div>
                <div class="col-lg-5 offset-lg-1 wow fadeInRight col-md-6">
                    <div class="transfer_text">
                        <h2>DME</h2>
                        <p>Screen ist Comming</p>
                        
						
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 offset-lg-1 wow fadeInLeft col-md-6">
                    <div class="transfer_text">
                       <h2>Dispo</h2>
                        <p>Screen ist Comming</p>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1 wow fadeInRight col-md-6">
                    <img src="<?= $helper->url(); ?>/img/" alt="">
                </div>
            </div>
        </div>
    </div>
    <!--  transfer area end -->
<!--  bewertungen area start -->
    <div class="home2_pricing wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="home2_section_title">
                        <h2>Letzte News</h2>
                        
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="Home2_table">
                         <ul class="timeline timeline-icon list-unstyled">

                        <?php
                        $SQL = $db -> prepare("SELECT * FROM `news` ORDER BY `id` DESC LIMIT 3;");
                        $SQL->execute();
                        if ($SQL->rowCount() != 0) {
                        while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){
                        ?>
                        <li class="timeline-reverse timeline-item" style="cursor: default;">
                            <div class="timeline-content-wrap">
                                <div class="timeline-dot bg-green-600" style="cursor: default;">
                                    <i class="<?php echo $row['icon']; ?> fa-2x"></i>
                                </div>
                                <div class="timeline-content">
                                    <div class="title">
                                        <?php echo ($row['message']); ?>
                                    </div>
                                    <div class="metas">
                                        <?php echo $site->formatDateWithoutTime($row['created_at']); ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <?php } } ?>

                    </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  bewertungen area end -->


	
	
	