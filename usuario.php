<?php

class Usuario
{
	public $usuario;
	public $mail;
	public $pass;


	function __construct($usuario, $mail, $pass)
	{
		$this->usuario=$usuario;
		$this->mail=$mail;
		$this->pass=$pass;
	}

public static function Guardar($usuario, $mail, $pass)
{
	$file=fopen("usuarios.txt","a");
	fwrite($file,$usuario.",".$mail.",".$pass."\n");
	fclose($file);
}

public static function Buscar($usuario, $pass, $grupo)
{
	$todos = file("usuarios.txt", FILE_IGNORE_NEW_LINES + FILE_SKIP_EMPTY_LINES);
	var_dump($todos);

	foreach ($todos as $uno)
	{
		if ($uno==($usuario.",".$pass))
		{
			$fecha=date("Y-m-d H:i:s");
			$file=fopen("log.txt","a");
			fwrite($file,$usuario."   ".$grupo."   ".$fecha."\n");
			fclose($file);
			return true;
		}
	}
		$fecha=date("Y-m-d H:i:s");
		$file=fopen("logFail.txt","a");
		fwrite($file,$usuario."   ".$grupo."   ".$fecha."\n");
		fclose($file);
	return false;

}




}


?>