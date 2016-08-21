<?php $this->load->view('header');?>
<?php $this->load->view('sidebar');;?>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
			<h1>USUARIO<small>Panel de Control</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Usuario</a></li>
				<li class="active">Principal</li>
			</ol>
        </section>
        <!-- Main content -->
        <section class="content">
			<div class="row">
				<div class="panel" >
					<div class="panel-heading" style="background-color:green;">
						<h3 class="panel-title" style="color:white;">Lista de Usuarios</h3> 
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-4">
								<a href="<?php echo base_url();?>usuario/nuevo"><input type="button" value="NUEVO USUARIO" class="btn btn-primary form-control"></a>
							</div>
						</div>
						<div class="row" style="padding-top:15px;">
							<table id="usuario_table" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
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
					</div>
				</div>
			</div>
        </section><!-- /.content -->
	</div><!-- /.content-wrapper -->
	<script src="<?php echo base_url();?>resources/plantilla/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url();?>resources/plantilla/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>resources/plantilla/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<link rel="stylesheet" href="<?php echo base_url();?>resources/plantilla/plugins/datatables/jquery.dataTables.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>resources/plantilla/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css">
	<script>
		$('#usuario_table').DataTable( {
			responsive: true,
			"oLanguage":{
				"oPaginate": {
				"sFirst": "<<",
				"sLast": ">>",
				"sNext": ">",
				"sPrevious": "<"},
				"sInfo": "Mostrando _END_ de _TOTAL_ usuarios",
				"sInfoEmpty": "No se encontraron usuarios para mostrar",
				"sLengthMenu": "Mostrar _MENU_ usuarios por p&aacute;gina",
				"sProcessing": "Se estan buscando todos los usuarios registrados",
				"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
				"sZeroRecords":    "No se encontraron resultados",
				"sSearch": "Buscar:"
			}
		} );
	</script>
<?php $this->load->view('footer');?>