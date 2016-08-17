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
				<div class="col-md-6">
					<input type="text" placeholder="USUARIO" class="form-control" required>
				</div>
				<div class="col-md-6">
					<input type="text" placeholder="USUARIO" class="form-control" required>
				</div>
			</div>
		  
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
<?php $this->load->view('footer');?>