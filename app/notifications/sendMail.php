<?php
   
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

function sendMail($user_email, $user_name, $mailContent, $mailSubject, $emailAltBody = null){

    include 'app/notifications/mail_templates/mail_style.php';

    $mail = new PHPMailer(true);
    try {
        $mail->SMTPDebug = 0;
        $mail->isSMTP();
        $mail->SMTPAuth = true;
        $mail->Host = 'wino-space.de';
        $mail->SMTPSecure = "ssl";
        $mail->SMTPAutoTLS = true;
        $mail->Username = 'no-reply@tea-space.de';
        $mail->Password = '6ldKk7&7';
        $mail->Port = 465;

        $mail->setFrom('no-reply@tea-space.de', 'Kundendienst');
        $mail->addAddress($user_email, $user_name);

        $mail->isHTML(true);
        $mail->Subject = $mailSubject;
        $mail->Body = $mailContent;
        $mail->AltBody = $emailAltBody;

        $mail->send();
        return true;
    } catch (Exception $e) {
        return 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
    }

}