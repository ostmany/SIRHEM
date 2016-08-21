<?php

Class expediente_model extends CI_Model{
     
    function getSelectExpedientes(){
		$this->db->select("E.IDEXPEDIENTE,E.PRIMERNOMBRE,E.SEGUNDONOMBRE,E.PRIMERAPELLIDO,E.SEGUNDAPELLIDO");
		$this->db->from("expediente as E");
        $datos=$this->db->get();
		$resultado='';
		if($datos->num_rows()>0)
			foreach($datos->result_array() as $row){
				$resultado.='<tr><td>'.$row['IDUSUARIO'].'</td>
				<td>'.$row['USERUSUARIO'].'</td>
				<td>'.$row['NOMBREROL'].'</td>
				<td>'.$row['IDEXPEDIENTE'].'</td>
				<td><input type="button" value="MODIFICAR"><input type="button" value="ELIMINAR"></td>
				</tr>';
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