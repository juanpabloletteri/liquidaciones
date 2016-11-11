<?php
require ("usuario.php");
require ("persona.php");
require ("./clases/AccesoDatos.php");

////////////INRGESO/////////////////
if (isset($_POST['boton'], $_POST['usuario'],$_POST['pass']))
{
	if ($_POST['boton']=="Ingresar")
	{
		if (Usuario::Buscar($_POST['usuario'],$_POST['pass']))
		{
			header("Location: derivacion.php");
		}
		else
		{
			header("Location: index.html");
		}
	}
	elseif ($_POST['boton']=="Crear Cuenta") 
	{
		Usuario::Guardar($_POST['usuario'],$_POST['pass']);
		header("Location: index.html");
	}
}
//////////////////DERIVACION/////////////////////////////
if ($_POST['boton']=="Ir")
{
			if ($_POST['grupo']=="edesur")
			{
				header("Location: edesur.php");
			}
			elseif ($_POST['grupo']=="metrogas")
			{
				header("Location: metrogas.php");
			}
			elseif ($_POST['grupo']=="telecomunicaciones")
			{
				header("Location: telecomunicaciones.php");
			}
			elseif ($_POST['grupo']=="todos")
			{
				header("Location: todos.php");
			}
			var_dump($_POST);
}
////////////////////INRGESO///////////////////
if (isset($_POST['boton']))
{
	if ($_POST['boton']=="Agregar") 
	{
		//echo("agregaaaaa");
		persona::Guardar($_POST['empresa'],$_POST['monto'],$_POST['fecha']);
	}

	if ($_POST['boton']=="Mostrar") 
	{
		//echo("muestraaaa");
		echo(persona::LeerPersonas($_POST['codigo'])) ;
	}

		if ($_POST['boton']=="Modificar") 
	{
		//echo("muestraaaa");
		echo(persona::LeerPersonas()) ;
	}

}

if (isset($_POST['borrar']))
{
	Persona::BorrarPersonas("personas.txt");
}

if (isset($_POST['Eliminar'], $_POST['codigo']))
{
	Persona::Eliminar($_POST['Eliminar'], $_POST['codigo']);
	//header("Location: paginadatos.php");
}

?>