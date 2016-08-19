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
            <li class="active">Nuevo</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
			<div class="row">
				<div class="panel" >
					<div class="panel-heading" style="background-color:#0080FF">
						<h3 class="panel-title" style="color:white;">Lista</h3> 
					</div>
					<div class="panel-body">
						<div class="row">
							<form data-toggle="validator" role="form">
								<div class="col-md-6">
									<div class="form-group">
										<label for="for_name">Rol</label>
										<input type="text" placeholder="Usuario" class="form-control" required>
									</div>
									<div class="form-group">
										<label for="for_name">Usuario</label>
										<input type="text" placeholder="Usuario" class="form-control" required>
									</div>
									
									<div class="form-group">
										<label for="for_name">Empleado</label>
										<input type="text" placeholder="Usuario" class="form-control" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="password" data-minlength="6" class="form-control" id="Password" placeholder="Password" required>
										<div class="help-block">Minimo de 6 caracteres</div>
									</div>
									<div class="form-group">
										<input type="password" class="form-control" id="RePassword" data-match="#Password" data-match-error="Oops, password no coincide" placeholder="Confirmar Password" required>
										<div class="help-block with-errors"></div>
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-success form-control" value="Guardar">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
        </section><!-- /.content -->
	</div><!-- /.content-wrapper -->
	<script src="<?php echo base_url();?>resources/bootstrap-validator-master/dist/validator.min.js"></script>
<?php $this->load->view('footer');?>