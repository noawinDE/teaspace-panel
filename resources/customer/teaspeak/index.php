<?php
$currPage = 'back_Dashboard';
include 'app/controller/PageController.php';

$product_count = 0;
?>


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text"><?= $currPageName; ?> ( KD - <?= $userid; ?> )</h1>
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
        <section class="content">
        <div class="page-title">
            <hr>
            <h3 class="text-center ">Meine Teaspeak's</h3>
			 <hr>
        </div>

        <div class="row">

            <?php
            $SQL = $db->prepare("SELECT * FROM `teaspeaks` WHERE `user_id` = :user_id AND `deleted_at` IS NULL");
            $SQL->execute(array(":user_id" => $userid));
            if ($SQL->rowCount() != 0) {
            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){ $product_count++; ?>
            <div class="col-md-4">
               <div class="card text-center">
               
					<div class="card-header">
						<ul class="list-group list-group-flush">
                        <li class=" text-center list-group-item"><h2>Teaspeak #<?= $row['id']; ?></h2></li>
						</div>
						<div class="card-body">
                        <li class="list-group-item">
                           <strong>IP:Port</strong> <?= $row['teaspeak_ip']; ?>:<?= $row['teaspeak_port']; ?>
                        </li>
                        <li class="list-group-item">
                            <strong>Preis</strong> <?= number_format($row['price'] * $row['slots'], 2); ?>€ /monat
                        </li>
                        <li class="list-group-item">
                            <strong>Laufzeit</strong> <?= $helper->formatDate($row['expire_at']); ?>
                        </li>
                        
                        <li class="mx-auto list-group-item">
                            <a href="<?= $helper->url(); ?>teaspeak/manage/<?= $row['id']; ?>" class="text-center btn btn-success btn-rounded">Verwalten</a>
                        </li>
						
					</div></ul>
                </div>
            </div>
            <?php } } ?>

            

        </div>

        <?php

        if($product_count == 0){
            echo '<h1 class="text-center">Du hast noch Teaspeak´s</h1>';
        }

        ?>

    </div>
</div>
