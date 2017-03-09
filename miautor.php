<?php
		$con = new mysqli("localhost", "root", "patata2017", "opera");


$con->query("set names utf8");
/*
$query = "SELECT opera.nombre as opera, autor.nombre as autor, lugar_estreno, fecha_estreno, idioma, sinopsis, video
	from opera
	join autor on autor_idautor = idautor
	where idopera = $_GET[id]";
*/

$query2 ="SELECT o.nombre  opn, o.sinopsis osin, a.idautor, a.nombre, a.lugar_nacimiento, a.fecha_nacimiento, a.fecha_defuncion, a.lugar_defuncion
	from autor a, opera o
	WHERE a.idautor = $_GET[id] and o.autor_idautor = $_GET[id]";


$result = $con->query($query2);
	$outp = array();
	$outp = $result->fetch_all(MYSQLI_ASSOC);

	echo json_encode($outp);

	$con->close();

?>
