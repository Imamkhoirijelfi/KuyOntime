<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/28/2018
 * Time: 11:16 AM
 */

class dashboard extends Controller
{

    protected $id_user;
//    public function __construct()
//    {
//        $ths = new database();
//
//        $this->id_user = $_SESSION['hak_akses'];
//        if ($this->id_user == null){
//            header('Location:' .BASEURL. '/Login');
//        }
//    }

    public function index()
    {
        $data['JadwalKuliah'] = $this->model('jadwalkuliah_model')->getjadwaljadwalbyiduser();
        $data['judul']='Dashboard';
        $this->view('dashboard/index', $data);



    }
    public function createAction(){
        if($this->model('jadwaltugas_model')->tambahtugas($_POST) > 0){
            flasher::setFlash('berhasil','ditambahkan','success');
            header('Location: ' . BASEURL . '/jadwaltugas');
            exit;
        }else{
            flasher::setFlash('gagal','ditambahkan','danger');
            header('Location: ' . BASEURL . '/dashboard');
            exit;
        }
    }

    public function createAction2(){
        if($this->model('jadwalkuliah_model')->tambahjadwal($_POST) > 0){
            flasher::setFlash('berhasil','ditambahkan','success');
            header('Location: ' . BASEURL . '/jadwalkuliah');
            exit;
        }else{
            flasher::setFlash('gagal','ditambahkan','danger');
            header('Location: ' . BASEURL . '/dashboard');
            exit;
        }
    }





}