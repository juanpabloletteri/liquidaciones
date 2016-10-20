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

public static function Buscar($usuario, $pass)
{
	$todos = file("usuarios.txt", FILE_IGNORE_NEW_LINES + FILE_SKIP_EMPTY_LINES);
	var_dump($todos);

	foreach ($todos as $uno)
	{
		if ($uno==($usuario.",".$pass))
		{
			return true;
		}
	}
	return false;

}




}


?>