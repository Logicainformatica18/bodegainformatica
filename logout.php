<?php
session_start();
session_destroy();
// header  redirecciona a una pagina
header('Location: login.php');

?>