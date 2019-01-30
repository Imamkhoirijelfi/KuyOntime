<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/2/2018
 * Time: 4:35 PM
 */
class jadwaltugas_model {
       private $table = 'JadwalKuliah';
    private $db;

    public function __construct()
    {
        $this->db = new database;
    }

    public function gettugastugasbyiduser(){
        $id = $_SESSION['idtele'];
        $this->db->query('SELECT * FROM `tugas_kuliah` where idTelegram='.$id.' order by jadwalWaktu');
        $this->db->execute();
        return $this->db->resultSet();
    }

    public function tambahtugas($data){


        $query = "INSERT INTO tugas_kuliah VALUES ('', :mataKuliah, :jadwalWaktu, :Desc, :idTelegram)" ;
        $this->db->query($query);

        $this->db->bind('mataKuliah', $data['mataKuliah']);
        $this->db->bind('jadwalWaktu', $data['jadwalWaktu']);
        $this->db->bind('Desc', $data['Desc']);
        $this->db->bind('idTelegram', $data['idTelegram']);

        $this->db->execute();
        return $this->db->rowCount();

    }

    public function hapus($idTugas){
        $query = "DELETE FROM tugas_kuliah WHERE idTugas = :idTugas";
        $this->db->query($query);
        $this->db->bind('idTugas', $idTugas);
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