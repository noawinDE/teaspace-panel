<?php
$currPage = 'back_Teaspeak';
include 'app/controller/PageController.php';
include 'app/manager/customer/teaspeak/manage.php';
?>
<style>
.card img{
	width: 16px;
}







.tabs {
  max-width: 100%;
  margin: 0 auto;
  padding: 0 20px;
}
#tab-button {
  display: table;
  table-layout: fixed;
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none;
}
#tab-button li {
  display: table-cell;
  width: 20%;
}
#tab-button li a {
  display: block;
  padding: .5em;
  background: #eee;
  border: 1px solid #ddd;
  text-align: center;
  color: #000;
  text-decoration: none;
}
#tab-button li:not(:first-child) a {
  border-left: none;
}
#tab-button li a:hover,
#tab-button .is-active a {
  border-bottom-color: transparent;
  background: #fff;
}
.tab-contents {
  padding: .5em 2em 1em;
  
}



.tab-button-outer {
  display: none;
}
.tab-contents {
  margin-top: 20px;
}
@media screen and (min-width: 768px) {
  .tab-button-outer {
    position: relative;
    z-index: 2;
    display: block;
  }
  .tab-select-outer {
    display: none;
  }
  .tab-contents {
    position: relative;
    top: -1px;
    margin-top: 0;
  }
}



</style>
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
		<div class="row">
		
<div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">Übersicht</a></li>
      <li><a href="#tab02">Token Verwaltung</a></li>
      <!--li><a  href="#tab03">Backup</a></li-->
      <li><a href="#tab04">Viewer</a></li>
     
    </ul>
  </div>
  

  <div id="tab01" class="tab-contents">
   <div class="row">
		<div class="col-md-6">
            <div class="card">
            <div class="card-body">

                <table class="table">
                    <tbody>
                    <tr>
                        <td>Status</td>
                        <td><?= $status_msg; ?></td>
                    </tr>
                    <tr>
                        <td>Server IP</td>
                        <td><?= $serverInfos['teaspeak_ip']; ?>:<?= $serverInfos['teaspeak_port']; ?></td>
                    </tr>
                    <?php if($serverStatus == 'ONLINE'){ ?>
                        <tr>
                            <td>User Online</td>
                            <td><?= getClientsOnline($ts3_query, $serverStatus); ?> von <?= $serverInfos['slots']; ?> User</td>
                        </tr>
                        <tr>
                            <td>Onlinezeit</td>
                            <td><?= getOnlineTime($ts3_query); ?></td>
                        </tr>
                        <tr>
                            <td>Version</td>
                            <td><?= $version['version']; ?></td>
                        </tr>
                        <tr>
                            <td>Channel</td>
                            <td><?= getChannelCount($ts3_query); ?></td>
                        </tr>
                        <tr>
                            <td>Ping</td>
                            <td><?= round($connection_info['connection_ping'], 2); ?>ms</td>
                        </tr>
                        <tr>
                            <td>Paketverlust</td>
                            <td><?php if(round($connection_info['connection_packetloss_total'], 2) == '1'){ echo '0.00'; } else { echo round($connection_info['connection_packetloss_total'], 2); } ?>%</td>
                        </tr>
                    <?php } ?>
                    <tr>
                        <td>Preis</td>
                        <td><?= number_format($serverInfos['price'] * $serverInfos['slots'],2); ?>€ pro Monat</td>
                    </tr>
                    <tr>
                        <td>Laufzeit</td>
                        <td><?= $helper->formatDate($serverInfos['expire_at']); ?></td>
                    </tr>
                    </tbody>
                </table>

            </div>
            </div>
        </div>
		<div class="col-md-1"></div>
		<div class="col-md-4">
             <div class="card">
            <div class="card-body">

                <form method="POST" action="">
                    <form method="POST" action="">
                    <?php if($serverStatus == 'ONLINE'){ ?>
                         <center>
                            <button disabled class="btn   col-md-5  btn-success" data-toggle="tooltip" data-placement="top" title="Der teaspeak Server ist bereits gestartet">Starten</button>
							
                            <button  type="submit" name="sendStop" class="btn col-md-5 btn-danger"><span>Stoppen</span></button>
                           
                            <hr>
							<a href="teaclient://<?= $serverInfos['teaspeak_ip']; ?>/?port=<?= $serverInfos['teaspeak_port']; ?>" class="btn btn-block  btn-primary"><span><i class="fas fa-sign-in-alt"></i> Verbinden</span></a>
                        </center>
                    <?php } elseif($serverStatus == 'OFFLINE') { ?>
                        <center>
                            <button  type="submit" name="sendStart" class="btn   col-md-5  btn-success"><span> Starten</span></button>
                            <button disabled class="btn col-md-5 btn-danger" data-toggle="tooltip" data-placement="top" title="Der teaspeak Server ist bereits gestoppt">Stoppen</button>
                        </center>
                    <?php } ?>
                    <hr>
                    <center>
                        <div style="margin-top: 10px;"></div>
                        <a href="<?= $helper->url(); ?>teaspeak/renew/<?= $id; ?>" class="btn btn-warning"><span><i class="far fa-calendar-alt"></i> Produkt verlängern</span></a>
                        <a href="<?= $helper->url(); ?>teaspeak/reconfigure/<?= $id; ?>" class="btn btn-info"><span><i class="fas fa-exchange-alt"></i> Up/Downgrade</span></a>
                    </center>
                </form>

            </div>
            </div>
        </div>
        </div>
   </div>
  <div id="tab02" class="tab-contents">
    <div class="col-md-5">
            <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Token</th>
                            <th>Gruppe</th>
                            <th>Beschreibung</th>
                            <th>Aktionen</th>
                        </tr>
                        </thead>
                        <tbody id="tbody_tokens">

                        <?php
                        $tokens = listTokens($ts3_query, $serverStatus); if(isset($tokens) && !empty($tokens)){ foreach ($tokens as $token) { ?>
                            <tr>
                                <td style="max-width: 200px; word-wrap: break-word;"><?php echo $token['token']; ?></td>
                                <td><?php echo getGroupName($ts3_query, $token['token_id1'])['name']; ?></td>
                                <td><?php echo $token['token_description']; ?></td>
                                <?php if($serverStatus == 'OFFLINE'){ ?>
                                    <td>
                                        <button type="button" disabled="disabled" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button>
                                    </td>
                                <?php } else { ?>
                                    <td>
                                        <form method="post">
                                            <button type="submit" name="deleteToken" value="<?= $token['token']; ?>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Löschen</button>
                                        </form>
                                    </td>
                                <?php } ?>
                            </tr>
                        <?php }  } ?>

                        </tbody>
                    </table>
                </div>

                <br>
                <br>

                <form method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <select name="group" class="form-control">
                                <?php
                                if($serverStatus == 'OFFLINE') { echo '<option>Server Offline</option>'; } else {
                                    $groups = getServerGroups($ts3_query, $serverStatus);
                                    foreach ($groups as $group) {
                                        echo '<option value="' . $group->getId() . '">' . $group . '</option>';
                                    }
                                }
                                ?>
                            </select>
                            <br>
                        </div>
                        <?php if($serverStatus == 'OFFLINE'){ ?>
                            <div class="col-md-12">
                                <input type="text" disabled="disabled" name="description" placeholder="Beschreibung" class="form-control">
                                <br>
                            </div>
                            <div class="col-md-12">
                                <button type="button" class="btn btn-default" disabled="disabled">Token erstellen</button>
                                <br>
                            </div>
                        <?php } else { ?>
                            <div class="col-md-12">
                                <input type="text" name="description" placeholder="Beschreibung" class="form-control">
                                <br>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="createToken"> Token erstellen</button>
                                <br>
                            </div>
                        <?php } ?>
                    </div>
                </form>

            </div>
            </div>
        </div>
  </div>
  <div id="tab03" class="tab-contents">
    <h2>Tab 3</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quos aliquam consequuntur, esse provident impedit minima porro! Laudantium laboriosam culpa quis fugiat ea, architecto velit ab, deserunt rem quibusdam voluptatum.</p>
  </div>
  <div id="tab04" class="tab-contents">
     <div class="col-md-12">
            <div class="card">
            <div class="card-body ">

                <?= getViewer($ts3_query,$picUrl,$serverStatus); ?>

            </div>
            </div>
        </div>
  </div>
  
</div>



       

    </div>
</div>
<script >
$(function() {
  var $tabButtonItem = $('#tab-button li'),
      $tabSelect = $('#tab-select'),
      $tabContents = $('.tab-contents'),
      activeClass = 'is-active';

  $tabButtonItem.first().addClass(activeClass);
  $tabContents.not(':first').hide();

  $tabButtonItem.find('a').on('click', function(e) {
    var target = $(this).attr('href');

    $tabButtonItem.removeClass(activeClass);
    $(this).parent().addClass(activeClass);
    $tabSelect.val(target);
    $tabContents.hide();
    $(target).show();
    e.preventDefault();
  });

  $tabSelect.on('change', function() {
    var target = $(this).val(),
        targetSelectNum = $(this).prop('selectedIndex');

    $tabButtonItem.removeClass(activeClass);
    $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
    $tabContents.hide();
    $(target).show();
  });
});</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>