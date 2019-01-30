<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/2/2018
 * Time: 2:53 PM
 */
class database
{
    private $host = DB_HOST;
    private $user = DB_USER;
    private $pass = DB_PASS;
    private $db_name = DB_NAME;

    private $dbh;
    private $stmt;

    public function __construct()
    {
        $dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->db_name;
        $option = [
            PDO::ATTR_PERSISTENT => true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ];
        try {
            $this->dbh = new PDO($dsn, $this->user, $this->pass, $option);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }

    public function query($query)
    {
        $this->stmt = $this->dbh->prepare($query);
    }
    public function sql($sql)
    {
        $this->stmt = $this->dbh->prepare($sql);
    }

    public function bind($param, $value, $type = null)
    {
        if (is_null($type)) {
            switch (true) {
                case is_int($value):
                    $type = PDO::PARAM_INT;
                    break;
                case is_bool($value):
                    $type = PDO::PARAM_BOOL;
                case is_null($value):
                    $type = PDO::PARAM_NULL;
                    break;
                default :
                    $type = PDO::PARAM_STR;
            }
        }
        $this->stmt->bindValue($param, $value, $type);

    }

    public function execute()
    {
        $this->stmt->execute();

    }

    public function resultSet()
    {
        $this->execute();
        return $this->stmt->fetchALL(PDO::FETCH_ASSOC);
    }

    public function single()
    {
        $this->execute();
        return $this->stmt->fetch(PDO::FETCH_ASSOC);
    }
    public function rowCount(){
        return $this->stmt->rowCount();
    }
    public function simpanaktivitas($username,$waktu,$url,$aktivitas){
        $ds =$this->query("INSERT INTO `log_activity`(`username`, `waktu`, `url`, `aktivitas`)VALUES ('$username','$waktu','$url','$aktivitas')");
        return $this->execute($ds);

    }

    public function logout($username,$waktu){
        $dst = $this->query("INSERT INTO `logout`(`username`, `waktu`) VALUES ('$username','$waktu')");
        return $this->execute($dst);

    }
}

//    public function login(){
//        global $app;
//        $username = $_REQUEST['username'];
//        $password = $_REQUEST['password'];
//        //levelakses = $_REQUEST['levelakses'];
//        //$bolehakses = $_REQUEST['bolehakses'];
//
//        if ($username != '' && $password != ''){
//            $query = "SELECT * FROM user WHERE username='$username' AND password='$password' AND hakAkses=admin";
//            //$params = array(':username'=>$username,':password'=>md5($password));
//
//            try{
//                $this->stmt = $this->dbh->prepare($query);
//                $this->stmt->setFetchMode(PDO::FETCH_OBJ);
//                $this->stmt->execute();
//
//                $result = $this->stmt->fetch();
//                //var_dump($result);
//                //exit();
//                if($result){
//                    // berhasil
//                    $_SESSION = array();
//                    $_SESSION['username']=$result->username;
//                    $_SESSION['hakAkses']=$result->hakAkses;
//                    $_SESSION['userID'] = $result->userID;
//                    if($_SESSION['hakAkses'] == 'admin'){
//                        header("Location:index.php?act=Front");
//                    } elseif ($_SESSION['hakAkses'] == 'apoteker') {
//                        //echo 'berhasil';
//                        //exit();
//                        header('Location:index.php?act=Front');
//                    }
//
//                }else{
//                    //gagal
//                    header('location: index.php?error='.base64_encode('Username / password tidak sesuai!'));
//                    exit();
//                    //echo 'gagal';
//                    //exit();
//                }
//
//                $this->stmt->closeCursor();
//
//            }catch (PDOException $ex){
//                echo $ex->getMessage();
//                exit();
//            }
//        }else{
//            header ("Location: index.php");
//        }
//    }
//}