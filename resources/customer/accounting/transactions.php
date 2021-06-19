<?php
$currPage = 'back_Zahlungsverlauf';
include 'app/controller/PageController.php';
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
	   <div class="row ">


        <div class="col-md-12">
            
            <div class="card">
              <div class="card-header">
                
                <h4 class="text-center">Meine Zahlungen</h4>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                
                <table id="my_table" class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Beschreibung</th>
                        <th>Betrag</th>
                        <th>Datum</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $SQL = $db->prepare("SELECT * FROM `user_transactions` WHERE `user_id` = :user_id");
                    $SQL->execute(array(":user_id" => $userid));
                    if ($SQL->rowCount() != 0) {
                    while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){ ?>
                        <tr>
                            <td><?= $row['id']; ?></td>
                            <td><?= $helper->protect($row['desc']); ?></td>
                            <td><?= $row['amount']; ?>€</td>
                            <td><?= $helper->formatDate($row['created_at']); ?></td>
                            
                        </tr>
                    <?php } } ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>