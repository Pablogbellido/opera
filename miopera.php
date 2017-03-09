<?php
		$con = new mysqli("localhost", "root", "patata2017", "opera");

	$con->query("set names utf8");
	$query = "SELECT opera.nombre as opera, autor.nombre as autor, lugar_estreno, fecha_estreno, idioma, sinopsis, video
	from opera 
	join autor on autor_idautor = idautor
	where idopera = $_GET[id]";

	$result = $con->query($query);
	//$outp = array();
	$outp = $result->fetch_all(MYSQLI_ASSOC);

	echo json_encode($outp);

	$con->close();

?>
