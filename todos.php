<html>
<head>

	<title>LIQUIDACIONES - TODOS</title>
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

		<div class="login-help">
		<p><a href="index.html" style="font-size: 15px">Volver al Inicio</a></p>
	</div>
</section>
<div>
	<form action="nexoadministrador.php" method="post">
		<section class="container">
			<div class="login">
				<h1>Resumen Liquidaciones - TODOS</h1>
				<button type="button" class="round medium blue button" onclick="tabla(0)">Mostrar</button>
			</div>
			
			<div class="login" id="tablapersonas">
			</div>	

		</section>
	</form>
</div>


</body>
</html>