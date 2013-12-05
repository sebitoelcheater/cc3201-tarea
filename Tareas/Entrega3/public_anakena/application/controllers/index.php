<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class index extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
	}

	function index(){
		//$session_id = $this->session->userdata('session_id');
        $this->load->model('social');
        $data["hola"] = "hola";
        $data = $this->social->loadUsers($data);
        $this->load->view('header');
        $this->load->view('forms/social_form');
        $this->load->view('index',$data);
        
        /*
		if($this->session->userdata('logueado'))
			redirect('/main/show_main');
		else
			$this->show_login();
            */
	}
	
	function loadSocial(){
		//$session_id = $this->session->userdata('session_id');
        $this->load->model('social');
        $data["hola"] = "hola";
        $data = $this->social->loadUsers($data);
        $this->load->view('header');
        $this->load->view('forms/social_form');
        $this->load->view('index',$data);

	}
	
	function loadPeliculas(){
		$pelicula = $this->input->post('pelicula');
		$this->load->model('peliculas');
        $data["hola"] = "hola";
        $data = $this->peliculas->loadPeliculas($data);
        $this->load->view('header');
        $this->load->view('forms/peliculas_form');
        $this->load->view('index',$data);
	}
	
	function loadServicios(){
		$pelicula = $this->input->post('servicios');
		$this->load->model('servicios');
        $data["hola"] = "hola";
        $data = $this->servicios->loadServicios($data);
        $this->load->view('header');
        $this->load->view('forms/servicios_form');
        $this->load->view('index',$data);
	}
	
	function specialSearchSocial(){
		//$session_id = $this->session->userdata('session_id');
        $this->load->model('social');
        $data["hola"] = "hola";
        $data = $this->social->specialSearch($data);
        $this->load->view('header');
        $this->load->view('forms/social_form');
        $this->load->view('index',$data);

	}
	
	function specialSearchPeliculas(){
		$pelicula = $this->input->post('pelicula');
		$this->load->model('peliculas');
        $data["hola"] = "hola";
        $data = $this->peliculas->specialSearch($data);
        $this->load->view('header');
        $this->load->view('forms/peliculas_form');
        $this->load->view('index',$data);
	}
	
	function specialSearchServicios(){
		$pelicula = $this->input->post('servicios');
		$this->load->model('servicios');
        $data["hola"] = "hola";
        $data = $this->servicios->specialSearch($data);
        $this->load->view('header');
        $this->load->view('forms/servicios_form');
        $this->load->view('index',$data);
	}
	
		function searchSocial(){
		$nombre = $this->input->post('nombre');
        $this->load->model('social');
        $data["hola"] = "hola";
        $data = $this->social->search($nombre);
        $this->load->view('header');
        $this->load->view('forms/social_form');
        $this->load->view('index',$data);

	}
	
	function searchPeliculas(){
		$titulo = $this->input->post('titulo');
		$this->load->model('peliculas');
        $data["hola"] = "hola";
        $data = $this->peliculas->search($titulo);
        $this->load->view('header');
        $this->load->view('forms/peliculas_form');
        $this->load->view('index',$data);
	}
	
	function searchServicios(){
		$servicio = $this->input->post('servicio');
		$this->load->model('servicios');
        $data["hola"] = "hola";
        $data = $this->servicios->search($servicio);
        $this->load->view('header');
        $this->load->view('forms/servicios_form');
        $this->load->view('index',$data);
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