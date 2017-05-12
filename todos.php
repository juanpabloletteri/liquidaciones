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
	<link rel="icon" href="./dist/favicon.ico">
  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="./funciones.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>



</head>
<body>
			
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" >Bienvenido/a <?php 	echo($_SESSION['usuario']) ?></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="todos.php">TODOS</a></li>
		<li><a href="aysa.php">AYSA</a></li>
        <li><a href="edesur.php">EDESUR</a></li>
        <li><a href="metrogas.php">METROGAS</a></li>
		<li><a href="telecomunicaciones.php">TELECOMUNICACIONES</a></li>
      </ul>
	  
      <ul class="nav navbar-nav navbar-right">
        <li><a onclick="salir()" href="#"><span class="glyphicon glyphicon-log-in"></span>  Cerrar sesion</a></li>
      </ul>
    </div>
  </div>
</nav>
			

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
						<option value="AySA">AySA</option>
						<option value="OtrosAySA">Otros AySA</option>
						</optgroup>

			        </select>
							
			        <?php 
					if ($_SESSION['admin']==1)
					{
						echo('<button type="button" class="btn btn-success" onclick="impagasAdmin()">Impagas</button>');
						echo('<button type="button" class="btn btn-success" onclick="archivadosAdmin()">Archivados</button>');
						echo('<button type="button" class="btn btn-danger" onclick="historialLoginAdmin()">Login</button>');
						echo('<button type="button" class="btn btn-danger" onclick="historialLoginFailAdmin()">Login Fail</button>');
						echo('<button type="button" class="btn btn-danger" onclick="eliminadas()">Eliminadas</button>');
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