<?php
if(isset($_POST['login'])){
    $error = null;

    if(empty($_POST['email'])){
        $error = 'Bitte gebe eine E-Mail an';
    }

    if(empty($_POST['password'])){
        $error = 'Bitte gebe ein Passwort an';
    }

    if(!$user->verifyLogin($_POST['email'], $_POST['password'])){
        $error = 'Das angegebene Passwort stimmt nicht';
    }

    if($helper->getSetting('login') == 0){
        $error = 'Der Login ist derzeit deaktiviert';
    }

    if($user->getState($_POST['email']) == 'pending'){
        $error = 'Bitte bestätige nun deine E-Mail';
    }
	
	if($user->getState($_POST['email']) == 'hv'){
        $error = 'Ihr account wurde gesperrt';
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

        $sessionId = $user->generateSessionToken($_POST['email']);
        setcookie('session_token', $sessionId,time()+'864000','/');

        if($user->getDataBySession($sessionId,'login_notify') == 1) {
            include 'app/notifications/mail_templates/auth/new_login.php';
            sendMail($user->getDataBySession($sessionId, 'email'), $user->getDataBySession($sessionId, 'username'), $mailContent, $mailSubject);
			
        }

        $SQL = $db->prepare("UPDATE `users` SET `user_addr` = :user_addr WHERE `email` = :email");
        $SQL->execute(array(":user_addr" => $user->getIP(), ":email" => $_POST['email'] ));
		$SQL = $db->prepare("UPDATE `users` SET `support_pin` = :support_pin WHERE `email` = :email ");
		$SQL->execute(array(":support_pin" => $spin, ":email" => $_POST['email']));
        echo sendSuccess('Login erfolgreich. Du wirst gleich weitergeleitet');
        header('refresh:3;url='.$helper->url().'dashboard');

    } else {
        echo sendError($error);
    }
}