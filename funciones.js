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
				anio:$("#anio").val(),
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
				anio:$("#anio").val().concat($("#mes").val()),
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
function archivados(cod)
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"archivados",
				anio:$("#anio").val().concat($("#mes").val()),
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
		swal({
			title: "Confirmacion",
			text: "Desea marcar como cobrada esta liquidacion?",
			type: "warning",
			showCancelButton: true,
			confirmButtonClass: "btn-danger",
			confirmButtonText: "Si, cobrar!",
			closeOnConfirm: false
			},
			function(){
				$.ajax({
				url:"nexoadministrador.php",
				type:"post",
				data:{
					Eliminar: indice
				}})
			swal("Cobrada!", "Se ha cobrado la liquidacion.", "success");
			tabla($("#subgrupo").val());
			$("#tabla").html("")
			});	
	
	
}

function EliminarDefinitivo(indice)
{
		swal({
			title: "Confirmacion",
			text: "Desea borrar esta liquidacion?",
			type: "warning",
			showCancelButton: true,
			confirmButtonClass: "btn-danger",
			confirmButtonText: "Si, borrar!",
			closeOnConfirm: false
			},
			function(){
				$.ajax({
				url:"nexoadministrador.php",
				type:"post",
				data:{
					EliminarDefinitivo: indice
				}})
			swal("Borrada!", "Se ha borrado la liquidacion.", "success");
			tabla($("#subgrupo").val());
			$("#tabla").html("")
			});
	
}
function EliminarLogin(indice)
{
	var f=$.ajax({
		url:"nexoadministrador.php",
		type:"post",
		data:{
			EliminarLogin: indice
		}});
	
	f.done(function(r) {
		swal("Ingreso eliminado exitosamente", "", "success");
		historialLoginAdmin();
		/*tabla($("#subgrupo").val());
		$("#tabla").html("");*/});	
}
function agregar(grupo)
{
	////////////////////////////////////////////////////////////////////////////////////
		swal({
			title: "Confirmacion",
			text: "Desea agregar esta liquidacion?",
			type: "warning",
			showCancelButton: true,
			confirmButtonClass: "btn-danger",
			confirmButtonText: "Si, agregar!",
			closeOnConfirm: false
			},
			function(){
				$.ajax({
				url:"nexoadministrador.php",
				type:"post",
				data:{
					boton: "Agregar",
					numero: $("#numero").val(),
					monto: $("#monto").val(),
					empresa: $("#empresa").val(),
					fecha: $("#fecha").val(),
					grupo: grupo,
				}})
			tabla(grupo);
			swal("Agregada!", "Se ha agregado la liquidacion.", "success");
			$("#tabla").html(""),
			$("#numero").val(""),
			$("#monto").val("")
			});	


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

function salir()
{
	var f=$.ajax(
		{
			url: "nexoadministrador.php",
			type: "post",
			data:
			{
				boton: "salir"
			}

		}
	);
	f.done (function(salir)
		{
			if (salir=="salir")
			{
				window.location.href = "index.html";
			}

			
		});
}

function impagasAdmin()
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"impagasAdmin",
				anio:$("#anio").val().concat($("#mes").val()),
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
function archivadosAdmin()
{
	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"archivadosAdmin",
				anio:$("#anio").val().concat($("#mes").val()),
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

	function historialLoginAdmin(){

	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"historialLoginAdmin",
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

function historialLoginFailAdmin(){

	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"historialLoginFailAdmin",
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

function eliminadas(){

	var f=$.ajax
	(
		{
			url:"nexoadministrador.php",
			type:"post",
			data:
			{
				boton:"eliminadas",
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