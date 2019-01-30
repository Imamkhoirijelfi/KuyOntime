<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/9/2018
 * Time: 5:21 PM
 */
class flasher{
    public function setFlashLogin()
    {
        $_SESSION['login']=true;
    }
    public function login()
    {
        if( isset($_SESSION['login'])){
            echo '<div align="center" class="alert alert-danger" role="alert"> <center>Username atau Password Salah</center> </di>

           ' ;
            unset($_SESSION['login']);

        }
    }

    public static function setFlash($pesan, $aksi, $tipe){
        $_SESSION['flash'] = [
          'pesan' => $pesan,
            'aksi' => $aksi,
            'tipe' => $tipe
        ];

    }

    public static function flash(){
        if( isset($_SESSION['flash'])){
            echo '<div class="alert alert-' . $_SESSION['flash']['tipe'] . ' alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
               <strong>' .$_SESSION['flash']['pesan']. '</strong> ' .$_SESSION['flash']['aksi']. '
                 </div>';

            unset($_SESSION['flash']);
        }
    }
}