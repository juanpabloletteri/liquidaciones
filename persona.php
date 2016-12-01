<?php

class Persona
{
	public $empresa;
	public $monto;
	public $fecha;
	public $grupo;

	/*function __construct($nombre, $edad, $cargo, $sexo, $liberado)
	{
		$this->nombre=$nombre;
		$this->edad=$edad;
		$this->cargo=$cargo;	
		$this->sexo=$sexo;	
		$this->liberado=$liberado;			
	}*/
public static function AsignarRuta($codigo)
{
	if ($codigo==1)
	{
		$ruta="empresas/edesur.txt";
	}
	elseif ($codigo==2)
	{
		$ruta="empresas/metrogas.txt";
	}
	elseif ($codigo==3)
	{
		$ruta="empresas/telecomunicaciones.txt";
	}
	return $ruta;
}


public static function Guardar($empresa, $monto, $fecha, $grupo)
{
	$objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
	$consulta =$objetoAccesoDato->RetornarConsulta("
		INSERT into 
		empresas (empresa, grupo, fecha, monto)
		values(:empresa, :grupo, :fecha, :monto)"
		);
	$consulta->bindValue(':empresa',$empresa, PDO::PARAM_STR);
	$consulta->bindValue(':grupo',$grupo, PDO::PARAM_STR);
	$consulta->bindValue(':fecha',$fecha, PDO::PARAM_STR);
	$consulta->bindValue(':monto',$monto, PDO::PARAM_STR);	
	$consulta->execute();
}

public static function LeerPersonas($codigo)
{
	if ($codigo!=0)
	{
		
		$objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
		$consulta =$objetoAccesoDato->RetornarConsulta("select * from empresas where grupo = :grupo");
		$consulta->bindValue(':grupo',$codigo, PDO::PARAM_STR);
		$consulta->execute();			
		$array= $consulta->fetchAll(PDO::FETCH_CLASS, "persona");	

		$tabla= "<table class='table table-hover table-responsive'>
				<thead>
					<tr>
						<th>  Empresa   </th>
						<th>  Fecha Liquidacion   </th>	
						<th>  Monto Liquidacion  </th>
						<th>  Accion  </th>	
						<th>  Dias impagos  </th>				
					</tr> 
				</thead>";   	

			foreach ($array as $personaAux)
			{
				$tiempo=round((strtotime('now') - strtotime($personaAux->fecha))/60/60/24);
				$tabla.= " 	<tr>
							<td>".$personaAux->empresa."</td>
							<td>".$personaAux->fecha."</td>
							<td>$ ".$personaAux->monto."</td>
							<td><input type='button' class='round medium orange button' value='Eliminar' id='btnEliminar' onclick='Eliminar($personaAux->id)'/>
							
							<input type='button' class='round medium green button' value='Modificar' id='btnModificar' onclick='Modificar($personaAux->id)' /></td>

							<td>".$tiempo."</td>

						</tr>";
			}	
		$tabla.= "</table>";
	}

	//////////////////////////////////////TODAS LAS EMPRESAS////////////////////////////////////
	else
	{
		$objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
		$consulta =$objetoAccesoDato->RetornarConsulta("select * from empresas ");
		$consulta->execute();			
		$array= $consulta->fetchAll(PDO::FETCH_CLASS, "persona");	

		$tabla= "<table class='table table-hover table-responsive'>
				<thead>
					<tr>
						<th>  Empresa   </th>
						<th>  Fecha   </th>	
						<th>  Monto Liquidacion  </th>				
					</tr> 
				</thead>";   	

			foreach ($array as $personaAux)
			{
				$tabla.= " 	<tr>
							<td>".$personaAux->empresa."</td>
							<td>".$personaAux->fecha."</td>
							<td>$ ".$personaAux->monto."</td>
						</tr>";
			}	
		$tabla.= "</table>";
	}
	//////////////////////////////////////////////////////////////////////////
	return $tabla;
}

public static function BorrarPersonas($ruta)
{
	if (file_exists($ruta))
	{
		unlink($ruta); 
	}
}

public static function Eliminar($indice, $codigo)
{
 	$ruta=Persona::AsignarRuta($codigo);
 	//cargo todos los datos a un array
 	$lista=array();
 	$lista=Persona::TraerTodos($ruta);
	//elimino el archivo para despues volver a escribirlo
	if (file_exists($ruta))
	{
		unlink($ruta); 
	}
	//borro en indice del array
	unset($lista[$indice]);
	//reescribo el archivo de texto
	$file=fopen($ruta,"a");
	foreach ($lista as $aux)
	{
		//Persona::Guardar($aux->nombre,$aux->edad,$aux->cargo,$aux->sexo);
		fwrite($file, $aux->nombre."-".$aux->edad."-".$aux->cargo."-".$aux->sexo."-".$aux->liberado);
	}
	fclose($file);

}

 public static function TraerTodos($ruta)
 {
 	$lista=array();
	if (file_exists($ruta))
	{
		$file=fopen($ruta,"r");	
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