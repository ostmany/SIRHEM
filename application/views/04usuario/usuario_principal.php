<?php $this->load->view('header');?>
<?php $this->load->view('sidebar');;?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            USUARIO
            <small>Panel de Control</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Usuario</a></li>
            <li class="active">Principal</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
			<div class="row">
				<div class="col-md-4">
					<a href="<?php echo base_url();?>usuario/nuevo"><input type="button" value="NUEVO USUARIO" class="btn btn-primary form-control"></a>
				</div>
			</div>
			<div class="row">
				<table class="table">
					<thead>
						<th>ID</th>
						<th>Usuario</th>
						<th>Rol</th>
						<th>Empleado</th>
						<th>Opciones</th>
					</thead>
					<tbody>
						<?php echo $lista_usuarios; ?>
					</tbody>
				</table>
			</div>
		  
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
<?php $this->load->view('footer');?>