<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/2/2018
 * Time: 4:35 PM
 */
class jadwalkuliah_model {
    private $table = 'JadwalKuliah';
    private $db;

    public function __construct()
    {
        $this->db = new database;
    }


    public function getjadwaljadwalbyiduser(){
        $id = $_SESSION['idtele'];
        $this->db->query('SELECT * FROM jadwal_kuliah2 WHERE idTelegram='.$id.' order by tanggalWaktu');
        $this->db->execute();
        return $this->db->resultSet();
    }
    public function hapus($kodeJadwalkuliah){
        $query = "DELETE FROM jadwal_kuliah2 WHERE kodeJadwalkuliah = :kodeJadwalkuliah";
        $this->db->query($query);
        $this->db->bind('kodeJadwalkuliah', $kodeJadwalkuliah);
        $this->db->execute();
        return $this->db->rowCount();

    }
    public function tambahjadwal($data){

//        $query ="INSERT INTO obat VALUES (:idObat, :namaObat, :idJenis, :stock, :stock_minimal)" ;
       $query = "INSERT INTO jadwal_kuliah2 VALUES ('',:mataKuliah , :dosen, :ruangan, :hari, :tanggalWaktu, :idTelegram)";
        $this->db->query($query);
        $this->db->bind('mataKuliah', $data['mataKuliah']);
        $this->db->bind('dosen', $data['dosen']);
        $this->db->bind('ruangan', $data['ruangan']);
        $this->db->bind('hari', $data['hari']);
        $this->db->bind('tanggalWaktu', $data['tanggalWaktu']);
        $this->db->bind('idTelegram', $data['idTelegram']);
        $this->db->execute();
        return $this->db->rowCount();

    }
    public function getMatkul(){
        $this->db->query('SELECT mataKuliah FROM jadwal_kuliah2');
        $this->db->execute();
        return $this->db->single();
    }

    public function hapusDataobat($idObat){
        $query = "DELETE FROM obat WHERE idObat = :idObat";
        $this->db->query($query);
        $this->db->bind('idObat', $idObat);
        $this->db->execute();
        return $this->db->rowCount();

    }

    public function ubahDataobat($data){

        $query ="UPDATE obat SET namaObat = :namaObat, idJenis = :idJenis, stock = :stock, stock_minimal = :stock_minimal WHERE idObat = :idObat " ;

        $this->db->query($query);
        $this->db->bind('namaObat', $data['namaObat']);
        $this->db->bind('idJenis', $data['idJenis']);
        $this->db->bind('stock', $data['stock']);
        $this->db->bind('stock_minimal', $data['stock_minimal']);
        $this->db->bind('idObat', $data['idObat']);



        $this->db->execute();

        return $this->db->rowCount();

    }
}