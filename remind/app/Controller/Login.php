<?php
ini_set('date.timezone', 'Asia/Jakarta');
'Indonesia Timezone: ' . date('Y-m-d H:i:s');


class Login extends Controller {

    private $db;
    public function __construct()
    {
        $ths = new database();
        $this->db = new database;

    }
	public function index()
	{
		$data['judul']='LOGIN';
		$this->view('login/index', $data);

	}

	public function masuk(){

			if (isset($_POST['login'])) {
		  		if (!empty($_POST['username']) && !empty($_POST['password'])) {
		    		$username = $_POST['username'];
		    		$password = ( $_POST['password']);
					$query = $this->model('Login_model')->masuk($username, $password);

		    			if ($query>0) {
		    				if($password===($_POST['password'])){
		    				    session_start();
//
		    					$_SESSION['nama']=$username;
                                $_SESSION['idtele']=$query['idTelegram'];
//		    					$_SESSION['hakAkses']=$username;
		    					header('Location:' .BASEURL. '/dashboard/');
		    					exit;

		    				}else if($password===md5( $_POST['password'])){
//
                                $_SESSION['nama']=$username;
                                $_SESSION['idtele']=$query['idTelegram'];
                                header('Location:' .BASEURL. '/dashboard/index');
		    					exit;
		    				}
		    			}else{
		    				flasher::setflashLogin();
		    				header('Location:' .BASEURL. '/Login');
		    			}
				}else if(empty($_POST['username']) || empty(md5( $_POST['password']))){
					flasher::setFlashLogin();
					header('Location:' .BASEURL. '/Login');
				}
			}
	}

	public function keluar(){
	    session_destroy();

        unset($_POST['login-out']);
        unset($_SESSION['apoteker']);
        unset($_SESSION['userID']);
        unset($_SESSION['hak_akses']);
        unset($_SESSION['namaPegawai']);
        unset($_SESSION['nama']);
        unset($_SESSION['idtele']);
        header('Location:' .BASEURL. '/Login');
    }
}
