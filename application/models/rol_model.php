<?php

Class rol_model extends CI_Model{
	     
    function getSelectRoles(){
        $datos=$this->db->get('rol');
		$resultado="<option value='' selected>Seleccione un Rol</option>";
		if($datos->num_rows()>0){
			foreach($datos->result_array() as $row){
				$resultado.="<option value='".$row['IDROL']."'>".$row['NOMBREROL']."</option>";
			}
		}
		return $resultado;
    }
}
?>