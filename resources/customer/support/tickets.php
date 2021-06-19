<?php
$currPage = 'back_Tickets';
include 'app/controller/PageController.php';
?>
< <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text"><?= $currPageName; ?> ( KD - <?= $userid; ?> )</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
			<a href="<?= $helper->url(); ?>ticket/create" class="btn btn-block btn-primary">Neues Ticket erstellen</a>
			</ol>
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
 <section class="content">
        <div class="col-md-12">
            <div class="panel panel-darkblue">
                <div class="card-body">
                    <table id="my_table" class="table table-nowrap">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Titel</th>
                            <th scope="col">Status</th>
                            <th scope="col">Letzte Antwort</th>
                            <th scope="col">Datum</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $SQL = $db -> prepare("SELECT * FROM `tickets` WHERE `user_id` = :user_id ORDER BY `id` DESC");
                        $SQL->execute(array(":user_id" => $userid));
                        if ($SQL->rowCount() != 0) {
                            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){

                                if($row['state'] == 'OPEN'){
                                    $status = '<span class="badge bg-success">Offen</span>';
                                } elseif($row['state'] == 'CLOSED'){
                                    $status = '<span class="badge bg-danger">Geschlossen</span>';
                                }

                                if($row['last_msg'] == 'CUSTOMER'){
                                    $last_msg = '<span class="badge bg-secondary">Kundenantwort</span>';
                                } elseif($row['last_msg'] == 'SUPPORT'){
                                    $last_msg = '<span class="badge bg-info">Supportantwort</span>';
                                }

                                ?>
                                <tr>
                                    <th scope="row"><?php echo $row['id']; ?></th>
                                    <th scope="row"><?= $helper->xssFix($row['title']); ?></th>
                                    <th scope="row"><?php echo $status; ?></th>
                                    <th scope="row"><?php echo $last_msg; ?></th>
                                    <td><?php echo $site->formatDate($row['created_at']); ?></td>
                                    <td><a href="<?php echo $helper->url(); ?>ticket/<?php echo $row['id']; ?>" class="btn btn-primary btn-sm">Anschauen</a></td>
                                </tr>
                            <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    </div>
</div>