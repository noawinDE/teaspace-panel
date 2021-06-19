<?php
$currPage = 'team_Benutzerverwaltung_team';
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
				<div id="row">
					<div class="card card-body">
						<div class="feature-content">
							<table id="my_table" class="table table-nowrap">
								<thead>
									<tr>
										<th>#</th>
										<th>Benutzername</th>
										<th>E-Mail</th>
										<th>Support Pin</th>
										<th>Status</th>
										<th>Kunde seit</th>
										<th> </th>
									</tr>
								</thead>
								<tbody>
								<?php
								$SQL = $db -> prepare("SELECT * FROM `users` ORDER BY `id` DESC");
								$SQL->execute();
								if ($SQL->rowCount() != 0) {
								while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){
									switch($row["state"]){
                  case "active":
                    $status = '<i class="fas fa-user-check fa-2x" title="Aktiv"></i>';
                    break;
                  case "hv":
                    $status = '<i class="fas fa-user-slash fa-2x" title="Gesperrt" ></i>';
                    break;
                  case "pending":
                    $status = '<i class="fas fa-user-clock fa-2x"></i> (Mail)';
                    break;
                }
									
									?>
									<tr>
										<th><?php echo $row['id']; ?></th>
										<th><?php echo $row['username']; ?></th>
										<th><?php echo $row['email']; ?></th>
										<th><?php echo $row['support_pin']; ?></th>
										<th><?php echo $status ?></th>
										<td><?php echo $row['created_at']; ?></td>
										<td><a href="<?php echo $url; ?>team/user/<?php echo $row['id']; ?>" class="btn btn-primary btn-sm">Anschauen</a></td>
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
</div>