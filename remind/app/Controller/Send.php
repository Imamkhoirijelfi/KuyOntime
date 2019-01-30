<?php
ini_set('date.timezone', 'Asia/Jakarta');
'Indonesia Timezone: ' . date('Y-m-d H:i:s');
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 1/18/2019
 * Time: 9:23 PM
 */
class Send extends Controller
{
    public function sendmatapelajaran()
    {
        $data['JadwalKuliah'] = $this->model('jadwalkuliah_model')->getjadwaljadwalbyiduser();
        echo ("Berhasil");
        foreach ($data['JadwalKuliah'] as $v1){

         if(date("l")==$v1['hari'] && date("H:i")=="10:00" ){

                $matkul = $v1['mataKuliah'];
                $dosen = $v1['dosen'];
                $jam = $v1['tanggalWaktu'];
                $ruang = $v1['ruangan'];

                $telegram_id = $v1['idTelegram'];
                $message_text =  "Assalamualaikum Wr.Wb Anda Ada Jadwal Kuliah Hari ini Mata kuliah : *".$matkul."* Dengan Dosen *".$dosen."* Diruangan *".$ruang."* pada pukul : *".$jam."*";
                /*--------------------------------
                Isi TOKEN dibawah ini:
                --------------------------------*/
                $secret_token = "bot735075724:AAENe-5fhojIKuHd2ohyVThn9Re4PkavUPs";
                $senpesan = new Send;
                $senpesan->sendMessage($telegram_id,$message_text,$secret_token);
           }
        }

    }
    public static function sendMessage($telegram_id, $message_text, $secret_token){
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