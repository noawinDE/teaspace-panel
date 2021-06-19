<?php
$currPage = 'back_Affiliate';
include 'app/controller/PageController.php';

if (isset($_POST['setAffiliateID'])) {
    $error = null;

    if (!empty($affiliate_id)) {
        $error = 'Du hast bereits eine AffiliateID';
    }


    if (empty($_POST['affiliate_id'])) {
        $error = 'Bitte gebe eine AffiliateID an';
    }

    $affiliate_id = strtolower($_POST['affiliate_id']);
    if(preg_match("/^[a-zA-Z0-9]+$/", $affiliate_id) == 0){
        $error = 'AffiliateID enthält unerlaubte Zeichen';
    }

    $SQL = $db->prepare("SELECT * FROM `users` WHERE `affiliate_id` = :affiliate_id");
    $SQL->execute(array(":affiliate_id" => $affiliate_id));
    if ($SQL->rowCount() != 0) {
        $error = 'Diese AffiliateID ist bereits vergeben';
    }

    if (empty($error)) {
        $SQL = $db->prepare("UPDATE `users` SET `affiliate_id` = :affiliate_id WHERE `id` = :id");
        $SQL->execute(array(":affiliate_id" => $_POST['affiliate_id'], ":id" => $userid));

        echo sendSuccess('Affiliate wurde aktiviert');
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

                    <?php if (empty($affiliate_id)) { ?>
                        <form method="post">
                            <label class="text">Deine Affiliate ID</label>
                            <input class="form-control" name="affiliate_id">
                            <br>
                            <button type="submit" name="setAffiliateID" class="btn btn-primary btn-block"> Affiliate aktivieren</button>
                        </form>
                    <?php } else { ?>
                        <label class="text">Deine Affiliate ID</label>
                        <input class="form-control" readonly id="myInput" value="<?= $helper->url(); ?>a/<?= $affiliate_id; ?>"> <br>
                        <br>
                        <p>
                            Für jeden geworbenen Kunden, der mindestens 5€ auflädt erhältst du 1€ Guthaben.
                        </p>
                    <?php } ?>

                </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col-md-8"><b>Klicks auf deinen Link</b></div>
                        <div class="col-md-4" style="text-align: right;"><?= $affiliate->countClicks($affiliate_id); ?></div>

                        <div class="col-md-8"><b>Registrierungen über deinen Link</b></div>
                        <div class="col-md-4" style="text-align: right;"><?= $affiliate->countRegisters($affiliate_id); ?></div>

                        <div class="col-md-8"><b>Erhaltene Bonuszahlungen</b></div>
                        <div class="col-md-4" style="text-align: right;"><?= $affiliate->countPayouts($affiliate_id); ?></div>
                    </div>

                </div>
                </div>
            </div>



    </div>
</div>