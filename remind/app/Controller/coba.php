<?php
function coba()
{

//    $data['JadwalTugas'] = $this->model('jadwaltugas_model')->gettugastugasbyiduser();

    $matakuliah = 'dia';
    $jadwal = '12/01/2019';
    $telegram_id = '560083216';
    $message_text = "Assalamualaikum Bro ada Harus Mengerjakan Tugas Matakuliah " . $matakuliah . " waktu pengumpulan " . $jadwal . "";
    /*--------------------------------
    Isi TOKEN dibawah ini:
    --------------------------------*/
    $secret_token = "bot735075724:AAENe-5fhojIKuHd2ohyVThn9Re4PkavUPs";
    sendMessage($telegram_id, $message_text, $secret_token);
    echo "<script>alert('Pesan berhasil terkirim!'); window.location.href = './';</script>";
}
?>