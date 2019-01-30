<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 1/5/2019
 * Time: 2:38 PM
 */

class eror extends Controller
{
    public function index(){
        $this->view('eror/403');
    }
}