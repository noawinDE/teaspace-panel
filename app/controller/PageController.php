<?php

if($user->sessionExists($_COOKIE['session_token'])){
    /*
     * set static values
     */

    $username = $user->getDataBySession($_COOKIE['session_token'],'username');
    $rang = $user->getDataBySession($_COOKIE['session_token'],'role');
    $mail = $user->getDataBySession($_COOKIE['session_token'],'email');
    $amount = $user->getDataBySession($_COOKIE['session_token'],'amount');
    $street = $user->getDataBySession($_COOKIE['session_token'],'street');
    $city = $user->getDataBySession($_COOKIE['session_token'],'city');
    $postcode = $user->getDataBySession($_COOKIE['session_token'],'postcode');
    $userid = $user->getDataBySession($_COOKIE['session_token'],'id');
    $affiliate_id = $user->getDataBySession($_COOKIE['session_token'],'affiliate_id');
	$suppin = $user->getDataBySession($_COOKIE['session_token'],'support_pin');
	

    $user_addr = $user->getDataBySession($_COOKIE['session_token'],'user_addr');
    if(is_null($user_addr)){
        $SQL = $db->prepare("UPDATE `users` SET `user_addr` = :user_addr WHERE `id` = :id");
        $SQL->execute(array(":user_addr" => $user->getIP(), ":id" => $userid));
        $user_addr = $user->getIP();
    }
    if($user->getIP() != $user_addr){
        if(isset($_COOKIE['old_session_token'])){
            if($user->isInTeam($_COOKIE['old_session_token'])){

            } else {
                $_SESSION['info_msg'] = 'Something went wrong';
                setcookie('session_token', null, time(), '/'); header('Location: '.$helper->url().'login');
                die();
            }
        } else {
            $_SESSION['info_msg'] = 'Something went wrong';
            setcookie('session_token', null, time(), '/'); header('Location: '.$helper->url().'login');
            die();
        }
    }

}

if (strpos($currPage,'back_') !== false || strpos($currPage,'team_') !== false) {

    /*
     * check if user is logged in
     */
    if(!($user->loggedIn($_COOKIE['session_token']))){
        die(header('Location: '.$helper->url().'login'));
    }

    /*
     * check if user is on team page and is in team
     */
    if(strpos($currPage,'team_') !== false) {
        if(!$user->isInTeam($_COOKIE['session_token'])){
            die(header('Location: '.$url.'dashboard'));
        }
    }

    /*
     * check if user is on admin page and is admin
     */
    if(strpos($currPage,'_admin') !== false) {
        if(!$user->isAdmin($_COOKIE['session_token'])){
            die(header('Location: '.$url.'team/tickets'));
        }
    }

}

$currPageName = explode('_',$currPage)[1];

if(strpos($currPage,'system_') !== false) {

} else {
    if (strpos($currPage, 'back_') !== false || strpos($currPage, 'team_') !== false) {
        include 'resources/additional/BACK/head.php';
        include 'resources/additional/BACK/sidebar.php';
        include 'resources/additional/BACK/header.php';
    } elseif (strpos($currPage, 'auth_') !== false) {
        include 'resources/additional/AUTH/head.php';
    } else {
        include 'resources/additional/head.php';
        include 'resources/additional/header.php';
    }
}

/*
 * manage cookies
 */
include 'app/notifications/sendAlert.php';
if(isset($_SESSION['error_msg']) && !empty($_SESSION['error_msg'])){
    echo sendError($_SESSION['error_msg']);
    $_SESSION['error_msg'] = '';
    unset($_SESSION['error_msg']);
}

if(isset($_SESSION['info_msg']) && !empty($_SESSION['info_msg'])){
    echo sendInfo($_SESSION['info_msg']);
    $_SESSION['info_msg'] = '';
    unset($_SESSION['info_msg']);
}

if(isset($_SESSION['success_msg']) && !empty($_SESSION['success_msg'])){
    echo sendSuccess($_SESSION['success_msg']);
    $_SESSION['success_msg'] = '';
    unset($_SESSION['success_msg']);
}
