<?php
$currPage = 'auth_Register';
include 'app/controller/PageController.php';
include 'app/manager/customer/auth/register.php';
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
						Member Register
						
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" type="username" name="username" placeholder="Username" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="firstname" placeholder="Vorname" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="lastname" placeholder="Nachname" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="form-email" name="email"  type="email" placeholder="E-Mail" >
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
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" type="password" id="form-password" name="password_repeat" placeholder="Passwort wiederholen">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type="submit" value="Login" type="submit" name="register" class="login100-form-btn">
							Register
						</button>
					</div>

					<div class="g-recaptcha" data-sitekey="<?= $helper->grecaptchaSiteKey(); ?>"></div>

					<div class="text-center p-t-136">
						<a class="txt2" href="<?= $helper->url(); ?>login">
							Login
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
 

