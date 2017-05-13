<?php
session_start();
if (!isset($_SESSION['usuario']))
{
    header('location:index.html');
}
?>
<html>
<head>

	<title>METROGAS</title>

    <link rel="stylesheet" href="css/style.css">
<link rel="icon" href="./dist/favicon.ico">
  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="funciones.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
<section class="container">
	<div class="login">
		<h1>Ingreso de datos - METROGAS - YPF</h1>

	<form id="form" action="nexoadministrador.php" method="post" >
			<label>Numero de Liquidacion: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
			<input type="text" name="numero" id="numero" placeholder="Liquidacion Numero" class="form-control">
			</div>
			<br>
			<label>Monto de liquidacion:</label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
			<input type="number" name="monto" id="monto" placeholder="Total liquidacion (Ingresar sin $)" class="form-control"> 
			</div>
			<br>
			<label>Empresa: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<select name="empresa" id="empresa" class="form-control">
				<option value="Cosugas">Cosugas</option>
				<option value="EmaServicios">Ema Servicios</option>
				<option value="Inarteco">Inarteco</option>
				<option value="YPF">YPF</option>
				<option value="OtrosGas">Otros Gas</option>
			</select>
			</div>
			<br>
			<label>Fecha de Ingreso: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			<input type="date" name="fecha" id="fecha"  class="form-control">
			</div>
			<br>
				<button type="button" class="btn btn-success" onclick="agregar(2)"><span class="glyphicon glyphicon-share"></span> Agregar </button>
		</form>
	</div>


</section>


<div>
	<form action="nexoadministrador.php" method="post">
		<section class="container">
			<div class="login">
				<h1>Resumen Liquidaciones - METROGAS</h1>
				<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
				<select name="anio" id="anio" class="form-control">
					<option value="2017">2017	</option>
					<option value="2016">2016	</option>
				</select>
				</div>
				<br>
				<button type="button" class="btn btn-success" onclick="tabla(2)"><span class="glyphicon glyphicon-list"></span> Lista </button>
				<input type="hidden" id="subgrupo" value=2>
			</div>
				<div class="container" id="tablapersonas">
			</div>	
		</section>
	</form>
</div>


</body>
</html>