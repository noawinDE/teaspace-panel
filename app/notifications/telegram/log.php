<?php


function sendlog($chatID, $team, $kunde, $token) {


	
	$messaggio = "
	
Der Mitarbeiter ".$team.",
Hat sich bei ".$kunde."
eingeloggt.
	
";
	$urllog = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatID;
    $urllog = $urllog . "&text=" . urlencode($messaggio);
    $ch = curl_init();
    $optArray = array(
            CURLOPT_URL => $urllog,
            CURLOPT_RETURNTRANSFER => true
    );
    curl_setopt_array($ch, $optArray);
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;
}

