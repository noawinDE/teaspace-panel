<?php
$currPage = 'team_Email Blackliste_admin';
include 'app/controller/PageController.php';



          

       if(isset($_POST['gen'])){
                    $errors = null;

                   

                    
					if(empty($_POST['mail'])){
                        $errors = 'Bitte gebe eine Nachricht an';
                    }
					$SQL = $db->prepare("SELECT * FROM `mail_blacklist` WHERE `mail` = :mail");
					$SQL->execute(array(":mail" => $_POST['mail']));
					if ($SQL->rowCount() != 0) {
					$errors = 'Email Wurde bereits Gespeert';
					}

                    if(empty($errors)){

                        $SQL = $db -> prepare("INSERT INTO `mail_blacklist`(`mail`) VALUES (:mail)");
                        $SQL->execute(array(":mail" => $_POST['mail']));
                        header('refresh:3;url='.$url.'team/emailblack');
                        echo sendSuccess('Email Wurde Gespeert');
                    } else {
                        echo sendError($errors);
                    }
                }
        
			   
			   

?>
<style>
    #listsde {
      
      overflow-y: scroll;
    }
  </style>


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
				<div class="col-md-5">
					<div class="card card-body">
						
							
								
									
											<h4>Email Sperren</h4>
<br>
											<form method="post">
											<label>Mail:</label>
											<input name="mail"  placeholder="zb.: tempmail.de" class="form-control">
											<br>
											
											<button type="submit" name="gen" class="btn btn-block btn-primary ">Erstellen</button>
											<br>
											</form>
										
								
							
						
					</div>
				</div>
					 
            <div class="col-md-7">
                <div class="card card-body">

                    <h4 class="text-center">Blackliste</h4>

                    <table id="listsde" id="basic-datatable" class="table dt-responsive nowrap">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Mail</th>
                            
                            <th>Datum</th>
                            
                        </tr>
                        </thead>
                        
						<tbody >
                        <?php
                        $SQL = $db->prepare("SELECT * FROM `mail_blacklist`");
                        $SQL->execute();
                        if ($SQL->rowCount() != 0) {
                            while ($row = $SQL -> fetch(PDO::FETCH_ASSOC)){ ?>
                                <tr>
                                     
									<td ><?= $row['id']; ?></td>
                                    <td><?= $row['mail']; ?></td>
                                    
                                    <td><?= $helper->formatDate($row['created_at']); ?></td>
                                    
								</tr>
                            <?php } } ?>
                        </tbody>
						
                    </table>

                </div>
            </div>
					
				
		</div>
	</div>
</div>


<script>

;(function () {

  var container = document.querySelector('#listsde')

  container.maxScrollTop = container.scrollHeight - container.offsetHeight

 

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

</script>