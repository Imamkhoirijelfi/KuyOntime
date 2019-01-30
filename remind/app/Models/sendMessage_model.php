<?php
///* -----------------------------------------------------
//Simple PHP script for Sending Telegram Bot Message
//~ Iky | https://www.wadagizig.com
//------------------------------------------------------ */
////560083216
////$exp_date = “2012-04-31”;
////$todays_date = date(“Y-m-d”);
////$today = strtotime($todays_date);
////$expiration_date = strtotime($exp_date);
////if ($expiration_date <= $today)
//////{
////$tgl_now=date("Y/m/d");
////$tgl_exp="2015/02/28";//tanggal expired
////$tugasMatkul="Kemanan informasi";
////$jam="23.00";
////$date = "04/15/2013";
////$date1 = str_replace('-', '/', $date);
////$tomorrow = date('m/d/Y',strtotime($date1 . "+1 days"));
//
////$data['JadwalTugas'] = $this->model('jadwaltugas_model')->gettugastugasbyiduser();
//class sendMessageModel {
//   public function sendMessageModel($telegram_id, $message_text, $secret_token) {
//        $url = "https://api.telegram.org/" . $secret_token . "/sendMessageModel?parse_mode=markdown&chat_id=" . $telegram_id;
//        $url = $url . "&text=" . urlencode($message_text);
//        $ch = curl_init();
//        $optArray = array(
//            CURLOPT_URL => $url,
//            CURLOPT_RETURNTRANSFER => true
//        );
//        curl_setopt_array($ch, $optArray);
//        $result = curl_exec($ch);
//        curl_close($ch);
//    }
//}
//
