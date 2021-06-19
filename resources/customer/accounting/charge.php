<?php
$currPage = 'back_Guthaben aufladen';
include 'app/controller/PageController.php';
include 'app/manager/customer/payment/init.php'
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

        <div class="col-md-4">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title text-center">Guthaben aufladen</h4>
                
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                    

                    <br>

                    <form method="post">

                        <label for="amount" class="text">Betrag</label><br>
                        <input id="amount" class="form-control" value="1.00" name="amount">

                        <br><br>
						
						<label for="amount" class="text">Methode</label><br>
                        <select class="form-control" id="payment_method" name="payment_method">
                            <option value="paypal">paypal</option>
                            <option value="BANKTRANSFER">Überweisung</option>
                            <option value="PAYSAFECARD">Paysafecard (15% Transaktionsgebühren)</option>
							<option value="GIROPAY">GiroPay</option>
                            <option value="SOFORT">Sofortüberweisung</option>
                            <option value="EPS">EPS</option>
                            <option value="IDEAL">IDEAL</option>
                        </select>

                        <br><br>

                        <button type="submit" name="startPayment" class="btn btn-block btn-primary">Guthaben aufladen</button>

                    </form>

				</div>
            </div>
        </div>

            
            <div class="col-md-8">
                 
            <div class="card">
              <div class="card-header">
               
                <h4 class="text-center">Meine Zahlungen</h4>

              </div>
              <!-- /.card-header -->
              <div class="card-body">
                    
                    <table id="basic-datatable" class="table dt-responsive nowrap">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Beschreibung</th>
                            <th>Betrag</th>
                            <th>Datum</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $SQL = $db->prepare("SELECT * FROM `transactions` WHERE `user_id` = :user_id AND `state` = :state");
                        $SQL->execute(array(":user_id" => $userid, ":state" => 'success'));
                        if ($SQL->rowCount() != 0) {
                            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){ ?>
                                <tr>
                                    <td><?= $row['id']; ?></td>
                                    <td><?= $row['desc']; ?></td>
                                    <td><?= $row['amount']; ?>€</td>
                                    <td><?= $helper->formatDate($row['created_at']); ?></td>
                                    <td> <a class="btn btn-primary btn-sm" href="<?= $helper->url(); ?>accounting/invoice/<?= $row['id']; ?>">Zur Rechnung</a> </td>
                                </tr>
                            <?php } } ?>
                        </tbody>
                    </table>

                </div>
            </div>
            </div>
	<div class="col-md-12">
                
            <div class="card">
              <div class="card-header">
                
                 <h4 class="mb-0 text-center"><b>Hinweis</b></h4>
              </div>
              <!-- /.card-header -->
              <div class="card-body">

                   

                    <br>

                    <p class="mb-0 text-center" >
 Es ist kein Abo. Der Betrag wird nur einmalig fällig, es entstehen <b><u>keine</u></b> weiteren Kosten.  Keine Kündigung notwendig!<br>Mit dieser Zahlung wird nur das Guthaben des Kundenkontos aufgeladen. Guthaben kann <b><u>nicht</u></b> wieder ausgezahlt werden.

                    </p>

                </div>
            </div>
    </div>
</div>