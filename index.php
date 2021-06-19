<?php

ob_start();
session_start();

$date = new DateTime(null, new DateTimeZone('Europe/Berlin'));
$datetime = $date->format('Y-m-d H:i:s');

/*
 * composer
 */
include_once './vendor/autoload.php';

/*
 * config
 */
include 'app/controller/config.php';
include_once 'app/functions/autoload.php';

include_once 'app/notifications/sendMail.php';

/*
 * page manager
 */
$resources = 'resources/';
$sites = $resources.'sites/';
$auth = $resources.'auth/';
$customer = $resources.'customer/';
$team = $resources.'team/';

$page = $helper->protect($_GET['page']);

if(isset($_GET['page'])) {
    switch ($page) {

        default: include($sites."404.php");  break;

        //auth
        case "auth_login": include($auth."login.php");  break;
        case "auth_register": include($auth."register.php"); break;
        case "auth_logout": setcookie('session_token', null, time(),'/'); header('Location: '.$helper->url().'login'); break;
        case "auth_activate": include($auth."activate.php"); break;
        case "auth_forgot_password": include($auth."forgot_password.php"); break;

        //index
        case "main_page": include($sites."main_page.php");  break;
        case "dashboard": include($customer."dashboard.php");  break;

        //webspace
        case "webspace_order": include($customer."webspace/order.php");  break;
        case "webspace": include($customer."webspace/index.php");  break;
        case "webspace_manage": include($customer."webspace/manage.php");  break;
        case "webspace_renew": include($customer."webspace/renew.php");  break;

        //teamspeak
        case "teamspeak_order": include($customer."teamspeak/order.php");  break;
        case "teamspeak": include($customer."teamspeak/index.php");  break;
        case "teamspeak_manage": include($customer."teamspeak/manage.php");  break;
        case "teamspeak_renew": include($customer."teamspeak/renew.php");  break;
        case "teamspeak_reconfigure": include($customer."teamspeak/reconfigure.php");  break;

        //teaspeak
        case "teaspeak_order": include($customer."teaspeak/order.php");  break;
        case "teaspeak": include($customer."teaspeak/index.php");  break;
        case "teaspeak_manage": include($customer."teaspeak/manage.php");  break;
        case "teaspeak_renew": include($customer."teaspeak/renew.php");  break;
        case "teaspeak_reconfigure": include($customer."teaspeak/reconfigure.php");  break;

        //service
        case "service_order": include($customer."service/order.php");  break;
        case "service": include($customer."service/index.php");  break;
        case "service_manage": include($customer."service/manage.php");  break;
        case "service_renew": include($customer."service/renew.php");  break;

        //ts3audiobot
        case "ts3audiobot_order": include($customer."ts3audiobot/order.php");  break;
        case "ts3audiobot": include($customer."ts3audiobot/index.php");  break;
        case "ts3audiobot_manage": include($customer."ts3audiobot/manage.php");  break;
        case "ts3audiobot_renew": include($customer."ts3audiobot/renew.php");  break;

        //
        case "impressum": include($sites."impressum.php");  break;
        case "datenschutz": include($sites."datenschutz.php");  break;
        case "agb": include($sites."agb.php");  break;
		case "widerruf": include($sites."widerruf.php");  break;
		case "wartung": include($sites."wartung.php");  break;
		case "vlst": include($sites."lst.php");  break;
		case "contact": include($sites."contact.php");  break;

        //accounting
        case "charge": include($customer."accounting/charge.php");  break;
        case "transactions": include($customer."accounting/transactions.php");  break;
		case "invoice": include($customer. "accounting/invoice.php"); break;

        //tickets
        case "tickets": include($customer."support/tickets.php");  break;
        case "ticket_create": include($customer."support/create.php");  break;
        case "ticket": include($customer."support/ticket.php");  break;
        case "support": include($customer."support/ticket.php");  break;

        //tickets
        case "profile": include($customer."profile.php");  break;
        case "donate": include($customer."donate.php");  break;
        case "affiliate": include($customer."affiliate.php");  break;
        case "a": include($customer."affiliate/index.php");  break;

        //team
        case "team_tickets": include($team."tickets.php");  break;
        case "team_ticket": include($team."ticket.php");  break;
        case "team_users": include($team."users.php");  break;
        case "team_user": include($team."user.php");  break;
        case "team_transactions": include($team."transactions.php");  break;
        case "team_login_back": include($team."login_back.php");  break;
        case "team_service": include($team."service/index.php");  break;
        case "team_service_manage": include($team."service/manage.php");  break;
        case "team_news": include($team."news.php");  break;
        case "team_dashboard": include($team."dashboard.php");  break;
        case "team_gutscheine": include($team."gutscheine.php");  break;
        case "team_emailblack": include($team."emailblack.php");  break;
		case "team_nodes": include($team."nodes.php");  break;
        case "team_node": include($team."node.php");  break;
		case "team_bots": include($team."bots.php");  break;
        case "team_bot": include($team."bot.php");  break;
		case "team_invoice": include($team. "invoice.php"); break;
		case "team_streams": include($team."streams.php");  break;
    }

    if(strpos($currPage,'system_') !== false) {

    } else {
        if (strpos($currPage, 'back_') !== false || strpos($currPage, 'team_') !== false) {
            include 'resources/additional/BACK/footer.php';
        } elseif (strpos($currPage, 'auth_') !== false) {

            include 'resources/additional/AUTH/footer.php';
        } else {
            include 'resources/additional/footer.php';
        }
    }
	

} else {
    die('please enable .htaccess on your server');
}