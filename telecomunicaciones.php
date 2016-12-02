<html>
<head>

	<title>LIQUIDACIONES - EDESUR</title>
  <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/style.css">

  <script src="./dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="./dist/sweetalert.css">

	  <script src="funciones.js"></script>
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
    width: 50%;
    padding: 5px 10px;
    border: none;
    border-radius: 8px;
    background-color: #f1f1f1;
	}
	</style>

</head>
<body>

<section class="container">
	<div class="login">
		<h1>Ingreso de datos - Telecomunicaciones</h1>

		<form id="form" action="nexoadministrador.php" method="post" >
			<input type="number" name="monto" id="monto" placeholder="Total liquidacion"> (Ingresar sin $)
			<br>
			<br>
			<label>Empresa: </label>
			<select name="empresa" id="empresa">
				<option value="Cablevision">Cablevision</option>
				<option value="Metrotel">Metrotel</option>				
				<option value="Telefonica">Telefonica</option>
				<option value="Telecentro">Telecentro</option>
				<option value="Telmex">Telmex</option>
				<option value="OtrosTelecomunicaciones">Otros Telecomunicaciones</option>
			</select>
			<br>
			<br>
			<label>Fecha de Ingreso: </label>
			<input type="date" name="fecha" id="fecha">

			<br>
			<br>
				<button type="button" class="round medium blue button" onclick="agregar(3)">Agregar</button>
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
				<h1>Resumen Liquidaciones - Telecomunicaciones</h1>
				<button type="button" class="round medium blue button" onclick="tabla(3)">Mostrar</button>
			</div>
				<div class="login" id="tablapersonas">
			</div>	


		</section>
	</form>
</div>


</body>
</html>