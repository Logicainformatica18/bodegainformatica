<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$telefono = isset($_POST['telefono']) ? $_POST['telefono'] : "";
$direccion = isset($_POST['direccion']) ? $_POST['direccion'] : "";
//filtro




class proveedores extends connection
{


  public function proveedoresSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT IdProveedor,NombreCompania, Telefono,Direccion FROM proveedores;");
?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">


              <div class="card-header">
                <h3 class="card-title">Tabla de productos</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>Código</th>
                      <th>Nombre</th>
                      <th>Telefono</th>
                      <th>Dirección</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $proveedoresid = $row[0];
                      echo "<td>" .  $proveedoresid . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>" . $row[2] . "</td>";
                      echo "<td>" . $row[3] . "</td>";
                    ?>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="proveedoresSelectOne('<?php echo $proveedoresid ?>'); proveedoresEditar();  return false"></button></td>
                      <!-- <button class="note-icon-pencil" ></button> -->
                      <td><button class="btn btn-danger  note-icon-trash" onclick="proveedoresDelete('<?php echo $proveedoresid ?>');  return false"></button></td>
                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>Código</th>
                      <th>Nombre</th>
                      <th>Telefono</th>
                      <th>Dirección</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  <?php
  }
  public function proveedoresDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM proveedores where idproveedor='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->proveedoresSelect();
  }
  public function proveedoresInsert($nombre, $telefono, $direccion)
  {
    //registra los datos del proveedores
    $sql = "INSERT INTO proveedores (nombrecompania,telefono,direccion) VALUES ('$nombre','$telefono','$direccion')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->proveedoresSelect();
  }
  public function proveedoresSelectOne($codigo)
  {
    //registra los datos del empleados
    $sql = mysqli_query($this->open(), "SELECT * from proveedores where idproveedor ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["IdProveedor"];
    $nombre = $r["NombreCompania"];
    $telefono = $r["Telefono"];
    $direccion = $r["Direccion"];
    echo "<script>
      proveedores.codigo.value='$codigo';
      proveedores.nombre.value='$nombre';
      proveedores.telefono.value='$telefono';
      proveedores.direccion.value='$direccion';
      </script>";
    $this->proveedoresSelect();
  }
  public function proveedoresUpdate($codigo, $nombre, $telefono, $direccion)
  {
    $sql = "UPDATE proveedores set nombrecompania='$nombre',telefono='$telefono' ,direccion='$direccion'where idproveedor='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    proveedores.codigo.value='$codigo';
    proveedores.nombre.value='$nombre';
    proveedores.telefono.value='$telefono';
    proveedores.direccion.value='$direccion';
        </script>";
    $this->proveedoresSelect();
  }
}

$proveedores = new proveedores();
if ($metodo == "delete") {
  $proveedores->proveedoresDelete($codigo);
} elseif ($metodo == "insert") {
  $proveedores->proveedoresInsert($nombre, $telefono, $direccion);
} elseif ($metodo == "select") {
  $proveedores->proveedoresSelectOne($codigo);
} elseif ($metodo == "update") {
  $proveedores->proveedoresUpdate($codigo, $nombre, $telefono, $direccion);
}