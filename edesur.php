<html>
<head>

	<title>LIQUIDACIONES - EDESUR</title>
  <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/style.css">


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
		<h1>Ingreso de datos - EDESUR</h1>

		<form id="form" action="nexoadministrador.php" method="post" >
			<input type="text" name="monto" id="monto" placeholder="Total liquidacion"> (Ingresar sin $)
			<br>
			<br>
			<label>Empresa: </label>
			<select name="empresa" id="empresa">
				<option value="EdesurAlta">Edesur Alta</option>
				<option value="EdesurMantenimiento">Edesur Mantenimiento</option>
				<option value="EdesurMediaBaja">Edesur Media y Baja</option>
				<option value="EdesurTelecomunicaciones">Edesur Telecomunicaciones</option>
				<option value="Otros">Otros</option>
			</select>
			<br>
			<br>

			<label>Dia: </label>
				<select name="dia" id="dia" style='width:15%'>
		        <?php
		        for ($i=1; $i<=31; $i++) {
		            if ($i == date('j'))
		                echo '<option value="'.$i.'" selected>'.$i.'</option>';
		            else
		                echo '<option value="'.$i.'">'.$i.'</option>';
		        }
		        ?>
			</select>
			

			<label>Mes: </label>
			<select name="mes" id="mes"  style='width:15%'>
		        <?php
		        for ($i=1; $i<=12; $i++) {
		            if ($i == date('m'))
		                echo '<option value="'.$i.'" selected>'.$i.'</option>';
		            else
		                echo '<option value="'.$i.'">'.$i.'</option>';
		        }
		        ?>
			</select>
			

			<label>Año: </label>
			<select name="ano" id="ano" style='width:20%'>
		        <?php
		        for($i=date('o'); $i>=2010; $i--){
		            if ($i == date('o'))
		                echo '<option value="'.$i.'" selected>'.$i.'</option>';
		            else
		                echo '<option value="'.$i.'">'.$i.'</option>';
		        }
		        ?>
			</select>
			<br>
			<br>
				<button type="button" class="round medium blue button" onclick="agregar(1)">Agregar</button>
		</form>
	</div>
	<div class="login-help">
		<p><a href="index.html" style="font-size: 15px">Volver al Inicio</a></p>
	</div>

</section>


<div>
	<form action="nexoadministrador.php" method="post">
		<section class="container">
			<div class="login">
				<h1>Resumen Liquidaciones - EDESUR</h1>
				<button type="button" class="round medium blue button" onclick="tabla(1)">Mostrar</button>
			</div>
				<div class="login" id="tablapersonas">
			</div>	


		</section>
	</form>
</div>


</body>
</html>