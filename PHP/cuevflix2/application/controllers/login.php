<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
	}

	function index(){
		//$session_id = $this->session->userdata('session_id');
        $this->show_login();
        $this->load->model('index');
        /*
		if($this->session->userdata('logueado'))
			redirect('/main/show_main');
		else
			$this->show_login();
            */
	}

	function login_user() {

        $this->load->model('usuario');

        $username = $this->input->post('nombre_usuario');
        $pass  = $this->input->post('password');

        if($this->usuario->validate_user($username,$pass))
            redirect('/main/show_main');
        else
            $this->show_login(1);
    }

	function show_login( $show_error = 0 ) {
        $data['error'] = $show_error;
        $this->load->model('usuario');

        $this->load->helper('form');
        $this->load->view('login',$data);
    }

    function logout_user() {
      $this->session->sess_destroy();
      $this->session->set_userdata( array("logueado"=>false));
      $this->index();
    }

    function registrarUsuario(){
        $userInfo = $this->input->post(null,true);

        $bool = true;
        foreach ($userInfo as $key => $value) {
            if ($value==""){
                $bool=false;
            }
        }

        if( count($userInfo) ) {
            if ($bool){
            $this->load->model('usuario');
            $saved = $this->usuario->registrarUsuario($userInfo);
        }
        }

        if ( isset($saved) && $saved ) {
            $this->login_user();
        } else {
            $this->show_login(2);
        }
    }

}