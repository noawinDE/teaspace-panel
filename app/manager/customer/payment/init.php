<?php

if(isset($_POST['startPayment'])){

    $error = null;

    if(empty($_POST['amount'])){
        $error = 'Bitte gebe einen Betrag ein';
    }

    if(!is_numeric($_POST['amount'])){
        $error = 'Bitte gebe einen Betrag ein (Zahl)';
    }

    if(empty($_POST['payment_method'])){
        $error = 'Bitte wähle eine Zahlungsmethode';
    }
	
	if($site->userHaveValidProfile($userid) == FALSE) {
		 $error = 'Bitte fülle erst dein Profil aus.';
	} 


    if($_POST['amount'] < 1){
        $error = 'Bitte gebe einen Betrag über 1.00€ ein';
    }

    if($_POST['amount'] > 500){
        $error = 'Bitte gebe einen Betrag unter 500.00€ ein';
    }

    if(empty($error)){

        if($_POST['payment_method'] == 'paypal'){
            require 'app/manager/customer/payment/functions.php';

            $paypalUrl = $enableSandbox ? 'https://www.sandbox.paypal.com/cgi-bin/webscr' : 'https://www.paypal.com/cgi-bin/webscr';

            $itemName = 'Guthabenaufladung | kd'.$userid;
            $itemAmount = $_POST['amount'];

            $data = [];

            $data['business'] = $paypalConfig['email'];

            $data['return'] = stripslashes($paypalConfig['return_url']);
            $data['cancel_return'] = stripslashes($paypalConfig['cancel_url']);
            $data['notify_url'] = stripslashes($paypalConfig['notify_url']);

            $data['item_name'] = $itemName;
            $data['amount'] = $itemAmount;
            $data['currency_code'] = 'EUR';
            $data['custom'] = $_COOKIE['session_token'];

            $queryString = http_build_query($data);
            header('location:' . $paypalUrl . '?cmd=_xclick&' . $queryString);
        } else {
            require 'app/manager/customer/payment/mollie/api_manager.php';

            $price = number_format($_POST['amount'], 2);
            $customer_ip = $_SERVER['REMOTE_ADDR'];
            $orderId = time();
            $payment = $mollie_payment->createPayment($price, $helper->url().'accounting/charge', $orderId,'Guthabenaufladung KD-'.$userid, $_POST['payment_method']);

            $invoice_id = json_encode($payment->id);
            $invoice_id = str_replace('"', '', $invoice_id);

            $site->addTransaction($userid,strtolower($payment_method),'pending', $price,'Guthabenaufladung mit '.strtolower($payment_method), $invoice_id);
            header("Location: " . $payment->getCheckoutUrl(),true,303);
        }

    } else {
        echo sendError($error);
    }

}