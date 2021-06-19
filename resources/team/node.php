<?php
$currPage = 'back_Nodeverwaltung_team_admin';
include 'app/controller/PageController.php';

$id = $helper->protect($_GET['id']);

if(isset($_POST['updateNode'])){
    $SQL = $db->prepare("UPDATE `bot_nodes` SET `name`=? ,`node_ip`=?,`unique_id`=?,`token`=?,`port`=?,`state`=?,`limit`=? WHERE `id` = ?");
    $SQL->execute(array($_POST['name'], $_POST['node_ip'], $_POST['unique_id'], $_POST['token'], $_POST['port'], $_POST['state'], $_POST['limit'], $id));

    echo sendSuccess('Die Node wurde bearbeitet');
}

$SQL = $db->prepare("SELECT * FROM `bot_nodes` WHERE `id` = :id");
$SQL->execute(array(":id" => $id));
$node_data = $SQL->fetch(PDO::FETCH_ASSOC);

?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">

                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $helper->url(); ?>">Home</a></li>
                        <li class="breadcrumb-item active"><?= $currPageName; ?></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">Bot Nodes</div>
                        <div class="card-body">
                            <form method="post">

                                <label>Status:</label>
                                <select class="form-control" name="state">
                                    <option <?php if($node_data['state'] == 'active'){ echo 'selected'; } ?> value="active">Aktiv</option>
                                    <option <?php if($node_data['state'] == 'disabled'){ echo 'selected'; } ?> value="disabled">Deaktiviert</option>
                                </select>
                                <br>

                                <label>Name:</label>
                                <input class="form-control" name="name" value="<?= $node_data['name']; ?>" required="required">
                                <br>

                                <label>Node IP:</label>
                                <input class="form-control" name="node_ip" value="<?= $node_data['node_ip']; ?>" required="required">
                                <br>

                                <label>Teamspeak Unique ID:</label>
                                <input class="form-control" name="unique_id" value="<?= $node_data['unique_id']; ?>" required="required">
                                <br>

                                <label>API Token:</label>
                                <input class="form-control" name="token" value="<?= $node_data['token']; ?>" required="required">
                                <br>

                                <label>API Port:</label>
                                <input class="form-control" name="port" value="<?= $node_data['port']; ?>" required="required">
                                <br>

                                <label>Bot Limit:</label>
                                <input class="form-control" name="limit" value="<?= $node_data['limit']; ?>" required="required">
                                <br>

                                <button type="submit" name="updateNode" class="btn btn-primary btn btn-block">Speichern</button>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>