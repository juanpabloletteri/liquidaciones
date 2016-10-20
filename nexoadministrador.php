<?php
require ("usuario.php");
require ("persona.php");

if (isset($_POST['usuario'],$_POST['pass']))
{
	if ($_POST['boton']=="Ingresar")
	{
		if (Usuario::Buscar($_POST['usuario'],$_POST['pass']))
		{
			header("Location: paginadatos.php");
			//echo("siiiii");
		}
		else
		{
			//echo("nooooo");
			header("Location: index.html");
		}
	}
	elseif ($_POST['boton']=="Crear Cuenta") 
	{
		Usuario::Guardar($_POST['usuario'],$_POST['pass']);
		header("Location: index.html");
	}

}

if (isset($_POST['boton']))
{
	if ($_POST['boton']=="Agregar") 
	{
		//echo("agregaaaaa");
		persona::Guardar($_POST['empresa'],$_POST['monto'],$_POST['dia'],$_POST['mes'],$_POST['ano']);
		header("Location: paginadatos.php");
	}

	if ($_POST['boton']=="Mostrar") 
	{
		//echo("muestraaaa");
		echo(persona::LeerPersonas()) ;
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

if (isset($_POST['Eliminar']))
{
	Persona::Eliminar($_POST['Eliminar']);
	//header("Location: paginadatos.php");
}

?>