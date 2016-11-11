function tabla(cod)
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"Mostrar",
				codigo: cod,
			}
		}
	);
	f.done
	(
		function(algo) 
		{
			$("#tablapersonas").html(algo);
		}
	);	
}

function borrar()
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			borrar:"true"
		}});
	f.done(function(r) {
		tabla();
		$("#tabla").html("");});	
}

function Eliminar(indice, cod)
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			Eliminar: indice,
			codigo:cod,
		}});
	f.done(function(r) {
		alert("eliminado");
		tabla(cod);
		$("#tabla").html("");});	
}

function agregar()
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			boton: "Agregar",
			monto: $("#monto").val(),
			empresa: $("#empresa").val(),
			fecha: $("#fecha").val(),
		}});
	f.done(function(r) {
		//tabla(cod);
		swal("Liquidacion ingresada exitosamente", "", "success");
		//alert("LLEGO 2");
		$("#tabla").html("");});	
}

function Modificar(indice)
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			Modificar: indice
		}});
	f.done(function(r) {
		tabla();
		$("#tabla").html("");});	
}