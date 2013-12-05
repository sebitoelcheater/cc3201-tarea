<?php

class main extends CI_Controller{
	public function __construct()
	{
		parent::__construct();

		$this->load->library('session');
		$this->load->helper('url');

		if( !$this->session->userdata('logueado') ) {
			redirect('login/show_login');
		}
	}

	function show_main($aviso = 0){
		$this->load->helper('form');
		$this->load->model('usuario');
		$this->load->model('producto');
		$data = $this->usuario->fill_session_data();
		$data = $this->producto->loadProductos($data);
		$data['aviso'] = $aviso;
		$this->load->view('main',$data);
	}

	function nuevoProducto(){
		$userInfo = $this->input->post(null,true);
		$bool = true;
		foreach ($userInfo as $key => $value) {
			if ($value=="")
				$bool = false;
		}
        if($bool) {
	        $this->load->model('producto');
	        $saved = $this->producto->nuevoProducto($userInfo);
        }
        if (isset($saved) && $saved)
        	$this->show_main(1);
        else
        	$this->show_main(2);
	}

	function comprar(){
		$i = 1;
		$productos=array();
		while ($this->input->post('idproducto_servicio'.$i)!=''){
			$idproducto_servicio = $this->input->post('idproducto_servicio'.$i);
			$cantidad = $this->input->post('cantidad'.$i);
			$stock = $this->input->post('stock'.$i);
			if ($cantidad>$stock){
				$this->show_main(3);
				die();
			}
			$productos[$idproducto_servicio] = array(
				'cantidad'=>$cantidad,
				'stock'=>$stock
				);
			$i+=1;
		}
		$this->load->model('producto');
		$this->producto->restarStock($productos);
		$this->show_main(4);
	}
}
