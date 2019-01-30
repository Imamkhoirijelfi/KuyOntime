<?php
ini_set('date.timezone', 'Asia/Jakarta');
'Indonesia Timezone: ' . date('Y-m-d H:i:s');
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 1/18/2019
 * Time: 9:23 PM
 */
class Send2 extends Controller
{
    public function sendtugas()
    {
        $data['JadwalTugas'] = $this->model('jadwaltugas_model')->gettugastugasbyiduser();
        echo ("Berhasil");
        foreach ($data['JadwalTugas'] as $v1){

//
//            if(date("H:i:s")=="18:00:00" || date("H:i:s")=="20:00:00" ) {
                $matkul = $v1['mataKuliah'];
                $desc = $v1['Desc'];
                $jam = $v1['jadwalWaktu'];

                $telegram_id = $v1['idTelegram'];
                $message_text = "*KERJAKAN TUGAS* : * ''" . $matkul . "'' * --> _''" . $desc . "''_ --> Dikumpulkan Pada : *" . $jam . "*";
                /*--------------------------------
                Isi TOKEN dibawah ini:
                --------------------------------*/
                $secret_token = "bot786599716:AAFtG021cG2rBtzyi6J5KMrm79r71NeR3QE";
                $senpesan = new Send2;
                $senpesan->sendMessage($telegram_id, $message_text, $secret_token);
            }
            if($v1['jadwalWaktu']==date("Y-m-d H:i")){
                echo (date("Y-m-d H:i:s"));
                $hapustugas = new Send2;
                $hapustugas->deleteAction($v1['idTugas']);
            }
//
//        }

    }
    public static function sendMessage($telegram_id, $message_text, $secret_token){
        $url = "https://api.telegram.org/" . $secret_token . "/sendMessage?parse_mode=markdown&chat_id=" . $telegram_id;
        $url = $url . "&text=" . urlencode($message_text);
        $ch = curl_init(0);
        $optArray = array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true
        );
        curl_setopt_array($ch, $optArray);
        $result = curl_exec($ch);
        curl_close($ch);
    }

    public function deleteAction($idTugas)
    {
        ($this->model('jadwaltugas_model')->hapus($idTugas) > 0);

    }
}