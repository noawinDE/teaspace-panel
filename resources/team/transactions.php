<?php
$currPage = 'team_Transaktionen_admin';
include 'app/controller/PageController.php';
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
			<div class="col-md-12">
				<div class="card card-body">

					<table id="my_table" class="table table-nowrap">
						<thead>
							<tr>
								<th>#</th>
								<th>Benutzername</th>
								<th>Beschreibung</th>
								<th>Betrag</th>
								<th>Datum</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<?php
						$SQL = $db -> prepare("SELECT * FROM `transactions` WHERE `state` = 'success' ORDER BY `id` DESC");
						$SQL->execute();
						if ($SQL->rowCount() != 0) {
						while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){?>
							<tr>
								<th><?php echo $row['id']; ?></th>
								<th><?php echo $user->getDataById($row['user_id'],'username'); ?></th>
								<th><?php echo $helper->protect($row['desc']); ?></th>
								<th><?php echo $helper->protect($row['amount']); ?></th>
								<td><?php echo $helper->formatDate($row['created_at']); ?></td>
								<td><a class="btn btn-primary btn-sm" href="<?= $helper->url(); ?>team/invoice/<?= $row['id']; ?>">Zur Rechnung</a></td>
							</tr>
						<?php } } ?>
						</tbody>
					</table>

				</div>
			</div>
		</div>
    </div>
</div>