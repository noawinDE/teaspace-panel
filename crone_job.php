<?php
include './vendor/autoload.php';
include 'app/controller/config.php';
include 'app/functions/autoload.php';
include 'app/notifications/sendMail.php';

if($_GET['key'] != '3j254hbh2354ljk4nj5345khj32b5'){
    die('no auth');
}

//Time now
$date = new DateTime(null, new DateTimeZone('Europe/Berlin'));
$dateTimeNow = $date->format('Y-m-d H:i:s');

//Time minus 3 days
$dateMinus = new DateTime(null, new DateTimeZone('Europe/Berlin'));
$dateMinus->modify('-3 day');
$dateTimeMinus3Days = $dateMinus->format('Y-m-d H:i:s');


/* ======================================================================================================================================== */
$teaspeakEmail = $db->prepare("SELECT * FROM `teaspeaks` WHERE `deleted_at` IS NULL");
$teaspeakEmail->execute();
if ($teaspeakEmail->rowCount() != 0) {
    while ($row = $teaspeakEmail->fetch(PDO::FETCH_ASSOC)) {

        $username = $user->getDataById($row['user_id'],'username');

        if($user->getDataById($row['user_id'],'product_notify') == 1) {
            $diffInDays = $site->getDiffInDays($row['expire_at']);
            if ($diffInDays != $row['days']) {

                $product_name = 'Teaspeak';
                if ($diffInDays == 10) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 5) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 1) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                $SQL = $db->prepare("UPDATE `teaspeaks` SET `days` = :days WHERE `id` = :id");
                $SQL->execute(array(":days" => $diffInDays, ":id" => $row['id']));
            }
        }

    }
}

$teaspeakDB = $db->prepare("SELECT * FROM `teaspeaks` WHERE `expire_at` < :dateTimeNow AND `state` = 'ACTIVE'");
$teaspeakDB->execute(array(":dateTimeNow" => $dateTimeNow));
if ($teaspeakDB->rowCount() != 0) {
    while ($row = $teaspeakDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `teaspeaks` SET `state`='SUSPENDED' WHERE `id` = :id");
        $SQL->execute(array(":id" => $row['id']));

        try {
            $tea->stopServer($row['node_id'], $row['teaspeak_port'], $row['sid']);
        } catch (Exception $e){

        }

        echo 'Suspended Teaspeak #'.$row['id'];
        die();
    }
}

$teaspeakSuspendedDB = $db->prepare("SELECT * FROM `teaspeaks` WHERE `expire_at` < :dateTimeMinusDays AND `state` = 'SUSPENDED'");
$teaspeakSuspendedDB->execute(array(":dateTimeMinusDays" => $dateTimeMinus3Days));
if ($teaspeakSuspendedDB->rowCount() != 0) {
    while ($row = $teaspeakSuspendedDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `teaspeaks` SET `state`='DELETED', `deleted_at` = :deleted_at WHERE `id` = :id");
        $SQL->execute(array(":deleted_at" => $dateTimeNow, ":id" => $row['id']));

        try {
            $tea->deleteServer($row['node_id'], $row['sid']);
        } catch (Exception $e){

        }

        echo 'Deleted Teaspeak #'.$row['id'];
        die();

    }
}
/* ======================================================================================================================================== */

/* ======================================================================================================================================== */
$webspaceEmail = $db->prepare("SELECT * FROM `webspace` WHERE `deleted_at` IS NULL");
$webspaceEmail->execute();
if ($webspaceEmail->rowCount() != 0) {
    while ($row = $webspaceEmail->fetch(PDO::FETCH_ASSOC)) {

        $username = $user->getDataById($row['user_id'],'username');

        if($user->getDataById($row['user_id'],'product_notify') == 1) {
            $diffInDays = $site->getDiffInDays($row['expire_at']);
            if ($diffInDays != $row['days']) {

                $product_name = 'Webspace';
                if ($diffInDays == 10) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 5) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 1) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                $SQL = $db->prepare("UPDATE `webspace` SET `days` = :days WHERE `id` = :id");
                $SQL->execute(array(":days" => $diffInDays, ":id" => $row['id']));
            }
        }

    }
}

$webspaceDB = $db->prepare("SELECT * FROM `webspace` WHERE `expire_at` < :dateTimeNow AND `state` = 'active'");
$webspaceDB->execute(array(":dateTimeNow" => $dateTimeNow));
if ($webspaceDB->rowCount() != 0) {
    while ($row = $webspaceDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `webspace` SET `state`='suspended' WHERE `id` = :id");
        $SQL->execute(array(":id" => $row['id']));

        echo 'Suspended Webspace #'.$row['id'];
        die();
    }
}

$webspaceSuspendedDB = $db->prepare("SELECT * FROM `webspace` WHERE `expire_at` < :dateTimeMinusDays AND `state` = 'suspended'");
$webspaceSuspendedDB->execute(array(":dateTimeMinusDays" => $dateTimeMinus3Days));
if ($webspaceSuspendedDB->rowCount() != 0) {
    while ($row = $webspaceSuspendedDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `webspace` SET `state`='deleted', `deleted_at` = :deleted_at WHERE `id` = :id");
        $SQL->execute(array(":deleted_at" => $dateTimeNow, ":id" => $row['id']));

        try {
            $plesk->delete($row['webspace_id']);
        } catch (Exception $e){

        }

        echo 'Deleted Webspace #'.$row['id'];
        die();
    }
}
/* ======================================================================================================================================== */

/* ======================================================================================================================================== */
$storeEmail = $db->prepare("SELECT * FROM `store_products` WHERE `deleted_at` IS NULL");
$storeEmail->execute();
if ($storeEmail->rowCount() != 0) {
    while ($row = $storeEmail->fetch(PDO::FETCH_ASSOC)) {

        $username = $user->getDataById($row['user_id'],'username');

        if($user->getDataById($row['user_id'],'product_notify') == 1) {
            $diffInDays = $site->getDiffInDays($row['expire_at']);
            if ($diffInDays != $row['days']) {

                $product_name = 'Store Produkt';
                if ($diffInDays == 10) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 5) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }
				
				if ($diffInDays == 1) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                
                $SQL = $db->prepare("UPDATE `store_products` SET `days` = :days WHERE `id` = :id");
                $SQL->execute(array(":days" => $diffInDays, ":id" => $row['id']));
            }
        }

    }
}

$serviceDB = $db->prepare("SELECT * FROM `store_products` WHERE `expire_at` < :dateTimeNow AND `state` = 'active'");
$serviceDB->execute(array(":dateTimeNow" => $dateTimeNow));
if ($serviceDB->rowCount() != 0) {
    while ($row = $serviceDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `store_products` SET `state`='suspended' WHERE `id` = :id");
        $SQL->execute(array(":id" => $row['id']));

        echo 'Suspended Service #'.$row['id'];
        die();
    }
}
/* ======================================================================================================================================== */

/* ======================================================================================================================================== */
$botEmail = $db->prepare("SELECT * FROM `bots` WHERE `deleted_at` IS NULL");
$botEmail->execute();
if ($botEmail->rowCount() != 0) {
    while ($row = $botEmail->fetch(PDO::FETCH_ASSOC)) {

        $username = $user->getDataById($row['user_id'],'username');

        if($user->getDataById($row['user_id'],'product_notify') == 1) {
            $diffInDays = $site->getDiffInDays($row['expire_at']);
            if ($diffInDays != $row['days']) {

                $product_name = 'TS3AudioBot';
                if ($diffInDays == 10) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 5) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                if ($diffInDays == 1) {
                    include 'app/notifications/mail_templates/soon_suspend.php';
                    $mail_state = sendMail($user->getDataById($row['user_id'], 'email'), $user->getDataById($row['user_id'], 'username'), $mailContent, $mailSubject, $emailAltBody);
                }

                $SQL = $db->prepare("UPDATE `bots` SET `days` = :days WHERE `id` = :id");
                $SQL->execute(array(":days" => $diffInDays, ":id" => $row['id']));
            }
        }

    }
}

$botDB = $db->prepare("SELECT * FROM `bots` WHERE `expire_at` < :dateTimeNow AND `state` = 'active'");
$botDB->execute(array(":dateTimeNow" => $dateTimeNow));
if ($botDB->rowCount() != 0) {
    while ($row = $botDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `bots` SET `state`='suspended' WHERE `id` = :id");
        $SQL->execute(array(":id" => $row['id']));

        if(!empty($row['bot_id'])){
            $bot->stop($row, $row['bot_id'], $row['node_id']);
        }

        echo 'Suspended Bot #'.$row['id'];
        die();
    }
}

$botSuspendedDB = $db->prepare("SELECT * FROM `bots` WHERE `expire_at` < :dateTimeMinusDays AND `state` = 'suspended'");
$botSuspendedDB->execute(array(":dateTimeMinusDays" => $dateTimeMinus3Days));
if ($botSuspendedDB->rowCount() != 0) {
    while ($row = $botSuspendedDB->fetch(PDO::FETCH_ASSOC)) {

        $SQL = $db->prepare("UPDATE `bots` SET `state`='deleted', `deleted_at` = :deleted_at WHERE `id` = :id");
        $SQL->execute(array(":deleted_at" => $dateTimeNow, ":id" => $row['id']));

        if(!empty($row['bot_id'])){
            $bot->stop($row, $row['bot_id'], $row['node_id']);
            sleep(2);
        }

        $bot->delete($row, $row['node_id']);

        echo 'Deleted Bot #'.$row['id'];
        die();
    }
}
/* ======================================================================================================================================== */


die('<br>done');