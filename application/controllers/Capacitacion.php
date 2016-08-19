<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Capacitacion extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('capacitacion_model');
    }
	
	
	
	public function insertar(){

		$capacitacion = array(
			'idtipoinvitaci' => $this->input->post('idtipoinvitaci'), 
			'idexpediente' => $this->input->post('idexpediente'),
			'nombrecapacitacion' => $this->input->post('nombrecapacitacion'),
			'fechainiccapacita' => $this->input->post('fechainiccapacita'),
			'fechafincapacita' => $this->input->post('fechafincapacita'),
			'hora_inic_capacita' => $this->input->post('hora_inic_capacita'),
			'hora_fin_capacita' => $this->input->post('hora_fin_capacita')
			);
		
	}


}// fin 
