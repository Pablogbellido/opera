<?php
$con = new mysqli("localhost", "root", "patata2017", "opera");

$con->query("set names utf8");
$query = "select idautor, nombre from autor order by nombre";


$result = $con->query($query);

$outp = array();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);


$con->close();

?>
