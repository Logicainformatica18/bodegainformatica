<?php
if (!class_exists("connection"))
{
  include ("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : "";
$criterio = isset($_POST['criterio']) ? $_POST['criterio'] : "";


class aula 
{


  public function aulaSelect()
  {
    $con = new connection();
    //consulta todos los empleados
    $sql = mysqli_query($con->open(), "SELECT * FROM aula order by descripcion asc");
?>
    <table class="striped responsive-table">
      <tr>
        <th>Código</th>
        <th>descripcion</th>
        <th>Opción</th>
        <th>Opción</th>
      </tr>
      <?php
      while ($row = mysqli_fetch_array($sql)) {
        echo "<tr>";
        $aulaid = $row[0];
        echo "<td>" .  $aulaid . "</td>";
        echo "<td>" . $row[1] . "</td>";
      ?>
        <!-- Modal Trigger -->
        <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="aulaSelectOne('<?php echo $aulaid ?>'); aulaCancelar(); return false">Seleccionar</a></td>
        <td><a class="waves-effect waves-light btn red" href="" onclick="aulaDelete('<?php echo $aulaid ?>');  return false">Eliminar</a></td>
      <?php
        echo "</tr>";
      }
      ?>
    </table>
<?php
  }
  public function aulaDelete($codigo)
  {
    $con = new connection();
    //registra los datos del empleados
    $sql = "DELETE FROM aula where cod_aula='$codigo';";
    if (mysqli_query($con->open(), $sql)) {
    } else {
    }
    $this->aulaSelect();
  }
  public function aulaInsert($descripcion)
  {
    $con = new connection();
    //registra los datos del aula
    $sql = "INSERT INTO aula (descripcion) VALUES ('$descripcion')";
    mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->aulaSelect();
  }
  public function aulaSelectOne($codigo)
  {
    $con = new connection();
    //registra los datos del empleados
    $sql = mysqli_query($con->open(), "SELECT * from aula  where cod_aula ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["cod_aula"];
    $aula = $r["descripcion"];
    echo "<script>
      aula.codigo.value='$codigo';
      aula.descripcion.value='$aula';
      </script>";
    $this->aulaSelect();
  }
  public function aulaUpdate($codigo, $descripcion)
  {
    $con = new connection();
    //si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
    // ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
    $sql = "UPDATE aula set descripcion='$descripcion' where cod_sublinea='$codigo'";
    mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
        aula.codigo.value='$codigo';
        aula.descripcion.value='$descripcion';
        </script>";
    $this->aulaSelect();
  }
  public function aulaSearch($criterio)
	{
		$con = new connection();
		//consulta todos los aula
		$sql = mysqli_query($con->open(), "SELECT * FROM aula where descripcion like '%$criterio%' order by descripcion asc;  ");
		echo "
		<table class='striped responsive-table'>
		  <tr>
      <th>Código</th>
      <th>descripcion</th>
      <th>Opción</th>
			<th>Opción</th>
		  </tr>";
		while ($row = mysqli_fetch_array($sql)) {
			echo "<tr>";
			$cod_aula = $row[0];
			echo "<td>" .  $row[0] . "</td>";
			echo "<td>" .  $row[1] . "</td>";
		?>
			<!-- Modal Trigger -->
			<td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="aulaSelectOne('<?php echo $cod_aula ?>'); aulaCancelar();  return false">Seleccionar</a></td>
			<td><a class="waves-effect waves-light btn red" href="" onclick="aulaDelete('<?php echo $cod_aula ?>'); return false">Eliminar</a></td>
<?php
			echo "</tr>";
		}

		echo "</table>";
  }
 
}

$aula = new aula();
if ($metodo == "delete") {
  $aula->aulaDelete($codigo);
} elseif ($metodo == "insert") {
  $aula->aulaInsert($descripcion);
} elseif ($metodo == "select") {
  $aula->aulaSelectOne($codigo);
} elseif ($metodo == "update") {
  $aula->aulaUpdate($codigo, $descripcion);
}
elseif ($metodo == "search") {
  $aula->aulaSearch($criterio);
}
