<?php


class usuario extends CI_Model {

    public $details;

    function __construct(){
      parent::__construct();
      $this->load->database();
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
      $q = $this->db->query('SELECT * FROM usuarios');
      return $q->result();
    }

    function set_session() {
        $this->session->set_userdata( array(
          'idusuarios'=>$this->details->idusuarios,
          'nombre_usuario'=>$this->details->nombre_usuario,
          'password'=>$this->details->password,
          'nombre'=>$this->details->nombre,
          'apellido'=>$this->details->apellido,
          'rut'=>$this->details->rut,
          'direccion'=>$this->details->direccion,
          'telefono'=>$this->details->telefono,
          'email'=>$this->details->email,
          'fecha_registro'=>$this->details->fecha_registro,
          'ultima_sesion'=>$this->details->ultima_sesion,
          'tipo_usuario_idtipo_usuario'=>$this->details->tipo_usuario_idtipo_usuario,
          'logueado'=>true
          )
        );
    }

    function fill_session_data(){
      $data=array();
      $data['idusuarios'] = $this->session->userdata('idusuarios');
      $data['nombre_usuario'] = $this->session->userdata('nombre_usuario');
      $data['password'] = $this->session->userdata('password');
      $data['nombre'] = $this->session->userdata('nombre');
      $data['apellido'] = $this->session->userdata('apellido');
      $data['rut'] = $this->session->userdata('rut');
      $data['direccion'] = $this->session->userdata('direccion');
      $data['telefono'] = $this->session->userdata('telefono');
      $data['email'] = $this->session->userdata('email');
      $data['fecha_registro'] = $this->session->userdata('fecha_registro');
      $data['ultima_sesion'] = $this->session->userdata('ultima_sesion');
      $data['tipo_usuario_idtipo_usuario'] = $this->session->userdata('tipo_usuario_idtipo_usuario');
      $data['logueado'] = $this->session->userdata('logueado');
      return $data;
    }

    function  registrarUsuario( $userData ) {
      $date = date('Y-m-d H:i:s');
      $data['nombre_usuario'] = $userData['nombre_usuario'];
      $data['password'] = sha1($userData['password']);
      $data['nombre'] = $userData['nombre'];
      $data['apellido'] = $userData['apellido'];
      $data['rut'] = $userData['rut'];
      $data['direccion'] = $userData['direccion'];
      $data['telefono'] = $userData['telefono'];
      $data['email'] = $userData['email'];
      $data['fecha_registro'] = $date;
      $data['ultima_sesion'] = $date;
      $data['tipo_usuario_idtipo_usuario'] = 1; //1 : cliente

      return $this->db->insert('usuarios',$data);
    }

    public function update_tagline( $user_id, $tagline ) {
      $data = array('tagline'=>$tagline);
      $result = $this->db->update('usuarios', $data, array('id'=>$user_id));
      return $result;
    }

    private function getAvatar() {
      $avatar_names = array();

      foreach(glob('assets/img/avatars/*.png') as $avatar_filename){
        $avatar_filename =   str_replace("assets/img/avatars/","",$avatar_filename);
        array_push($avatar_names, str_replace(".png","",$avatar_filename));
      }

      return $avatar_names[array_rand($avatar_names)];
    }
}
