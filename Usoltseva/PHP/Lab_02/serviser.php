<?php
$date = $_POST['date'];
$str = file_get_contents('./tmpl/' . $date . '.txt');
$temp = explode(";", $str);
echo json_encode($temp);
 
?>