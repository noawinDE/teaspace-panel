<?php

$id = $helper->protect($_GET['id']);

$SQLGetServerInfos = $db->prepare("SELECT * FROM `teaspeaks` WHERE `id` = :id");
$SQLGetServerInfos -> execute(array(":id" => $id));
$serverInfos = $SQLGetServerInfos -> fetch(PDO::FETCH_ASSOC);

if(!($serverInfos['deleted_at'] == NULL)){
    header('Location: '.$helper->url().'teaspeak/order');
}

#include 'teaadmin.class.php';
include 'ts3admin.class.php';
include 'ts3_functions.php';

if($serverStatus == 'ONLINE'){
    $status_msg = '<div class="badge badge-pill badge-success">Online</div>';
} else {
    $status_msg = '<div class="badge badge-pill badge-danger">Offline</div>';
}

if($serverInfos['state'] == 'SUSPENDED'){
    $suspended = true;
} else {
    $suspended = false;
}

if($userid != $serverInfos['user_id']){
    die(header('Location: '.$helper->url().'dashboard'));
}

if($serverStatus == 'ONLINE'){
    $connection_info = getInfos($ts3_query);
    $version = getVersion($ts3_query);
}

if(isset($_POST['sendStop'])){
    $tea->stopServer($serverInfos['node_id'],$serverInfos['teaspeak_port'],$serverInfos['sid']);
    $serverStatus = 'OFFLINE';

    $_SESSION['success_msg'] = 'Dein Server wurde gestoppt';
    header('Location: '.$helper->url().'teaspeak/manage/'.$id);
}


if(isset($_POST['sendStart'])){
    if($suspended){
        echo sendError('Bitte verlängere deinen teaspeak');
    } else {
        $tea->startServer($serverInfos['node_id'],$serverInfos['teaspeak_port'],$serverInfos['sid']);
        //$serverStatus = 'ONLINE';

        $_SESSION['success_msg'] = 'Dein Server wurde gestartet';
        header('Location: '.$helper->url().'teaspeak/manage/'.$id);
    }
}

if(isset($_POST['createToken'])){
    if(isset($_POST['group']) && !empty($_POST['group'])){
        createToken($ts3_query,$_POST['group'],$_POST['description'], $serverStatus);
        echo sendSuccess('Erfolgreich','Der Token wurde erfolgreich angelegt');
    }
}

if(isset($_POST['deleteToken']) && !empty($_POST['deleteToken'])){
    deleteToken($ts3_query, $_POST['deleteToken'], $serverStatus);
    echo sendSuccess('Erfolgreich','Der Token wurde gelöscht');
}