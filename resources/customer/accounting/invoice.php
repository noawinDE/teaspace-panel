<?php
$currPage = "system_Rechnung";
include 'app/controller/PageController.php';
$invoice = $helper->protect($_GET['id']);

if(empty($_GET['id'])){
    header('Location: '.$helper->url().'accounting/transactions');
    die();
}

$SQL = $db->prepare("SELECT * FROM `transactions` WHERE `id` = :id");
$SQL->execute(array(":id" => $invoice));
$invoiceData = $SQL->fetch(PDO::FETCH_ASSOC);

$amount = str_replace('-','', $invoiceData['amount']);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Rechnung</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link href="https://adminlte.io/themes/AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/fontawesome.min.js" integrity="sha512-kI12xOdWTh/nL2vIx5Yf3z/kJSmY+nvdTXP2ARhepM/YGcmo/lmRGRttI3Da8FXLDw0Y9hRAyZ5JFO3NrCvvXA==" crossorigin="anonymous"></script>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/dist/css/AdminLTE.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
 <body >
<div class="wrapper">
    <!-- Main content -->
    <section class="invoice">
        

		<!-- title row -->
        <div class="row">
          <div class="col-xs-6">
                <h2 class="page-header">
                    <img src="<?= $helper->url(); ?>assets/logonew.png" alt=""  width="250">
					<br>
                    <small class="">Datum: <?= $helper->formatDate($invoiceData['created_at']); ?></small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                Händler
                <address>
                    <strong><?= $helper->siteName(); ?></strong><br>
                    <strong>Nico Jeffrey Bary (Einzelunternehmen)</strong><br>
                    Postfach 120344<br>
                    44293 Dortmund<br>
                    Email: info@wino-space.de<br>
					Telefon: +49 (0) 2452 860729
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                Kunde
                <address>
                    <strong><?= $user->getDataById($invoiceData['user_id'],'firstname'); ?> <?= $user->getDataById($invoiceData['user_id'],'lastname'); ?></strong><br>
                    <?= $user->getDataById($invoiceData['user_id'],'street'); ?><br>
                    <?= $user->getDataById($invoiceData['user_id'],'postcode'); ?> <?= $user->getDataById($invoiceData['user_id'],'city'); ?><br>
                    <?= $user->getDataById($invoiceData['user_id'],'country'); ?><br>
                    Email: <?= $user->getDataById($invoiceData['user_id'],'email'); ?>
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                <b>Rechnung #<?= $invoice; ?></b><br>
                <br>
                <b>Status:</b> Bezahlt, <?= $helper->formatDate($invoiceData['created_at']); ?>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Menge</th>
                            <th>Artikel</th>
                            <th>Preis</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><?= $invoiceData['desc']; ?></td>
                            <td><?= $amount; ?>€</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                    Gem. §19 UStG wird die Mehrwertsteuer in der Rechnung nicht ausgewiesen.<b>
					Bei Fragen oder Problemen wenden Sie sich bitte an den Kundenservice.</b>
                </p>
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Fälligkeit <?= $helper->formatDateWithoutTime($invoiceData['created_at']); ?></p>

                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">Preis:</th>
                            <td><?= $amount; ?>€</td>
                        </tr>
                        <tr>
                            <th>Mwst (0.00%)</th>
                            <td>0.00€</td>
                        </tr>
                        <tr>
                            <th>Gesammtkosten:</th>
                            <td><?= $amount; ?>€</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
     <button class="btn btn-secondary" onclick="window.print();">Drucken</button><br>
	 <br>
	 
	 <a class="btn btn-secondary" href="https://wino-space.de/dashboard">Zurück</a>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>

