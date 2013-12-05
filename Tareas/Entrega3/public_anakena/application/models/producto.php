<?php
class producto extends CI_Model {
	function __construct(){
      parent::__construct();
      $this->load->database();
      $this->load->library('session');
    }

    function nuevoProducto($datos){
    	$date = date('Y-m-d H:i:s');
		$data['nombre'] = $datos['nombre'];
		$data['descripcion'] = $datos['descripcion'];
		$data['precio'] = (int)$datos['precio'];
		$data['stock'] = $datos['stock'];
		$data['fecha_publicacion'] = $date;
		$data['usuarios_idusuarios'] = (int)$this->session->userdata('idusuarios');
		return $this->db->insert('producto_servicio',$data);
    }

    function loadProductos($data){
    	$q = $this->db->query('SELECT idproducto_servicio,nombre,descripcion,precio,stock FROM producto_servicio WHERE stock>0');
      	$result = $q->result();
      	$data['productos'] = $result;
      	return $data;
    }

    function restarStock($productos){
      foreach ($productos as $key => $value) {
        $id = $key;
        $cantidad = $value['cantidad'];
        $stock = $value['stock'];
        $data = array(
          'stock'=>$stock-$cantidad
          );
        $this->db->where('idproducto_servicio', $id);
        $this->db->update('producto_servicio', $data);
        /*
        $data = array(
           'fecha_compra' => date('Y-m-d H:i:s'),
           'usuarios_idusuarios' => (int)$this->session->userdata('idusuarios'),
           'metodo_compra_idmetodo_compra' => 1
        );

        $this->db->insert('compra', $data); 
        */
      }
    }
}
?>