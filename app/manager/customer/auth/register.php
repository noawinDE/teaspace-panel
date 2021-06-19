<?php
if(isset($_POST['register'])){
    $error = null;

    $google_response = $site->validateCaptcha($_POST['g-recaptcha-response']);
    if(!($google_response['success'])){
        $error = 'Ungueltige Anfrage bitte versuche es erneut (Captcha)';
    }

    if(empty($_POST['username'])){
        $error = 'Bitte gebe einen Benutzernamen an';
    }

    if(empty($_POST['firstname'])){
        $error = 'Bitte gebe einen Vornamen an';
    }

    if(empty($_POST['lastname'])){
        $error = 'Bitte gebe einen Nachnamen an';
    }

    if(empty($_POST['email'])){
        $error = 'Bitte gebe eine E-Mail an';
    }

    if(empty($_POST['password'])){
        $error = 'Bitte gebe ein Passwort an';
    }

    if(empty($_POST['password_repeat'])){
        $error = 'Bitte wiederhole dein Passwort an';
    }

    if(filter_var($_POST['email'],FILTER_VALIDATE_EMAIL) == false){
        $error = 'Bitte gebe eine gültige E-Mail an';
    }

    if($_POST['password'] != $_POST['password_repeat']){
        $error = 'Die Passwörter stimmen nicht überein';
    }

    if($user->exists($_POST['email'])){
        $error = 'Ein Benutzer mit dieser E-Mail existiert bereits';
    }

    if($user->exists($_POST['username'])){
        $error = 'Ein Benutzer mit diesem Benutzernamen existiert bereits';
    }

    if($helper->getSetting('register') == 0){
        $error = 'Das Accounterstellen ist derzeit deaktiviert';
    }

    $verify_code = $helper->generateRandomString(16);
    include 'app/notifications/mail_templates/auth/confirm_account.php';
    $mail_state = sendMail($_POST['email'], $_POST['username'], $mailContent, $mailSubject);

    if($mail_state != true){
        $error = 'Die E-Mail konnte nicht versendet werden';
    }

    $e_mail = explode("@", $_POST['email']);
    if($user->emailBlacklist($e_mail[1])){
        $error = 'Diese E-Mail Ist Bei uns nicht erlaubt (AGB §3.C)';
    }

	function generateChar1($length = 4) {
    $characters = '0123456789';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
	}

	function generateChar2($length = 4) {
    $characters = '0123456789';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
	}

	function generateChar3($length = 4) {
    $characters = '0123456789';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
	}

	$spin = generateChar1().'-'.generateChar2(). '-'.generateChar2();


    if(empty($error)){

        $user_id = $user->create($helper->xssFix($_POST['username']), $helper->xssFix($_POST['firstname']), $helper->xssFix($_POST['lastname']), $helper->xssFix($_POST['email']), $_POST['password'],'pending','customer');

        $SQL = $db->prepare("UPDATE `users` SET `verify_code` = :verify_code WHERE `id` = :user_id");
        $SQL->execute(array(":verify_code" => $verify_code, ":user_id" => $user_id));
		$SQL = $db->prepare("UPDATE `users` SET `support_pin` = :support_pin WHERE `email` = :email");
$SQL->execute(array(":support_pin" => $spin, ":email" => $_POST['email']));

if(isset($_COOKIE['a'])){
            $affiliate_id = $_COOKIE['a'];
            $affiliated_id = $user_id;

            $SQL = $db->prepare("INSERT INTO `affiliates`(`affiliate_id`, `affiliated_id`) VALUES (:affiliate_id, :affiliated_id)");
            $SQL->execute(array(':affiliate_id' => $affiliate_id, ':affiliated_id' => $affiliated_id));
        }
        header('refresh:3;url='.$helper->url().'login');

        echo sendSuccess('Bitte bestätige nun deine Mail!');
		
    } else {
        echo sendError($error);
    }
	
	
}


