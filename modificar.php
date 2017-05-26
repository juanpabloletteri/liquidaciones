
<section class="container">
	<div class="login">
		<h1>Modificacion de datos</h1>

		<form id="form" action="nexoadministrador.php" method="post" >
			<label>Numero de Liquidacion: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
			<input type="text" name="numero" id="numero" class="form-control">
			</div>
			<br>
			<label>Monto de liquidacion:</label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
			<input type="number" name="monto" id="monto" class="form-control"> 
			</div>
			<br>
			<label>Empresa: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<select name="empresa" id="empresa" class="form-control">
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
			</div>
			<br>
			<label>Fecha de Ingreso: </label>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			<input type="date" name="fecha" id="fecha"  class="form-control">
			<input type="hidden" name="" id="id" >
			</div>
			<br>
				<button type="button" class="btn btn-success" onclick="modificarOK()"><span class="glyphicon glyphicon-share"></span> Guardar cambios </button>
				<button type="button" class="btn btn-danger" onclick="volver()"><span class="glyphicon glyphicon-remove"></span> Cancelar</button>

		</form>
	</div>

<script>
	function volver(){
		window.location.assign("todos.php");
	}
</script>

</section>
