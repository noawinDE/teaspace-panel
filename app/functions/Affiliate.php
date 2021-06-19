<?php

$affiliate = new Affiliate();
class Affiliate extends Controller
{

    public function click($affiliate_id, $user_addr)
    {
        $SQL = self::db()->prepare('SELECT * FROM `affiliate_clicks` WHERE `affiliate_id` = :affiliate_id AND `user_addr` = :user_addr');
        $SQL->execute(array(":affiliate_id" => $affiliate_id, ":user_addr" => $user_addr));
        if($SQL->rowCount() == 0){
            $insert = self::db()->prepare('INSERT INTO `affiliate_clicks`(`affiliate_id`, `user_addr`) VALUES (?, ?)');
            $insert->execute(array($affiliate_id, $user_addr));
        }
    }

    public function countClicks($affiliate_id)
    {
        $SQL = self::db()->prepare('SELECT * FROM `affiliate_clicks` WHERE `affiliate_id` = :affiliate_id');
        $SQL->execute(array(":affiliate_id" => $affiliate_id));
        return $SQL->rowCount();
    }

    public function countRegisters($affiliate_id)
    {
        $SQL = self::db()->prepare('SELECT * FROM `affiliates` WHERE `affiliate_id` = :affiliate_id');
        $SQL->execute(array(":affiliate_id" => $affiliate_id));
        return $SQL->rowCount();
    }

    public function countPayouts($affiliate_id)
    {
        $SQL = self::db()->prepare('SELECT * FROM `affiliates` WHERE `affiliate_id` = :affiliate_id AND `state` = :state');
        $SQL->execute(array(":affiliate_id" => $affiliate_id, ":state" => 'done'));
        return $SQL->rowCount();
    }

}