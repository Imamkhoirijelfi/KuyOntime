<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/3/2018
 * Time: 10:06 PM
 */
class datapengguna_model{
    private $table = 'user';
    private $db;

    public function __construct()
    {
        $this->db = new database;
    }

    public function getALLdatauser(){
        $this->db->query('SELECT * FROM '.$this->table);

        return $this->db->resultSet();
    }

    public function tambahDataPengguna($data){


        $query ="INSERT INTO user VALUES ('', :username, :password, :idTelegram)" ;

        $this->db->query($query);
        $this->db->bind('username', $data['username']);
        $this->db->bind('password', $data['password']);
        $this->db->bind('idTelegram', $data['idTelegram']);

        $this->db->execute();

        return $this->db->rowCount();

    }

    public function getUserById($id)
    {
        $this->db->query('SELECT * FROM user WHERE userID =:userID');
        $this->db->bind('id', $id);
        return $this->db->single();
    }

    public function hapusDatauser($userID){
        $query = "DELETE FROM user WHERE userID = :userID";
        $this->db->query($query);
        $this->db->bind('userID', $userID);
        $this->db->execute();
        return $this->db->rowCount();

    }

    public function ubahDatauser($data){

        $query ="UPDATE user SET namaPegawai = :namaPegawai, tugasPegawai = :tugasPegawai, username = :username, password = :password, noHp = :noHp WHERE userID = :userID" ;

        $this->db->query($query);
        $this->db->bind('namaPegawai', $data['namaPegawai']);
        $this->db->bind('tugasPegawai', $data['tugasPegawai']);
        $this->db->bind('username', $data['username']);
        $this->db->bind('password', $data['password']);
        $this->db->bind('noHp', $data['noHp']);
        $this->db->bind('userID', $data['userID']);



        $this->db->execute();

        return $this->db->rowCount();

    }
}