<?php


class social extends CI_Model {

    public $details;

    function __construct(){
      parent::__construct();
      $this->load->database('social'); 
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

    
    function loadUsers($data){
    	$q = $this->db->query('SELECT * FROM user');
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
    
    function search($nombre){
    	$q = $this->db->query("SELECT * FROM user WHERE name LIKE '$nombre%'");
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
    
    function specialSearch($data){
    	$q = $this->db->query('select f.nombre, f.n_followers, f.servicio, s.Precio
from cc320114_db.followers_servicios as f join cc320151_db.Servicios_base as s on f.servicio = s.Nombre_servicio
where n_followers > 4;');
      	$result = $q->result();
      	$data['datos'] = $result;
      	return $data;
    }
    
   }