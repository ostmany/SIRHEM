<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Expediente extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('usuario_model');
		$this->load->model('rol_model');
    }
	
	public function index(){
		if($this->session->userdata("logueado")==TRUE){
			$datos['lista_usuarios']=$this->usuario_model->usuarios();
			$this->load->view('04usuario/usuario_principal',$datos);
		}
		else{
			header('url='.base_url());
		}
	}
	
	public function nuevo(){
		if($this->session->userdata("logueado")==TRUE){
			$datos["roles"]=$this->rol_model->getRoles();
			$datos["empleados"]=$this->expediente_model->getExpedientes();
			$this->load->view('04usuario/usuario_nuevo',$datos);
		}
		else{
			header('url='.base_url());
		}
	}
	
	public function insertar(){
		if($this->session->userdata("logueado")==TRUE){
			extract($_POST);
			if($this->usuario_model->insertar($idRol,$username,$idEmpleado,$password)){
				echo "Usuario ingresado";
			}
			else{
				echo "Usuario no ingresado";
			}
		}
		else{
			header('url='.base_url());
		}
	}
}
