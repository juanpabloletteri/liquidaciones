<?php
session_start();
if (!isset($_SESSION['usuario']))
{
    header('location:index.html');
}
?>
<html>
<head>

	<title>LIQUIDACIONES - TODOS</title>

    <link rel="stylesheet" href="css/style.css">

  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="./funciones.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>
			<div class="login">
				<h1>Bienvenido/a <?php 	echo($_SESSION['usuario']) ?></h1>
				<button type="button" class="btn btn-danger" onclick="salir()">Cerrar sesion</button>
			</div>
<section class="container">

		<div class="login-help">
			<div class="login-help">
		<p><a href="derivacion.php" style="font-size: 15px">Volver atras</a></p>
	</div>
	</div>
</section>
<div>
	<form action="nexoadministrador.php" method="post">
		<section class="container">
			<div class="login">
				<h1>Resumen Liquidaciones - TODOS</h1>
					<label>Empresa: </label>
			        <select name="grupo" id="grupo" class="form-control" >

						<option value="todos">TODAS LAS EMPRESAS</option>

						<optgroup label="EDESUR">
						<option value="EdesurAlta">Edesur Alta</option>
						<option value="EdesurMantenimiento">Edesur Mantenimiento</option>
						<option value="EdesurMediaBaja">Edesur Media y Baja</option>
						<option value="EdesurTelecomunicaciones">Edesur Telecomunicaciones</option>
						<option value="OtrosEdesur">Otros Edesur</option>
						</optgroup>

						<optgroup label="METROGAS - YPF">
						<option value="Cosugas">Cosugas</option>
						<option value="EmaServicios">Ema Servicios</option>
						<option value="Inarteco">Inarteco</option>
						<option value="YPF">YPF</option>
						<option value="OtrosGas">Otros Gas</option>
						</optgroup>

						<optgroup label="TELECOMUNICACIONES">
						<option value="Cablevision">Cablevision</option>
						<option value="Metrotel">Metrotel</option>				
						<option value="Telefonica">Telefonica</option>
						<option value="Telecentro">Telecentro</option>
						<option value="Telmex">Telmex</option>
						<option value="Telecom">Telecom</option>
						<option value="OtrosTelecomunicaciones">Otros Telecomunicaciones</option>
						</optgroup>

						<optgroup label="AySA">
						<option value="CosugasAysa">Cosugas Aysa</option>
						<option value="OtrosAySA">Otros AySA</option>
						</optgroup>

			        </select>
							
			        <?php 
					if ($_SESSION['admin']==1)
					{
						echo('<button type="button" class="btn btn-success" onclick="impagasAdmin()">Impagas</button>');
						echo('<button type="button" class="btn btn-success" onclick="archivadosAdmin()">Archiv</button><br>');
					}
				?>
			       
				<br>
				<label>Año:</label>
				<select name="anio" id="anio" class="form-control">
					<option value="2017">2017	</option>
					<option value="2016">2016	</option>
				</select>

				<label>Mes:</label>
				<select name="mes" id="mes" class="form-control">
					<option value="-">TODOS</option>
					<option value="-01">Enero</option>
					<option value="-02">Febrero</option>
					<option value="-03">Marzo</option>
					<option value="-04">Abril</option>
					<option value="-05">Mayo</option>
					<option value="-06">Junio</option>
					<option value="-07">Julio</option>
					<option value="-08">Agosto</option>
					<option value="-09">Septiembre</option>
					<option value="-10">Octubre</option>
					<option value="-11">Noviembre</option>
					<option value="-12">Diciembre</option>
				</select>

 				<br>
 				
				<button type="button" class="btn btn-primary" onclick="tablaTodos(0)">Impagas</button>

				<button type="button" class="btn btn-primary" onclick="archivados(0)">Archivadas</button>

				<input type="hidden" id="subgrupo" value=0>
			</div>
			
			<div class="container" id="tablapersonas">
			</div>	

		</section>
	</form>
</div>


</body>
</html>