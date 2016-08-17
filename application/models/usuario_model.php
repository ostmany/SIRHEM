<?php

Class usuario_model extends CI_Model{
     
    function usuarios(){
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
				<td><input type="button" value="MODIFICAR"><input type="button" value="ELIMINAR"></td>
				</tr>';
			}
		return $resultado;
    }
}
?>