<?php
$currPage = 'back_Ticket Support';
include 'app/controller/PageController.php';

$ticket_id = $helper->protect($_GET['id']);
$SQL = $db->prepare("SELECT * FROM `tickets` WHERE `id` = :ticket_id");
$SQL->execute(array(":ticket_id" => $ticket_id));
$ticketInfos = $SQL -> fetch(PDO::FETCH_ASSOC);

if($userid != $ticketInfos['user_id']){
    die(header('Location: '.$helper->url().'tickets'));
}


$writer_id = $userid;

if(isset($_POST['answerTicket'])){
    if (isset($_POST['message']) && !empty($_POST['message'])) {

        $SQL = $db->prepare("INSERT INTO `ticket_message`(`ticket_id`, `writer_id`, `message`) VALUES (:ticket_id,:writer_id,:message)");
        $SQL->execute(array(":ticket_id" => $ticket_id, ":writer_id" => $writer_id, ":message" => $_POST['message']));

        $SQL = $db->prepare("UPDATE `tickets` SET `last_msg` = 'CUSTOMER' WHERE `id` = :id");
        $SQL->execute(array(":id" => $ticket_id));
header('refresh:3;url='.$url.'ticket/'.$ticket_id);
        echo sendSuccess('Antwort übermittelt');
    }
}

if(isset($_POST['closeTicket'])){
    $SQL = $db->prepare("UPDATE `tickets` SET `state` = 'CLOSED' WHERE `id` = :id");
    $SQL->execute(array(":id" => $ticket_id));
header('refresh:3;url='.$url.'ticket/'.$ticket_id);
    echo sendSuccess('Ticket geschlossen');
}

?>
<style>
    .chatttt {
      width: 100%;
      height: 500px;
      overflow-y: scroll;
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
          <div class="col-sm-6">
		  <ol class="breadcrumb float-sm-right">
            <?php if($ticketInfos['state'] == 'OPEN'){ ?>
            <form method="post">
                <button type="submit" name="closeTicket" class="btn btn-danger">Ticket schließen</button>
            </form>
            
        <?php } ?>
		
		</ol>
          </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
			<div class="row">
     
		
		<div class="col-md-4">
                    <div class="card card-body">
                        <table class="table">
                    <tbody>
                    <tr>
                        <td>Ticket-ID: </td>
                        <td>#<?= $ticket_id;?></td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td> <?= $ticketInfos['state']; ?></td>
                    </tr>
					<tr>
                        <td>Letzte Antwort:</td>
                        <td> <?= $ticketInfos['last_msg']; ?></td>
                    </tr>
                    <tr>
                        <td>Erstellt am: </td>
                        <td><?= $ticketInfos['created_at'];?></td>
                    </tr>
					<tr>
                        <td>Kategorie: </td>
                        <td><?= $ticketInfos['categorie'];?></td>
                    </tr>
					<tr>
                        <td>Priorität: </td>
                        <td><?= $ticketInfos['priority'];?></td>
                    </tr>
					<tr>
                        <td>Produkt: </td>
                        <td><?= $ticketInfos['produkt'];?></td>
                    </tr>
                        
                        
                    </tbody>
                </table>
                    </div>
					
					 
        </div>
		

		
		
			<div class="col-md-8 " >
			  <div id="sohbet" class="card card-body position-relative messages chatttt" style=" ">
				   <?php
        $SQL = $db -> prepare("SELECT * FROM `ticket_message` WHERE `ticket_id` = :ticket_id");
		
        $SQL->execute(array(":ticket_id" => $ticket_id));
        if ($SQL->rowCount() != 0) {
            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){
                $writer_token = $user->getDataById($row['writer_id'],'session_token');
                if($user->isInTeam($writer_token) == true){ ?>
                            <div class="balon1 p-2 m-0 position-relative" data-is="<?= $user->getDataById($row['writer_id'], 'username'); ?> - <?= $row['created_at']; ?>">
				
					<a class="float-right bg-info"> <?= $helper->nl2br2($row['message']); ?> </a>
				  
				</div>
                        <?php } else { ?>
                           <div class="balon2 p-2 m-0 position-relative" data-is="<?= $user->getDataById($row['writer_id'], 'username'); ?> - <?= $row['created_at']; ?>">
				
					<a class="float-left bg-success sohbet2"><?= $helper->nl2br2($row['message']); ?> </a>
				  
				</div>
                        <?php } }  } ?>

      <!-- Grid column -->
</div>

    
    <!-- Grid row -->
        <div class="col-md-12"> <br> </div>
                <?php if($ticketInfos['state'] == 'OPEN'){ ?>
                    <div class="col-md-12">
                        <form method="post">
                            <textarea rows="10" name="message" class="form-control"></textarea>
                            <br>
                            <button type="submit" name="answerTicket" class="btn btn-secondary">Antworten</button>
                        </form>
                    </div>
                <?php } else { ?>
				<div class="col-md-12">
                    <center>Dieses Ticket ist geschlossen.</center>
					</div>
                <?php } ?>
    </div>
</div>



<script>/*
   ;(function () {

  var container = document.querySelector('.messages')

  container.maxScrollTop = container.scrollHeight - container.offsetHeight

  document.querySelector('.btn').addEventListener('click', function () {

    if (container.maxScrollTop - container.scrollTop <= container.offsetHeight) {
      // We can scroll to the bottom.
      // Setting scrollTop to a high number will bring us to the bottom.
      // setting its value to scrollHeight seems a good idea, because
      // scrollHeight is always higher than scrollTop.
      // However we could use any value (e.g. something like 99999 should be ok) 
      container.scrollTop = container.scrollHeight
      console.log("I just scrolled to the bottom!")

    } else {
      console.log("I won't scroll: you're way too far from the bottom!\n" +
      "You should maybe alert the user that he received a new message.\n" +
      "If he wants to scroll at this point, he must do it manually.")
    }

  }, false)


  // Logging stuff in the console. You can call this for debugging purposes.
  function debug() {
    // scrollTop gets or sets the number of pixels
    // that the content of an element is scrolled upward.
    console.log('scrollTop', container.scrollTop)

    // scrollHeight is the height of the scroll view of an element 
    // (in other words, the whole content's height). 
    // It includes the element padding but not its margin.
    console.log('scrollHeight', container.scrollHeight)

    // offsetHeight is the height of an element relative to 
    // the element's offsetParent. 
    // In other words, it's the viewport, and it's constant.
    // clientHeight is the same, but you shouldn't use it, 
    // because it's not part of any standard.
    console.log('offsetHeight', container.offsetHeight)

    // maxScrollTop is the maximum value that scrollTop can assume.
    // We are defining it as a constant, but you can as well put it in a function
    // in case the viewport's height (offsetHeight) is variable.
    console.log('maxScrollTop', container.maxScrollTop)

    // offsetParent returns a reference to the object which is the closest 
    // (nearest in the containment hierarchy) positioned containing element.
    // I actually don't need this for the demo, 
    // but it may be useful in some cases.
    // console.log(container.offsetParent)
  }

})();
	*/
	$(".messages").animate({ scrollTop: 9999999999 }, "slow");
</script>