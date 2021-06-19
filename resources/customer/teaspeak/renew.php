<?php
$currPage = 'back_Teaspeak';
include 'app/controller/PageController.php';
include 'app/manager/customer/teaspeak/renew.php';
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

            <div class="col-md-6">
                <div class="text-center">

                    <form method="post">

                        <label class="text-white" for="duration">Laufzeit</label>
                        <select id="duration" name="duration" class="form-control">
                            <option value="30" data-factor="1">30 Tage</option>
                            <option value="60" data-factor="2">60 Tage</option>
                            <option value="90" data-factor="3">90 Tage</option>
                        </select>

                        <br>

                        <button type="submit" class="btn btn-primary" name="renew">Kostenpflichtig verlängern</button>

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
        var sum = "<?= $serverInfos['slots']; ?>" * "<?= $serverInfos['price']; ?>";

        var price = Number(sum * $("#duration").find("option:selected").data("factor"))
            .toLocaleString("de-DE", {minimumFractionDigits: 2, maximumFractionDigits: 2});
        $("*[data-amount]").html(price + " €");
    }

    $(document).ready(function(){
        update();
    });
</script>