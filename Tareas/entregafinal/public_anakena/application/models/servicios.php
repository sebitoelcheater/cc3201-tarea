<?php


class servicios extends CI_Model {

    public $details;

    function __construct(){
      parent::__construct();
      $this->load->database('servicios'); 
      $this->load->library('session');
    }

    function validate_user( $nombre_usuario, $password ) {
        $this->db->from('usuarios');
        $this->db->where('nombre_usuario',$nombre_usuario );
        $this->db->where( 'password', sha1($password ));
        $login = $this->db->get()->result();
        if ( is_array($login) && count($login) == 1 ) {
            // Set the users details into the $details property of this class
            $this->details = $login[0];
            // Call set_session to set the user's session vars via CodeIgniter
            $this->set_session();
            return true;
        }

        return false;
    }

    function hola(){
      $q = $this->db->query('SELECT * FROM Servicios_base');
      return $q->result();
    }
    
    function loadServicios($data){
    	$q = $this->db->query('SELECT * FROM Servicios_base');
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
    
    function search($servicio){
    	$q = $this->db->query("SELECT * FROM Servicios_base WHERE Servicio LIKE '$servicio%'");
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
    
    function specialSearch($data){
    	$q = $this->db->query('select l.pelicula, d.Director, l.dislikes as n_dislikes, d.Precio
from cc320114_db.likeo_peliculas as l join cc320114_db.Directores_pelicula as d on l.pelicula = d.Pelicula
where l.dislikes > 2 and l.likes < 3;');
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
}
