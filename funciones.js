function tabla()
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"Mostrar"
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

function Eliminar(indice)
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			Eliminar: indice
		}});
	f.done(function(r) {
		alert("eliminado");
		tabla();
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
			dia: $("#dia").val(),
			mes: $("#mes").val(),
			ano: $("#ano").val(),
		}});
	f.done(function(r) {
		tabla();
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