<?php

$currPage = 'front_Affiliate';
include 'app/controller/PageController.php';

$id = $_GET['id'];
$helper->setCookie('a', $id);

$affiliate->click($id, $user->getIP());

header('Location: '.$helper->url());
die();

?>