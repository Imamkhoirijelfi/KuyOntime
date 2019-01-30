<?php
ini_set('date.timezone', 'Asia/Jakarta');
'Indonesia Timezone: ' . date('Y-m-d H:i:s');
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/3/2018
 * Time: 4:56 PM
 */
class DataPengguna extends  Controller
{
    protected $id_user;
    public function __construct()
    {
        $this->id_user = $_SESSION['hak_akses'];
        if ($this->id_user == null){
            header('Location:' .BASEURL. '/Login');
        }
    }
    public function index()
    {

        $data['judul'] = 'Data Pengguna';
        $d='Melihat Data Pengguna';
        $ths = new database();
        $waktu = date("Y-m-d H:i:s");
        $url=$_SERVER;
        $username= $_SESSION['namaPegawai'];
        $ths->simpanaktivitas($username,$waktu,$url['REDIRECT_URL'],$d);
        $data['user'] = $this->model('datapengguna_model')->getALLdatauser();
        $this->view('template/header', $data);
        $this->view('datapengguna/index', $data);
        $this->view('template/footer');
    }

    public function createAction()
    {
        if ($this->model('datapengguna_model')->tambahDataPengguna($_POST) > 0) {
            flasher::setFlash('berhasil', 'didaftarkan', 'success');
            header('Location: ' . BASEURL . '/login');
            exit;
        } else {
            flasher::setFlash('Gagal', 'Mendaftar', 'danger');
            header('Location: ' . BASEURL . '/login');
            exit;
        }

    }



}