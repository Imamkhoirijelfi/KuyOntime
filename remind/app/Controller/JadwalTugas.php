<?php
ini_set('date.timezone', 'Asia/Jakarta');
'Indonesia Timezone: ' . date('Y-m-d H:i:s');
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/3/2018
 * Time: 4:11 PM
 */
class JadwalTugas extends Controller {
    protected $id_user;
//    public function __construct()
//    {
//        $this->id_user = $_SESSION['hak_akses'];
//        if ($this->id_user == null){
//            header('Location:' .BASEURL. '/Login');
//        }
//    }
    public  function index(){

//        $d='Melihat Data JadwalKuliah';
//        $ths = new database();
//        $waktu = date("Y-m-d H:i:s");
//        $url=$_SERVER;
//        $username= $_SESSION['namaPegawai'];
//        $ths->simpanaktivitas($username,$waktu,$url['REDIRECT_URL'],$d);
//
//        $data['judul'] = 'Data JadwalKuliah';
        $data['JadwalKuliah'] = $this->model('jadwalkuliah_model')->getjadwaljadwalbyiduser();
        $data['JadwalTugas'] = $this->model('jadwaltugas_model')->gettugastugasbyiduser();
//        $data['jenis'] = $this->model('jenisobat_model')->getALLdataobat();
        $this->view('template/header');
        $this->view('jadwaltugas/index', $data);
        $this->view('template/footer');
    }
//    public  function index2(){
//        $d='Melihat Data JadwalKuliah';
//        $ths = new database();
//        $waktu = date("Y-m-d H:i:s");
//        $url=$_SERVER;
//        $username= $_SESSION['namaPegawai'];
//        $ths->simpanaktivitas($username,$waktu,$url['REDIRECT_URL'],$d);
//
//        $data['judul'] = 'Data JadwalKuliah';
//        $data['JadwalKuliah'] = $this->model('jadwalkuliah_model')->getALLdataobat();
//        $data['jenis'] = $this->model('jenisobat_model')->getALLdataobat();
//        $this->view('template/header', $data);
//        $this->view('obat/index2',$data);
//        $this->view('template/footer');
//    }
//
    public function createAction(){
        if($this->model('jadwaltugas_model')->tambahjadwal($_POST) > 0){
            flasher::setFlash('berhasil','ditambahkan','success');
            header('Location: ' . BASEURL . '/jadwaltugas');
            exit;
        }else{
            flasher::setFlash('gagal','ditambahkan','danger');
            header('Location: ' . BASEURL . '/dasahboard');
            exit;
        }
    }
    public function deleteAction($idTugas){
        if($this->model('jadwaltugas_model')->hapus($idTugas) > 0){
            flasher::setFlash('Terimakasih Tugas Anda','Selesai','success');
            header('Location: ' . BASEURL . '/jadwaltugas');
            exit;
        }else{
            flasher::setFlash('gagal','dihapus','danger');
            header('Location: ' . BASEURL . '/jadwaltugas');
            exit;
        }
    }
//
//    public function getUbah(){
//        echo json_encode($this->model('jadwalkuliah_model')->getUserById($_POST['userID']));
//    }
//
//    public function updateAction(){
//        if($this->model('jadwalkuliah_model')->ubahDataobat($_POST) > 0){
//            $d='Berhasil Mengubah Data JadwalKuliah';
//            $ths = new database();
//            $waktu = date("Y-m-d H:i:s");
//            $url=$_SERVER;
//            $username= $_SESSION['namaPegawai'];
//            $ths->simpanaktivitas($username,$waktu,$url['REDIRECT_URL'],$d);
//            flasher::setFlash('berhasil','diubah','success');
//            header('Location: ' . BASEURL . '/obat');
//            exit;
//        }else{
//            $d='Gagal Mengubah Data JadwalKuliah';
//            $ths = new database();
//            $waktu = date("Y-m-d H:i:s");
//            $url=$_SERVER;
//            $username= $_SESSION['namaPegawai'];
//            $ths->simpanaktivitas($username,$waktu,$url['REDIRECT_URL'],$d);
//            flasher::setFlash('gagal','diubah','danger');
//            header('Location: ' . BASEURL . '/obat');
//            exit;
//        }
//
//    }
}