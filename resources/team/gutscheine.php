<?php
$currPage = 'team_Gutscheine_admin';
include 'app/controller/PageController.php';

function generateChar1($length = 4) {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

function generateChar2($length = 4) {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

function generateChar3($length = 4) {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

$gcode = generateChar1().'-'.generateChar2().'-'.$helper->generateChar3();





                if(isset($_POST['delte'])){
                    $errors = null;

                   

                    

                    if(empty($errors)){

                        $SQL = $db->prepare("DELETE FROM `voucher_codes` WHERE `id` = :id");
                        $SQL->execute(array(":id" => $_POST['id2']));
                        header('refresh:3;url='.$url.'team/gutscheine');
                        echo sendSuccess('Gutschein wurde gelöscht');
                    } else {
                        echo sendError($errors);
                    }
                }

       if(isset($_POST['gen'])){
                    $errors = null;

                   

                    if(empty($_POST['code'])){
                        $errors = 'Bitte gebe eine Nachricht an';
                    }
					if(empty($_POST['amount'])){
                        $errors = 'Bitte gebe eine Nachricht an';
                    }

                    if(empty($errors)){

                        $SQL = $db -> prepare("INSERT INTO `voucher_codes`(`code`, `amount`) VALUES (:code, :amount)");
                        $SQL->execute(array(":code" => $_POST['code'], ":amount" => $_POST['amount']));
                        header('refresh:3;url='.$url.'team/gutscheine');
                        echo sendSuccess('Gutschein wurde erstellt');
                    } else {
                        echo sendError($errors);
                    }
                }
        
			   
			   

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
      <div class="row">
				<div class="col-md-5">
					<div class="card card-body">
						
							
								
									
											<h4>Gutschein Erstellen</h4>
<br>
											<form method="post">
											<label>Icon:</label>
											<input name="code"  value="<?php echo $gcode; ?>" class="form-control">
											<br>
											<label>Betrag:</label>
											<input name="amount" class="form-control" value="1.00">
											<br>
											<button type="submit" name="gen" class="btn btn-block btn-primary ">Erstellen</button>
											<br>
											</form>
										
								
							
						
					</div>
				</div>
					 
            <div class="col-md-7">
                <div class="card card-body">

                    <h4 class="text-center">Gutschein</h4>

                    <table id="basic-datatable" class="table dt-responsive nowrap">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Code</th>
                            <th>Betrag</th>
                            <th>Datum</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $SQL = $db->prepare("SELECT * FROM `voucher_codes`");
                        $SQL->execute();
                        if ($SQL->rowCount() != 0) {
                            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){ ?>
                                <tr>
                                    <form method="post">
										<td><input name="id2" value="<?= $row['id']; ?>" class="form-control col-md-2" readonly></td>
										<td><?= $row['code']; ?></td>
										<td><?= $row['amount']; ?> €</td>
										<td><?= $helper->formatDate($row['created_at']); ?></td>
										<td>
											<button type="submit" name="delte" class="btn btn-block btn-primary ">
												<i class="fas fa-trash"></i>
											</button>
										</td>
									</form>
								</tr>
                            <?php } } ?>
                        </tbody>
                    </table>

                </div>
            </div>
					
				
		</div>
	</div>
</div>

