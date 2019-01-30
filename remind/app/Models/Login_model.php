<?php 

class Login_model {
	private $table='user';
	private $db;

	public function __construct()
	{
		$this->db = new Database;
	}
	public function masuk($username, $password)
	{
		$this->db->query('SELECT * FROM user WHERE username =:username AND password=:password');
		$this->db->bind('username', $username);
		$this->db->bind('password', $password);

		$this->db->execute();
		return $this->db->single();
	}

    function sendMessage($noHP, $message_text, $secret_token) {


//    if ($tgl_now >=$tgl_exp )
//    {
        $url = "https://api.telegram.org/" . $secret_token . "/sendMessageModel?parse_mode=markdown&chat_id=" . $noHP;
        $url = $url . "&text=" . urlencode($message_text);
        $ch = curl_init();
        $optArray = array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true
        );
        curl_setopt_array($ch, $optArray);
        $result = curl_exec($ch);
        curl_close($ch);
//    }

    }
    /*----------------------
    only basic POST method :
    -----------------------*/
//$telegram_id = $_POST ['telegram_id'];
//$message_text =  "ada Harus mengerjakan Tugas ".$date." waktu pengumpulan ".$tomorrow." Pukul ".$jam."" ;
//    /*--------------------------------
//    Isi TOKEN dibawah ini:
//    --------------------------------*/
//$secret_token = "bot735075724:AAENe-5fhojIKuHd2ohyVThn9Re4PkavUPs";
//sendMessageModel($telegram_id, $message_text, $secret_token);
}
