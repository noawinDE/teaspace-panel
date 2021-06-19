<?php
$currPage = 'auth_Passwort vergessen';
include 'app/controller/PageController.php';
include 'app/manager/customer/auth/forgot_password.php';
?>


<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<a  href="<?= $helper->url(); ?>">
					
					<img src="<?= $helper->url(); ?>assets/tea/logowhite.png" alt="IMG"></a>
				</div>
<?php if(isset($_GET['key']) && !empty($_GET['key'])){ $key = $_GET['key']; ?>
				<form class="login100-form validate-form" id="login" method="post">
					<span class="login100-form-title">
						Passwort Neusetzen
						
					</span>

					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" id="form-newpassword" type="password" name="new_password" placeholder="Dein Passwort">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" id="form-new_password_repeat" type="password" name="new_password_repeat" placeholder="Passwort wiederholen">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type="submit" value="Login" type="submit" name="login" class="login100-form-btn">
							Register
						</button>
					</div>
<div class="text-center p-t-136">
						<a class="txt2" href="<?= $helper->url(); ?>login">
							Login
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
					<?php } else { ?>
					<form class="login100-form validate-form" id="login" method="post">
					<span class="login100-form-title">
						Passwort Vergessen
						
					</span>
					<div class="wrap-input100 validate-input" >
						<input class="input100" id="form-email" type="text" name="user_info" placeholder="Benutzername / E-Mail">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					
					<div class="container-login100-form-btn">
						<button type="submit" value="Login" type="submit" name="requestReset" class="login100-form-btn">
							Register
						</button>
					</div>
<div class="text-center p-t-136">
						<a class="txt2" href="<?= $helper->url(); ?>login">
							Login
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
<?php } ?>

					
			</div>
		</div>
	</div>
	
 

