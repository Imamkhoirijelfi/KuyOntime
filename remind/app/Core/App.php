<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 12/2/2018
 * Time: 5:15 PM
 */
class App {
    protected $controller = 'Login';
    protected $method = 'index';
    protected $params = [];
    public function __construct()
    {
        $url = $this->parseURL();

        if (file_exists('../app/Controller/' . $url[0] . '.php')) {
            $this->controller = $url[0];
            unset($url[0]);
        }

        require_once '../app/Controller/' . $this->controller . '.php';
        $this->controller = new $this->controller;

        //method
        if(isset($url[1])){
            if(method_exists($this->controller, $url[1])){
                $this->method = $url[1];
                unset($url[1]);
            }
        }

        ///param

        if(!empty($url)){
            $this->params = array_values($url);
        }

        //jalankan conroller dan method dan kirimkan params jika ada

        call_user_func_array([$this->controller, $this->method], $this->params);

    }
    public function parseURL(){
        if(isset($_GET['url'])) {
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            return $url;
        }
    }
}