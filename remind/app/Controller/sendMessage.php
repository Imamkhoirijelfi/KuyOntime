<?php

class  send
{

    public static function sendMessage($telegram_id, $message_text, $secret_token)
    {


        $url = "https://api.telegram.org/" . $secret_token . "/sendMessage?parse_mode=markdown&chat_id=" . $telegram_id;
        $url = $url . "&text=" . urlencode($message_text);
        $ch = curl_init();
        $optArray = array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true
        );
        curl_setopt_array($ch, $optArray);
        $result = curl_exec($ch);
        curl_close($ch);
    }

}

