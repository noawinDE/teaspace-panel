<?php
$currPage = 'back_Spenden';
include 'app/controller/PageController.php';

if(isset($_POST['send'])){
    $error = null;

    if(empty($_POST['beneficiary'])){
        $error = 'Bitte gebe einen Benutzernamen an';
    }

    if(empty($_POST['amount'])){
        $error = 'Bitte gebe einen Betrag an';
    }

    if(empty($_POST['desc'])){
        $error = 'Bitte gebe eine Nachricht an';
    }

    if(!$user->exists($_POST['beneficiary'])){
        $error = 'Dieser Benutzername ist nicht vergeben';
    }

    if($_POST['amount'] > $amount){
        $error = 'Dafür hast du nicht genügend Guthaben';
    }

	if(!is_numeric($_POST['amount'])){
		$error = 'Der Betrag darf nur Zahlene enthalten.';
	}
	
	if($_POST['amount'] <= 0){
        $error = 'Der Betrag kann nur postiv sein :)';
    }
	
    if(empty($error)){

        $user->removeMoney($_POST['amount'], $userid);
        $user->addTransaction($userid, '-'.$_POST['amount'],'Spende an '.$_POST['beneficiary']);

        $beneficiary_id = $user->getDataByName($_POST['beneficiary'],'id');
        $user->addMoney($_POST['amount'], $beneficiary_id);
        $user->addTransaction($beneficiary_id,$_POST['amount'],'Spende von '.$username.' Nachricht: '.$_POST['desc']);

        echo sendSuccess('Spende wurde gesendet');

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

                        <label class="text">Begünstigter (Benutzername)</label>
                        <input name="beneficiary" type="text" class="form-control">

                        <br>

                        <label class="text">Betrag</label>
                        <input name="amount" type="number" class="form-control">

                        <br>

                        <label class="text">Nachricht</label>
                        <textarea class="form-control" name="desc"></textarea>

                        <br>

                        <button type="submit" name="send" class="btn btn-primary">Spende senden</button>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>