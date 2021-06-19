<?php
$currPage = 'front_Teaspeak';
include 'app/controller/PageController.php';
include 'app/manager/customer/teaspeak/order.php';
?>





<style>
	.slider {
  -webkit-appearance: none;
  width: 100%;
  height: 15px;
  border-radius: 50px;  
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 50%; 
  background: #4CAF50;
  cursor: pointer;
}

.slider::-moz-range-thumb {

  height: 25px;
  border-radius: 50%;
  background: #4CAF50;
  cursor: pointer;
}
	</style>




 <!--Cloud Slider-->
    <section class="section-spacing p-top80 bg_white">
        <section class="row pricing pricing2 p-bottom80">
            <div class="container">
                <div class="sectionTitle">
                    <h2>TeaSpeak</h2>
                    <h5>TeaSpeak* ist eine eigenständige Sprachkommunikationssoftware und hat nichts mit der Konkurenz Teamspeak zu tun!</h5>
                </div>
            </div>
        </section>
 
        <div class="container">
            <div class="row">
            	<!-- begain the Slider -->
                <div id="qsSlider">
                    <div class="col-sm-8">
                        <div id="QsControls">
                            <!--CPU Slider -->
                            
							 <form method="post" id="orderForm">
                            <h4 class="title">Slots</h4>
                            
							
                                        <input  id="slots" name="slots" type="range" min="10" max="1000" value="10" class="slider">
							
							

                            
                            <h4 class="title">Laufzeit</h4>
                            <select id="duration" name="duration" class="form-control">
                                            <option value="30" data-factor="1">30 Tage</option>
                                            <option value="60" data-factor="2">60 Tage</option>
                                            <option value="90" data-factor="3">90 Tage</option>
                                        </select>

                            
                        </div>
                    </div><!--//col-->

                    <div class="col-sm-4">
                        <div id="QsPrice">
                            <div class="prices">
                                

                               

                                <!--Total Pricing Text -->
                                <div id="pricetext" class="relative">

                                    

                                    <h5>Slots</h5>
                                    
                                    <span data-slots="" id="doller">0</span>
                                    <br>
                                    
									
									<h5>Preis</h5>
                                    <span class="text-muted"><i class="fa fa-euro-sign"></i></span>
                                    <span id="doller"  data-amount="" class="doller">0.00€</span>
                                    
                                    <span id="btext">/mo</span>
                                </div>

                               <br>
                               <br>
                               <br>
                            	 <?php if($user->sessionExists($_COOKIE['session_token'])){ ?>
                                            <button onclick="orderNow();" id="orderBtn" type="submit" name="order" class="btn btn-primary btn-xlg">Kostenpflichtig bestellen</button>

                                            <script>
                                                function orderNow() {
                                                    if(document.getElementById("agb").checked){
                                                        if(document.getElementById("wiederruf").checked){
                                                            document.getElementById("orderForm").submit();
                                                            const button = document.getElementById('orderBtn');
                                                            button.disabled = true;
                                                            button.innerHTML = 'Bestellung wird ausgeführt...';
                                                        }
                                                    }
                                                }
                                            </script>

                                        <?php } else { ?>
										
                                            <a href="<?= $helper->url(); ?>register" class="btn btn-primary btn-xlg">Account erstellen</a>
                                        <?php } ?>
                            	
								</form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //END the Slider -->
            </div>
         </div>
    </section>
















<script>

    $('#slots').on('input', function() {update();});
    $("select, textarea").change(function() { update(); } ).trigger("change");

    function update(){
		
		var slots = $('#slots').val();
		
		if(slots > 1000){
			$('#slots').val(1000);
		}
		
        var sum = $("#slots").val() * <?= $site->getProductPrice('TEASPEAK'); ?>;
        var price = Number(sum * $("#duration").find("option:selected").data("factor"))
            .toLocaleString("de-DE", {minimumFractionDigits: 2, maximumFractionDigits: 2});
        $('#price_post').val(price);
        $('#slots').val(slots);
        $("*[data-amount]").html(price );
        $("*[data-slots]").html(slots );
    }

    $(document).ready(function(){
        update();
    });
</script>