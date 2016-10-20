<?php

class Persona
{
	/*public $nombre;
	public $edad;
	public $cargo;
	public $sexo;
	public $liberado;

	function __construct($nombre, $edad, $cargo, $sexo, $liberado)
	{
		$this->nombre=$nombre;
		$this->edad=$edad;
		$this->cargo=$cargo;	
		$this->sexo=$sexo;	
		$this->liberado=$liberado;			
	}*/

public static function Guardar($empresa, $monto, $dia, $mes, $ano)
{
	$file=fopen("personas.txt","a");
	fwrite($file, $empresa."-".$monto."-".$dia."-".$mes."-".$ano."\n");
	fclose($file);
}

public static function LeerPersonas()
{
	$tabla="<table style='width:100%' ><tr><th>Empresa</th><th>Monto</th><th>Dia</th><th>Mes</th><th>Año</th><th>Eliminar</th></tr>";
	if (file_exists("personas.txt"))
	{	
		$cont=0;
		$archivo=fopen("personas.txt","r");
		while (!(feof($archivo)))
		{
			
			$aux=fgets($archivo);
			$datos=explode("-", $aux);
			$datos[0] = trim($datos[0]);
			if($datos[0] != "")
			{
				$tabla.="<tr><td>".$datos[0]."</td><td>$".$datos[1]."</td><td>".$datos[2]."</td><td>".$datos[3]."</td><td>".$datos[4]."</td>
								<td><input type='button' class='round medium orange button' value='Eliminar' id='btnEliminar' onclick='Eliminar($cont)'/>
								<!-- 
								<input type='button' class='round medium green button' value='Modificar' id='btnModificar' onclick='Modificar($cont)' /></td>
								-->
				</tr>";
			}
			$cont++;
		}
	}
	$tabla.="</table>";
	return $tabla;
}

public static function BorrarPersonas($ruta)
{
	if (file_exists($ruta))
	{
		unlink($ruta); 
	}
}

public static function Eliminar($indice)
{
 	//cargo todos los datos a un array
 	$lista=array();
 	$lista=Persona::TraerTodos();
	//elimino el archivo para despues volver a escribirlo
	if (file_exists("personas.txt"))
	{
		unlink("personas.txt"); 
	}
	//borro en indice del array
	unset($lista[$indice]);
	//reescribo el archivo de texto
	$file=fopen("personas.txt","a");
	foreach ($lista as $aux)
	{
		//Persona::Guardar($aux->nombre,$aux->edad,$aux->cargo,$aux->sexo);
		fwrite($file, $aux->nombre.",".$aux->edad.",".$aux->cargo.",".$aux->sexo.",".$aux->liberado);
	}
	fclose($file);

}

 public static function TraerTodos()
 {
 	$lista=array();
	if (file_exists("personas.txt"))
	{
		$file=fopen("personas.txt","r");	
	}
	while (!(feof($file)))
	{
		$aux=fgets($file);
		$unaPersona=explode("-", $aux);
		$unaPersona[0]=trim($unaPersona[0]);
		if ($unaPersona[0]!="")
		{
			$lista[]=new Persona($unaPersona[0],$unaPersona[1],$unaPersona[2],$unaPersona[3],$unaPersona[4]);
		}
		
	}
	fclose($file);
	return $lista;
 }



}


?>