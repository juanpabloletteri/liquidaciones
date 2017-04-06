<?php
session_start();
if (!isset($_SESSION['usuario']))
{
    header('location:index.html');
}
?>
<html>
<head>

	<title>EDESUR</title>

    <link rel="stylesheet" href="css/style.css">

  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="funciones.js"></script>
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
	<div class="login">
		<h1>Ingreso de datos - EDESUR</h1>

		<form id="form" action="nexoadministrador.php" method="post">
			<label>Numero de Liquidacion: </label>
			<input type="text" name="numero" id="numero" placeholder="Liquidacion Numero" class="form-control">
			<br>
			<label>Monto de liquidacion:</label>
			<input type="number" name="monto" id="monto" placeholder="Total liquidacion (Ingresar sin $)" class="form-control"> 
			<br>
			<label>Empresa: </label>
			<select name="empresa" id="empresa" class="form-control">
				<option value="EdesurAlta">Edesur Alta</option>
				<option value="EdesurMantenimiento">Edesur Mantenimiento</option>
				<option value="EdesurMediaBaja">Edesur Media y Baja</option>
				<option value="EdesurTelecomunicaciones">Edesur Telecomunicaciones</option>
				<option value="OtrosEdesur">Otros Edesur</option>
			</select>
			<br>
			<label>Fecha de Ingreso: </label>
			<input type="date" name="fecha" id="fecha"  class="form-control">
			
			<br>
				<button type="button" class="btn btn-success" onclick="agregar(1)">Agregar</button>
		</form>
	</div>
	<div class="login-help">
		<p><a href="derivacion.php" style="font-size: 15px">Volver atras</a></p>
	</div>

</section>


<div>
	<form action="nexoadministrador.php" method="post">
		<section class="container">
			<div class="login">
				<h1>Resumen Liquidaciones - EDESUR</h1>
				<select name="anio" id="anio" class="form-control">
					<option value="2017">2017	</option>
					<option value="2016">2016	</option>
				</select>
				<br>
				<button type="button"  class="btn btn-success" onclick="tabla(1)">Mostrar</button>
				<input type="hidden" id="subgrupo" value=1>
			</div>
				<div class="container" id="tablapersonas">
			</div>	


		</section>
	</form>
</div>


</body>
</html>