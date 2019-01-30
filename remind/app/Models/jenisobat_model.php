<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/3/2018
 * Time: 9:51 PM
 */
class jenisobat_model {
    private $table = 'jenis_obat';
    private $db;

    public function __construct()
    {
        $this->db = new database;
    }

    public function getALLdataobat(){
        $this->db->query('SELECT * FROM '.$this->table);

        return $this->db->resultSet();
    }

    public function tambahDatajenis($data){

        $query ="INSERT INTO jenis_obat VALUES ('', :jenisobat)" ;

        $this->db->query($query);

        $this->db->bind('jenisobat', $data['jenisobat']);


        $this->db->execute();

        return $this->db->rowCount();

    }
    public function ubahDatajenis($data){

        $query ="UPDATE jenis_obat SET jenisobat = :jenisobat WHERE idJenis = :idJenis " ;
        $this->db->query($query);
        $this->db->bind('jenisobat', $data['jenisobat']);
        $this->db->bind('idJenis', $data['idJenis']);

        $this->db->execute();
        return $this->db->rowCount();

    }
    public function hapusDatajenis($idJenis){
        $query = "DELETE FROM jenis_obat WHERE idJenis = :idJenis";
        $this->db->query($query);
        $this->db->bind('idJenis', $idJenis);
        $this->db->execute();
        return $this->db->rowCount();

    }
}