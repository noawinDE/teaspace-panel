<?php
$currPage = 'team_Dashboard';
include 'app/controller/PageController.php';
$product_count = 0;
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"><?= $currPageName; ?> ( KD - <?= $userid; ?> )</h1>
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<section class="content">
      <div class="container-fluid">
<div class="row">

		
<div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-ticket-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Offene Tickets</span>
                <span class="info-box-number"><?= $user->getOpenTicketsAdmin($userid); ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">           
<div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-ticket-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Aktive User</span>
                <span class="info-box-number"><?= $user->getAllUser($userid); ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col --> 

 
            <div class="col-12 col-sm-6 col-md-3">           
<div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-ticket-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Aktive Dienste</span>
                <span class="info-box-number"><?= $user->adminserviceCount($userid); ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col --> 

			
			<div class="col-12 col-sm-6 col-md-3">           
<div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-ticket-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Offene Service</span>
                <span class="info-box-number"><?= $user->getserviceNew($userid); ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col --> 
			
			

            
			

        </div>
		
		<div class="row">
		<br>

             <?php

                            if(isset($_POST['updateProductPrices'])){

                                $SQL = $db -> prepare("UPDATE `product_prices` SET `price` = :price WHERE `name` = 'TEAMSPEAK'");
                                $SQL->execute(array(":price" => $_POST['teamspeak']));

                                $SQL = $db -> prepare("UPDATE `product_prices` SET `price` = :price WHERE `name` = 'TEASPEAK'");
                                $SQL->execute(array(":price" => $_POST['teaspeak']));

								$SQL = $db -> prepare("UPDATE `product_prices` SET `price` = :price WHERE `name` = 'TS3AUDIOBOT'");
                                $SQL->execute(array(":price" => $_POST['bot']));

                                echo sendSuccess('Die einstellungen wurden gespeichert');
                                header('refresh:3;url='.$url.'team/dashboard');
                            }

                            ?>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header ">
                        <h4 class="card-title">Produktpreise bearbeiten</h4>
                    </div>
                    <div class="card-body ">

                       
                            <form method="post">
                                <label class="text-dark">Teamspeak:</label>
                                <input name="teamspeak" class="form-control" value="<?= $site->getProductPrice('TEAMSPEAK'); ?>">
                                <br>
                                <label class="text-dark">Teaspeak:</label>
                                <input name="teaspeak" class="form-control" value="<?= $site->getProductPrice('TEASPEAK'); ?>">
                                <br>
								<label class="text-dark">Ts3AudioBot:</label>
                                <input name="bot" class="form-control" value="<?= $site->getProductPrice('TS3AUDIOBOT'); ?>">
                                <br>
								<?php if($user->isInTeam($_COOKIE['session_token'])){ ?>
								
								<?php if($user->isAdmin($_COOKIE['session_token'])){ ?>
                                <button type="submit" name="updateProductPrices" class="btn btn-primary" style="float: right;">Speichern</button>
								<?php }else{ ?>
								<button type="submit" name="" disabled title="Keine Rechte" class="btn btn-primary" style="float: right;">Speichern</button>
								<?php }} ?>
                            </form>
                    </div>
                </div>
            </div>


                           

 
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header ">
                        <h4 class="card-title">Login / Register bearbeiten</h4>
                    </div>
                    <div class="card-body ">
                        <form method="post">
						<?php
						
                            if(isset($_POST['updateLoginSettings'])){

                                $SQL = $db -> prepare("UPDATE `settings` SET `login` = :login, `register` = :register");
                                $SQL->execute(array(":login" => $_POST['login'], ":register" => $_POST['register']));

                                echo sendSuccess('Die einstellungen wurden gespeichert');
                                header('refresh:3;url='.$url.'team/dashboard');
                            }
						
						
				
				?>
                                <label class="text-dark">Login: </label>
                                <select class="form-control" name="login">
                                    <option value="1" <?php if($helper->getSetting('login') == 1){ echo 'selected'; } ?>>Aktiviert</option>
                                    <option value="0" <?php if($helper->getSetting('login') == 0){ echo 'selected'; } ?>>Deaktiviert</option>
                                </select>
                                <br>
                                <label class="text-dark">Register: </label>
                                <select class="form-control" name="register">
                                    <option value="1" <?php if($helper->getSetting('register') == 1){ echo 'selected'; } ?>>Aktiviert</option>
                                    <option value="0" <?php if($helper->getSetting('register') == 0){ echo 'selected'; } ?>>Deaktiviert</option>
                                </select>
                                <br>
								<?php if($user->isInTeam($_COOKIE['session_token'])){ ?>
								
								<?php if($user->isAdmin($_COOKIE['session_token'])){ ?>
                                <button type="submit" name="updateLoginSettings" class="btn btn-primary" style="float: right;">Speichern</button>
								<?php }else{ ?>
								<button type="submit" name="" disabled title="Keine Rechte" class="btn btn-primary" style="float: right;">Speichern</button>
								<?php }} ?>
								
                                
                            </form>
                    </div>
                </div>
            </div>

							

</div>