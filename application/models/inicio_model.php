<?php

Class inicio_model extends CI_Model{
     
    function login($username,$password){
        $this->db->where('USERUSUARIO',$username);
		$this->db->where('PASSUSUARIO',md5($password));
		$dato = $this->db->get('usuario');
		//echo $this->db->last_query();
		if($dato->num_rows()>0){
			return array("validar"=>true,"usuario"=>$dato->row());
		}
		else
			return array("validar"=>false,"usuario"=>"");
    }
	
	function validarUsername($user){
		$this->db->where("username_perfil",$user);
		$datos=$this->db->get("perfil");
		if($datos->num_rows()>0)
			return "true";
		else
			return "false";
	}
	function actualizar_ingreso($id_perfil){
		$this->db->set('ultimo_ingreso_usuario',date('Y-m-d H:i:s'));
		$this->db->where('id_perfil',$id_perfil);
		$this->db->update('perfil');
		return;
	}
}
?>