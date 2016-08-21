<?php

Class usuario_model extends CI_Model{
     
    function getListUsuarios(){
		//$this->db->query("select *");
		$this->db->select("U.*,R.*");
		$this->db->from("usuario as U");
		$this->db->join("rol as R","R.IDROL=U.IDROL","inner");
		$this->db->join("expediente as E","E.IDEXPEDIENTE=U.IDEXPEDIENTE","left");
        $datos=$this->db->get();
		$resultado='';
		if($datos->num_rows()>0)
			foreach($datos->result_array() as $row){
				$resultado.='<tr><td>'.$row['IDUSUARIO'].'</td>
				<td>'.$row['USERUSUARIO'].'</td>
				<td>'.$row['NOMBREROL'].'</td>
				<td>'.$row['IDEXPEDIENTE'].'</td>
				<td>
					<div class="btn-group btn-group-lg" role="group">
						<form action='.base_url().'usuario/modificar method="POST" style="display:inline!important;">
							<input type="hidden" id="idUsuario" name="idUsuario" value="'.$row['IDUSUARIO'].'">
							<input type="submit" class="btn btn-warning" value="MODIFICAR">
						</form>
	
						<form action='.base_url().'usuario/eliminar method="POST" style="display:inline!important;">
							<input type="hidden" id="idUsuario" name="idUsuario" value="'.$row['IDUSUARIO'].'">
							<input type="submit" class="btn btn-danger" value="ELIMINAR"></td>
						</form>
					</div>
				</tr>';
			}
		return $resultado;
    }
	
	function insertar($idRol,$idEmpleado,$username,$password){
		$this->db->trans_begin();
		$this->db->set("IDROL",$idRol);
		$this->db->set("IDEXPEDIENTE",$idEmpleado);
		$this->db->set("USERUSUARIO",$username);
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