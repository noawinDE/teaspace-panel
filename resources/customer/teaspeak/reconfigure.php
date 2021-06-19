<?php
$currPage = 'back_Teaspeak';
include 'app/controller/PageController.php';
include 'app/manager/customer/teaspeak/reconfigure.php';
?>
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
	   <div class="row mx-auto text-center">

            <div class="col-md-9">
                <div class="panel panel-darkblue">

                    <form method="post">

                        <label for="slots">Slots</label>
                        <input id="slots" name="slots" type="number" min="2" max="1000" value="<?= $serverInfos['slots']; ?>" class="form-control">

                        <br>

                        <button type="submit" class="btn btn-primary" name="reconfigure">Kostenpflichtig up/downgraden</button>

                    </form>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-darkblue">

                    Kostenübersicht
                    <h1 data-amount="">0.00€</h1>

                </div>
            </div>

        </div>
    </div>
</div>

<script>

    $('#slots').on('input', function() {update();});
    $("select, textarea").change(function() { update(); } ).trigger("change");

    function update(){
        var sum = ($("#slots").val() * <?= $site->getProductPrice('TEASPEAK'); ?>) - (<?= $serverInfos['slots']; ?> * <?= $site->getProductPrice('TEASPEAK'); ?>);

        var price = Number((sum * <?= $site->getDiffInDays($serverInfos['expire_at']); ?> / 30)).toFixed(2);
        $("*[data-amount]").html(price + " €");
    }

    $(document).ready(function(){
        update();
    });
</script>