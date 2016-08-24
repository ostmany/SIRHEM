<?php

Class expediente_model extends CI_Model{
     
    function getSelectExpedientes(){
		$datos=$this->db->get('expediente');
		$resultado="<option value='' selected>Seleccione un Empleado</option>";
		if($datos->num_rows()>0){
			foreach($datos->result_array() as $row){
				$resultado.="<option value='".$row['IDEXPEDIENTE']."'>".$row['PRIMERNOMBRE']." ".$row['SEGUNDNOMBRE']." ".$row['PRIMERAPELLIDO']." ".$row['SEGUNDAPELLIDO']."</option>";
			}
		}
		return $resultado;
    }
	
	function insertar($idrol,$username,$userpass,$password){
		$this->db->trans_begin();
		$this->db->set("IDROL",$idrol);
		$this->db->set("IDEXPEDIENTE",$username);
		$this->db->set("USERUSUARIO",$userpass);
		$this->db->set("PASSUSUARIO",$password);
		$this->db->insert("usuario");
		$this->db->trans_complete();
		if ($this->db->trans_status() === FALSE){
			return false;
		}
		else{
			$this->db->trans_commit();
			return true;
		}
	}
}
?>