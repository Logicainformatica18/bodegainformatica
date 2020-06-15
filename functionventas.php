<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
if (!class_exists("session")) {
  include("session.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$preciounitario = isset($_POST['preciounitario']) ? $_POST['preciounitario'] : "";
$preciopaquete = isset($_POST['preciopaquete']) ? $_POST['preciopaquete'] : "";
$unidadesenstock = isset($_POST['unidadesenstock']) ? $_POST['unidadesenstock'] : "";
$categoria = isset($_POST['categoria']) ? $_POST['categoria'] : "";
$proveedor = isset($_POST['proveedor']) ? $_POST['proveedor'] : "";
$criterio = isset($_POST['criterio']) ? $_POST['criterio'] : "";
//filtro




class ventas extends connection
{

  public function ventasSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT * from ventas where fecha = curdate();");
?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">


              <div class="card-header">
                <h3 class="card-title">Tabla de ventas</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>Código</th>
                      <th>Fecha</th>
                      <th>Hora</th>
                      <th>Detalle</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>

                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $ventasid = $row[0];
                      echo "<td>" . $row[0] . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>" . $row[2] . "</td>";
                    ?>
                      <td><button class="btn btn-danger" onclick="ventasDetalle('<?php echo $ventasid ?>');  return false">Detalle</button></td>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="ventasSelectOne('<?php echo $ventasid ?>'); ventasEditar();  return false"></button></td>
                      <!-- <button class="note-icon-pencil" ></button> -->
                      <td><button class="btn btn-danger  note-icon-trash" onclick="ventasDelete('<?php echo $ventasid ?>');  return false"></button></td>

                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>Código</th>
                      <th>Fecha</th>
                      <th>Hora</th>
                      <th>Detalle</th>
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
  public function ventasDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM ventas where idventas='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->ventasSelect();
  }
  public function ventasInsert()
  {
    //registra los datos del ventas
    $sql = "INSERT INTO ventas (fecha,hora) VALUES (now(),now())";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->ventasSelect();
  }
  public function ventasDetalle($codigo)
  {
     $_SESSION["ventas"] = $codigo;
     echo "<script>	window.location.href='ventasdetalle.php';</script>";
  }
}

$ventas = new ventas();
if ($metodo == "delete") {
  $ventas->ventasDelete($codigo);
} elseif ($metodo == "insert") {
  $ventas->ventasInsert();
} elseif ($metodo == "detalle") {
  $ventas->ventasDetalle($codigo);
}
