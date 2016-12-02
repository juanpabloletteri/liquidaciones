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
				grupo: cod,
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

function tablaTodos(cod)
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"MostrarTodos",
				grupo: $("#grupo").val(),
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
		tabla(cod);
		$("#tabla").html("");});	
}

function agregar(grupo)
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			boton: "Agregar",
			monto: $("#monto").val(),
			empresa: $("#empresa").val(),
			fecha: $("#fecha").val(),
			grupo: grupo,
		}});
	f.done(function(r) {
		tabla(grupo);
		swal("Liquidacion ingresada exitosamente", "", "success");
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