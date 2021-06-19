<?php
$currPage = 'team_News';
include 'app/controller/PageController.php';

if(isset($_POST['delte'])){
                    $errors = null;

                   

                    

                    if(empty($errors)){

                        $SQL = $db->prepare("DELETE FROM `news` WHERE `id` = :id");
                        $SQL->execute(array(":id" => $_POST['id2']));
                        header('refresh:3;url='.$url.'team/news');
                        echo sendSuccess('News wurde gelöscht');
                    } else {
                        echo sendError($errors);
                    }
                }

                if(isset($_POST['createNews'])){
                    $errors = null;

                    if(empty($_POST['icon'])){
                        $errors = 'Bitte gebe ein Icon an';
                    }

                    if(empty($_POST['message'])){
                        $errors = 'Bitte gebe eine Nachricht an';
                    }

                    if(empty($errors)){

                         $SQL = $db -> prepare("INSERT INTO `news`(`user_id`, `icon`, `message`) VALUES (:user_id, :icon, :message)");
                        $SQL->execute(array(":user_id" => $userid, ":icon" => $_POST['icon'], ":message" => $_POST['message']));
                        header('refresh:3;url='.$url.'team/news');
                        echo sendSuccess('News wurden erstellt');
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

				<div class="col-md-6">
					<div class="card">
						<div class="feature-content">
							
								
								<div class="card-header">
											<h4>News schreiben</h4>
											<div>
										<div class="card-body">
											<form method="post">
											<label>Icon:</label>
											<input name="icon" placeholder="zb.: Info" class="form-control">
											<br>
											<label>Nachricht:</label>
											<textarea class="form-control" name="message"></textarea>
											<br>
											<button type="submit" name="createNews" class="btn btn-primary" style="float: right;">Erstellen</button>
											</form>
										</div>
								
								
							</div>
						</div>
					</div>
					
			</div>
		</div>
		
		<div class="col-md-6">
		<div class="card card-body">
						<div class="feature-content">
							<div class="row">
								
								 
                                <div class="table-responsive">
                                    <table class="table   text-white table-bordered" id="dataTableDE" width="100%" cellspacing="0">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>
                                            <th>Nachricht</th>
                                            <th>von</th>
                                            <th></th>
                                            
                                        </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <?php
                                        $SQL = $db->prepare("SELECT * FROM `news` ORDER BY `id` DESC LIMIT 3;");
                                        $SQL->execute();
                                        
                                            while ($row = $SQL->fetch(PDO::FETCH_ASSOC)) { ?>
                                                <tr>
												<form method="post">
												<td><input name="id2" value="<?= $row['id']; ?>" class="text-dark form-control col-md-5" readonly></td>
                                                    <td><?= $row['icon']; ?></td>
                                                    <td><?= $row['message']; ?></td>
                                                    <td><?= $user->getDataById($row['user_id'], 'username'); ?></td>
													<td>
																	<button type="submit" name="delte" class="btn btn-block btn-primary ">
																		<i class="fas fa-trash"></i>
																	</button>
																</td>
                                                </tr>
												</form>
                                            <?php }  ?>
                                        
                                        </tbody>
                                    </table>
                                </div>
							</div>
						</div>
					
				</div>
		</div>
		
	</div>
</div>