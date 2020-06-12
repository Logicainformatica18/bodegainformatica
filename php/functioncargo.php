<?php
if (!class_exists("connection"))
{
  include ("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";




class cargo extends connection
{


  public function cargoSelect()
  {
    $con = new connection();
    //consulta todos los empleados
    $sql = mysqli_query($con->open(), "SELECT * FROM cargo");
?>
    <table class="striped responsive-table">
      <tr>
        <th>Código</th>
        <th>Nombre</th>
        <th>Opción</th>
        <th>Opción</th>
      </tr>
      <?php
      while ($row = mysqli_fetch_array($sql)) {
        echo "<tr>";
        $cargoid = $row[0];
        echo "<td>" .  $cargoid . "</td>";
        echo "<td>" . $row[1] . "</td>";
      ?>
        <!-- Modal Trigger -->
        <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="cargoSelectOne('<?php echo $cargoid ?>'); cargoCancelar(); return false">Seleccionar</a></td>
        <td><a class="waves-effect waves-light btn red" href="" onclick="cargoDelete('<?php echo $cargoid ?>');  return false">Eliminar</a></td>
      <?php
        echo "</tr>";
      }
      ?>
    </table>
<?php
  }
  public function cargoDelete($codigo)
  {
    $con = new connection();
    //registra los datos del empleados
    $sql = "DELETE FROM cargo where cargoid='$codigo';";
    if (mysqli_query($con->open(), $sql)) {
    } else {
    }
    $this->cargoSelect();
  }
  public function cargoInsert($nombre)
  {
    $con = new connection();
    //registra los datos del cargo
    $sql = "INSERT INTO cargo (nombre) VALUES ('$nombre')";
    mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->cargoSelect();
  }
  public function cargoSelectOne($codigo)
  {
    $con = new connection();
    //registra los datos del empleados
    $sql = mysqli_query($con->open(), "SELECT * from cargo where cargoid ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["Cargoid"];
    $nombre = $r["Nombre"];
    echo "<script>
      cargo.codigo.value='$codigo';
      cargo.nombre.value='$nombre';
    
      </script>";
    $this->cargoSelect();
  }
  public function cargoUpdate($codigo, $nombre)
  {
    $con = new connection();
    //si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
    // ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
    $sql = "UPDATE cargo set nombre='$nombre'where cargoid='$codigo'";
    mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
        cargo.codigo.value='$codigo';
        cargo.nombre.value='$nombre';
        </script>";
    $this->cargoSelect();
  }
}

$cargo = new cargo();
if ($metodo == "delete") {
  $cargo->cargoDelete($codigo);
} elseif ($metodo == "insert") {
  $cargo->cargoInsert($nombre);
} elseif ($metodo == "select") {
  $cargo->cargoSelectOne($codigo);
} elseif ($metodo == "update") {
  $cargo->cargoUpdate($codigo, $nombre);
}
