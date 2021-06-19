<?php
require_once 'vendor/autoload.php';
$mollie_payment = new Mollie_Payment;

class Mollie_Payment{

    function createPayment($value, $redirectUrl, $orderId, $description, $method, $webhookUrl = null){

        if(is_null($webhookUrl)){
            $webhookUrl = HELPER::URL().'mollie_ipn.php';
        }

        include 'app/manager/customer/payment/mollie/initialize.php';

        if($method == 'BANKTRANSFER'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::BANKTRANSFER
            ]);
        } elseif($method == 'PAYSAFECARD'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::PAYSAFECARD
            ]);
        } elseif($method == 'APPLEPAY'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::APPLEPAY
            ]);
        } elseif($method == 'GIROPAY'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::GIROPAY
            ]);
        } elseif($method == 'SOFORT'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::SOFORT
            ]);
        }  elseif($method == 'EPS'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::EPS
            ]);
        } elseif($method == 'IDEAL'){
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ],
                "method" => \Mollie\Api\Types\PaymentMethod::IDEAL
            ]);
        } else {
            $payment = $mollie->payments->create([
                "amount" => [
                    "currency" => "EUR",
                    "value" => $value
                ],
                "description" => $description,
                "redirectUrl" => $redirectUrl,
                "webhookUrl" => $webhookUrl,
                "metadata" => [
                    "order_id" => $orderId,
                ]
            ]);
        }

        return $payment;

        //header("Location: " . $payment->getCheckoutUrl(), true, 303);

    }

    function isPayed($paymentID){
        include 'app/manager/customer/payment/mollie/initialize.php';

        $payment = $mollie->payments->get($paymentID);

        return $payment->status;
    }

}
