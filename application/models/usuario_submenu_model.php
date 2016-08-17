<?php

Class usuario_submenu_model extends CI_Model{
     
    function usuarios(){
        return $this->db->get('usuario');
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