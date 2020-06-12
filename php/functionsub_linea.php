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



class sub_linea extends connection
{
  // public function mostrar(){
  //    $this->open();
  // }

  public function sub_lineaSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT * FROM sub_linea");
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
        $sub_lineaid = $row[2];
        echo "<td>" .  $sub_lineaid . "</td>";
        echo "<td>" . $row[4] . "</td>";
      ?>
        <!-- Modal Trigger -->
        <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="sub_lineaSelectOne('<?php echo $sub_lineaid ?>'); sub_lineaCancelar(); return false">Seleccionar</a></td>
        <td><a class="waves-effect waves-light btn red" href="" onclick="sub_lineaDelete('<?php echo $sub_lineaid ?>');  return false">Eliminar</a></td>
      <?php
        echo "</tr>";
      }
      ?>
    </table>
<?php
  }
  public function sub_lineaDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM sub_linea where cod_sublinea='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->sub_lineaSelect();
  }
  public function sub_lineaInsert($descripcion)
  {
    //registra los datos del sub_linea
    $sql = "INSERT INTO sub_linea (descripcion) VALUES ('$descripcion')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->sub_lineaSelect();
  }
  public function sub_lineaSelectOne($codigo)
  {
    //registra los datos del empleados
    $sql = mysqli_query($this->open(), "SELECT * from sub_linea where cod_sublinea ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["Cod_Sublinea"];
    $descripcion = $r["Descripcion"];
    echo "<script>
      sub_linea.codigo.value='$codigo';
      sub_linea.descripcion.value='$descripcion';
    
      </script>";
    $this->sub_lineaSelect();
  }
  public function sub_lineaUpdate($codigo, $descripcion)
  {
    //si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
    // ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
    $sql = "UPDATE sub_linea set descripcion='$descripcion'where cod_sublinea='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
        sub_linea.codigo.value='$codigo';
        sub_linea.descripcion.value='$descripcion';
        </script>";
    $this->sub_lineaSelect();
  }
  public function sub_lineaSearch($criterio)
	{
		//consulta todos los sub_linea
		$sql = mysqli_query($this->open(), "SELECT * FROM sub_linea where descripcion like '%$criterio%';  ");
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
			$cod_sub_linea = $row[0];
			echo "<td>" .  $row[2] . "</td>";
			echo "<td>" .  $row[4] . "</td>";
		?>
			<!-- Modal Trigger -->
			<td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="sub_lineaSelectOne('<?php echo $cod_sub_linea ?>'); sub_lineaCancelar();  return false">Seleccionar</a></td>
			<td><a class="waves-effect waves-light btn red" href="" onclick="sub_lineaDelete('<?php echo $cod_sub_linea ?>'); return false">Eliminar</a></td>
<?php
			echo "</tr>";
		}

		echo "</table>";
	}
}

$sub_linea = new sub_linea();
if ($metodo == "delete") {
  $sub_linea->sub_lineaDelete($codigo);
} elseif ($metodo == "insert") {
  $sub_linea->sub_lineaInsert($descripcion);
} elseif ($metodo == "select") {
  $sub_linea->sub_lineaSelectOne($codigo);
} elseif ($metodo == "update") {
  $sub_linea->sub_lineaUpdate($codigo, $descripcion);
}
elseif ($metodo == "search") {
  $sub_linea->sub_lineaSearch($criterio);
}
