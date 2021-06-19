<?php
$currPage = 'back_Streams_team_admin';
include 'app/controller/PageController.php';


if(isset($_POST['delte'])){
                    $errors = null;

                   

                    

                    if(empty($errors)){

                        $SQL = $db->prepare("DELETE FROM `stream_links` WHERE `id` = :id");
                        $SQL->execute(array(":id" => $_POST['id2']));
                        header('refresh:3;url='.$url.'team/streams');
                        echo sendSuccess('Stream wurde gelöscht');
                    } else {
                        echo sendError($errors);
                    }
                }

               

			   if(isset($_POST['createNews'])){
                    $errors = null;

                    if(empty($_POST['name'])){
                        $errors = 'Bitte gebe ein Icon an';
                    }

                    if(empty($_POST['link'])){
                        $errors = 'Bitte gebe eine Nachricht an';
                    }

                    if(empty($errors)){

                        $SQL = $db -> prepare("INSERT INTO `stream_links`(`name`, `url`) VALUES (:name, :url)");
                        $SQL->execute(array( ":name" => $_POST['name'], ":url" => $_POST['link']));
                        header('refresh:3;url='.$url.'team/streams');
                        echo sendSuccess('Stream wurde Hinzugefügt');
                    } else {
                        echo sendError($errors);
                    }
                }


?>


<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-white"><?= $currPageName; ?> 
                </div>
                
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid row">

           
            <div class="col-md-4">
                <div class="card shadow mb-4">
                    <div class="card-body">

                        <form method="post" id="form">
                            <label>Name:</label>
                            <input class="form-control" name="name"  >
                            <br>
                            <label>Url:</label>
							<input class="form-control" name="link">
                            <br>
                            <button class="btn btn-primary" name="createNews" type="submit">Senden</button>
                        </form>

                    </div>
                </div>
            </div>


           
                    <div class="col-md-8">
                        <div class="card shadow ">
                            <div class="card-body">

                               
                                <div class="table-responsive">
                                    <table class="table   text-white table-bordered" id="dataTableDE" width="100%" cellspacing="0">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Url</th>
                                            
                                            <th></th>
                                            
                                        </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <?php
                                        $SQL = $db->prepare("SELECT * FROM `stream_links` WHERE `user_id` IS NULL ORDER BY `name` ;");
                                        $SQL->execute();
                                        
                                            while ($row = $SQL->fetch(PDO::FETCH_ASSOC)) { ?>
                                                <tr>
												<form method="post">
												<td><input name="id2" value="<?= $row['id']; ?>" class="text-dark form-control col-md-5" readonly></td>
                                                    <td><?= $row['name']; ?></td>
                                                    <td><?= $row['url']; ?></td>
                                                    
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