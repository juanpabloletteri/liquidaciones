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
  <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/style.css">

  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="./funciones.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<style>
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	    padding: 4px;
	    text-align: center;
		  background: #eee;
		  background: rgba(250, 250, 250, 0.8);
		  border-radius: 4px;
		  background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
		  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
		  background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
		  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
		   -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
  			box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
	}
	select {
    width: 40%;
    padding: 5px 10px;
    border: none;
    border-radius: 8px;
    background-color: #f1f1f1;
	}
	</style>

</head>
<body>
			<div class="login">
				<h1>Bienvenido/a <?php 	echo($_SESSION['usuario']) ?></h1>
				<button type="button" class="round medium green button" onclick="salir()">Cerrar sesion</button>
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
			        <select name="grupo" id="grupo">

						<option value="todos">TODAS LAS EMPRESAS</option>

						<option value="EdesurAlta">Edesur Alta</option>
						<option value="EdesurMantenimiento">Edesur Mantenimiento</option>
						<option value="EdesurMediaBaja">Edesur Media y Baja</option>
						<option value="EdesurTelecomunicaciones">Edesur Telecomunicaciones</option>
						<option value="OtrosEdesur">Otros Edesur</option>

						<option value="Cosugas">Cosugas</option>
						<option value="EmaServicios">Ema Servicios</option>
						<option value="Inarteco">Inarteco</option>
						<option value="YPF">YPF</option>
						<option value="OtrosGas">Otros Gas</option>

						<option value="Cablevision">Cablevision</option>
						<option value="Metrotel">Metrotel</option>				
						<option value="Telefonica">Telefonica</option>
						<option value="Telecentro">Telecentro</option>
						<option value="Telmex">Telmex</option>
						<option value="Telecom">Telecom</option>
						<option value="OtrosTelecomunicaciones">Otros Telecomunicaciones</option>

						<option value="CosugasAysa">Cosugas Aysa</option>
						<option value="OtrosAySA">Otros AySA</option>

			        </select>
			        <?php 
					if ($_SESSION['admin']==1)
					{
						echo('<button type="button" class="round medium purple button" onclick="impagasAdmin()">Impagas</button>');
						echo('<button type="button" class="round medium purple button" onclick="archivadosAdmin()">Archiv</button>');
					}
				?>
			       


				<br><br>
				<label>Año:</label>
				<select name="anio" id="anio">
					<option value="2017">2017	</option>
					<option value="2016">2016	</option>
				</select>

				<label>Mes:</label>
				<select name="mes" id="mes">
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

 				<br><br>
 				
				<button type="button" class="round medium blue button" onclick="tablaTodos(0)">Impagas</button>

				<button type="button" class="round medium blue button" onclick="archivados(0)">Archivadas</button>

				<input type="hidden" id="subgrupo" value=0>
			</div>
			
			<div class="login" id="tablapersonas">
			</div>	

		</section>
	</form>
</div>


</body>
</html>