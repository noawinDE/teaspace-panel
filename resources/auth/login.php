<?php
$currPage = 'auth_Login';
include 'app/controller/PageController.php';
include 'app/manager/customer/auth/login.php';
?>




<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<a  href="<?= $helper->url(); ?>">
					
					<img src="<?= $helper->url(); ?>assets/tea/logowhite.png" alt="IMG"></a>
				</div>

				<form class="login100-form validate-form" id="login" method="post">
					<span class="login100-form-title">
						Member Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="form-email" name="email"  type="email" placeholder="Zb.: user@mail.com" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" type="password" id="form-password" name="password" placeholder="Dein Passwort">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<input id="input100" type="checkbox" name="login" checked>
                    
					<span class="txt1">
							Sitzung speichern
						</span>
					<div class="container-login100-form-btn">
						<button type="submit" value="Login" name="login" type="submit" class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Passwort 
						</span>
						<a class="txt2" href="<?= $helper->url(); ?>passwort_reset">
							vergessen?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="<?= $helper->url(); ?>register">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	



	
	
	
