<?php

$matakuliah = 'Sistem Informasi';
$jadwal = '17/01/2019';
$dosen = 'Buk Okfa';
function sendMessage($telegram_id, $message_text, $secret_token) {


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
/*----------------------
only basic POST method :
-----------------------*/

/*--------------------------------
Isi TOKEN dibawah ini:
--------------------------------*/
$secret_token = "bot735075724:AAENe-5fhojIKuHd2ohyVThn9Re4PkavUPs";
sendMessage($telegram_id, $message_text, $secret_token);
echo "<script>alert('Pesan berhasil terkirim!'); window.location.href = './';</script>";
?>
