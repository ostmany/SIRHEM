<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UsuarioSubmenu extends CI_Controller {

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
		$this->load->model('usuario_submenu_model');
    }
	
	public function index(){
		if($this->session->userdata("logueado")==TRUE){
			$datos['lista_usuarios']='';
			$this->load->view('05usuariosubmenu/usuario_submenu_principal',$datos);
		}
		else
		{
			header('url='.base_url());
		}
	}
	
	public function login(){
		extract($_POST);
		if($username!='' and $password!=''){
			$resultado=$this->inicio_model->login($username,$password);
			if($resultado["validar"]==TRUE){
				$this->session->set_userdata("logueado",true);
				echo "usuario correcto";
				header('refresh:2; url='.base_url());
			}
			else{
				echo "usuario incorrecto";
				header('refresh:2; url='.base_url());
			}
		}
		else{
			header('refresh:3; url='.base_url());
		}
		
	}
}
