<?php
$currPage = 'back_Mein Profil';
include 'app/controller/PageController.php';

if(isset($_POST['saveProfile'])){
    $error = null;

    if(empty($error)){

        $SQL = $db->prepare("UPDATE `users` SET `firstname` = :firstname, `lastname` = :lastname, `street` = :street, `postcode` = :postcode, `city` = :city, `country` = :country WHERE `email` = :email");
        $SQL->execute(array(":firstname" => $_POST['firstname'], ":lastname" => $_POST['lastname'], ":street" => $_POST['street'], ":postcode" => $_POST['postcode'], ":city" => $_POST['city'], ":country" => $_POST['country'], ":email" => $mail));

        echo sendSuccess('Daten wurden gespeichert');

    } else {
        echo sendError($error);
    }

}

if(isset($_POST['checkVoucher'])){
    $error = null;

    if(empty($_POST['voucher_code'])){
        $error = 'Bitte gebe einen Code an';
    }

    $SQL = $db->prepare("SELECT * FROM `voucher_codes` WHERE `code` = :code");
    $SQL->execute(array(':code' => $_POST['voucher_code']));
    if($SQL->rowCount() != 1){
        $error = 'Gutscheincode ungültig';
    }
    $codeData = $SQL -> fetch(PDO::FETCH_ASSOC);

    if(empty($error)){
        $user->addMoney($codeData['amount'], $userid);
        $user->addTransaction($userid, $codeData['amount'],'Gutschein '.$_POST['voucher_code']);

        $SQL = $db->prepare("DELETE FROM `voucher_codes` WHERE `code` = :code");
        $SQL->execute(array(':code' => $_POST['voucher_code']));

        echo sendSuccess('Gutschein wurde eingelöst');
    } else {
        echo sendError($error);
    }
}

if(isset($_POST['saveSettings'])){
    $error = null;

    if(isset($_POST['login_notify'])){
        $login_notify = 1;
    } else {
        $login_notify = 0;
    }

    if(isset($_POST['transaction_notify'])){
        $transaction_notify = 1;
    } else {
        $transaction_notify = 0;
    }

    if(isset($_POST['product_notify'])){
        $product_notify = 1;
    } else {
        $product_notify = 0;
    }

    if(isset($_POST['support_notify'])){
        $support_notify = 1;
    } else {
        $support_notify = 0;
    }

    if(empty($error)){

        $SQL = $db->prepare("UPDATE `users` SET `login_notify`=:login_notify,`transaction_notify`=:transaction_notify,`product_notify`=:product_notify,`support_notify`=:support_notify WHERE `id` = :id");
        $SQL->execute(array(":login_notify" => $login_notify, ":transaction_notify" => $transaction_notify, ":product_notify" => $product_notify, ":support_notify" => $support_notify, ":id" => $userid));

        echo sendSuccess('Daten wurden gespeichert');
    } else {
        echo sendError($error);
    }
}

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

            <div class="col-md-6">
                <div class="card">
				<div class="card-body">
					
                    <form method="post">
                        <label class="text">Vorname</label>
                        <input class="form-control" name="firstname" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'firstname')); ?>">
                        <br>
                        <label class="text">Nachname</label>
                        <input class="form-control" name="lastname" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'lastname')); ?>">
                        <br>
                        <label class="text">Straße, Hausnummer</label>
                        <input class="form-control" name="street" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'street')); ?>">
                        <br>
                        <label class="text">Postleitzahl</label>
                        <input class="form-control" type="number" name="postcode" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'postcode')); ?>">
                        <br>
                        <label class="text">Ort</label>
                        <input class="form-control" name="city" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'city')); ?>">
                        <br>
                        <label class="text">Land</label>
                        <input class="form-control" name="country" value="<?= $helper->protect($user->getDataBySession($_COOKIE['session_token'],'country')); ?>">

                        <br>
                        <button type="submit" name="saveProfile" class="btn btn-primary btn-block"> Speichern</button>
                    </form>

                </div>
                </div>
                
            </div>
			
		
            <div class="col-md-6">
                <div class="card">
					<div class="card-body">

                    <form method="post">
                        <label class="text">Gutschein Code</label>
                        <input class="form-control" name="voucher_code" placeholder="XXX-XXX-XXX-XXX">

                        <br>
                        <button type="submit" name="checkVoucher" class="btn btn-primary btn-block"> Code einlösen</button>
                    </form>
					</div>
                </div>
					<div class="col-md-1"></div>
					<div class="card">
						<div class="card-body">
						
							<form method="post">

								<label class="text">
									<input type="checkbox" name="login_notify" <?php if($user->getDataById($userid,'login_notify') == 1){ echo 'checked'; } ?>>
									Login E-Mail
								</label>

								<br>

								<label class="text">
									<input type="checkbox" name="transaction_notify" <?php if($user->getDataById($userid,'transaction_notify') == 1){ echo 'checked'; } ?>>
									Transaktions E-Mail
								</label>

								<br>

								<label class="text">
									<input type="checkbox" name="product_notify" <?php if($user->getDataById($userid,'product_notify') == 1){ echo 'checked'; } ?>>
									Produktauslauf E-Mail
								</label>

								<br>

								<label class="text">
									<input type="checkbox" name="support_notify" <?php if($user->getDataById($userid,'support_notify') == 1){ echo 'checked'; } ?>>
									Support E-Mail
								</label>

								<br>
								<br>
								<button type="submit" name="saveSettings" class="btn btn-primary btn-block"> Speichern</button>
							</form>
							</div>
					</div>
                
            </div>

            
            
		</div>
