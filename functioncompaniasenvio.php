<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";

$nombrecompania = isset($_POST['nombrecompania']) ? $_POST['nombrecompania'] : "";
$telefono = isset($_POST['telefono']) ? $_POST['telefono'] : "";

//filtro




class companiasenvio extends connection
{


  public function companiasenvioSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT * from companiasenvio;");
?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">


              <div class="card-header">
                <h3 class="card-title">Tabla de companiasenvio</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>Código</th>
                      <th>Nombre</th>
                      <th>Teléfono</th>
                   
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $companiasenvioid = $row[0];
                      echo "<td>" . $row[0] . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>" . $row[2] . "</td>";
                      
                    ?>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="companiasenvioSelectOne('<?php echo $companiasenvioid ?>'); companiasenvioEditar();  return false"></button></td>
                      <!-- <button class="note-icon-pencil" ></button> -->
                      <td><button class="btn btn-danger note-icon-trash" onclick="companiasenvioDelete('<?php echo $companiasenvioid ?>');  return false"></button></td>
                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                 
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
  public function companiasenvioDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM companiasenvio where idcompaniaenvio='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->companiasenvioSelect();
  }
  public function companiasenvioInsert($nombrecompania, $telefono)
  {
    //registra los datos del companiasenvio
    $sql = "INSERT INTO companiasenvio (nombrecompania,telefono) VALUES ('$nombrecompania','$telefono')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->companiasenvioSelect();
  }
  public function companiasenvioSelectOne($codigo)
  {
    $sql = mysqli_query($this->open(), "SELECT * from companiasenvio where idcompaniaenvio ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["IdCompaniaEnvio"];
    $nombrecompania = $r["NombreCompania"];
    $telefono = $r["Telefono"];
   
    echo "<script>
      companiasenvio.codigo.value='$codigo';
      companiasenvio.nombrecompania.value='$nombrecompania';
      companiasenvio.telefono.value='$telefono';
      </script>";
    $this->companiasenvioSelect();
  }
  public function companiasenvioUpdate($codigo,$nombrecompania,$telefono)
  {
    $sql = "UPDATE companiasenvio set nombrecompania='$nombrecompania' ,telefono='$telefono' where idcompaniaenvio='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    companiasenvio.codigo.value='$codigo';
    companiasenvio.nombrecompania.value='$nombrecompania';
    companiasenvio.telefono.value='$telefono';
        </script>";
    $this->companiasenvioSelect();
  }
  public function companiasenvioSearch2()
  {
    $query = "SELECT nombreproducto from companiasenvio";
    //consulta todos los companiasenvio
    $sql = mysqli_query($this->open(), $query);

    while ($row = mysqli_fetch_array($sql)) {

      $nombre = $row[0];
    ?>
      <script>
        countries.push("<?php echo $nombre ?>");
      </script>
<?php
    }
  }
}

$companiasenvio = new companiasenvio();
if ($metodo == "delete") {
  $companiasenvio->companiasenvioDelete($codigo);
} elseif ($metodo == "insert") {
  $companiasenvio->companiasenvioInsert($nombrecompania, $telefono);
} elseif ($metodo == "select") {
  $companiasenvio->companiasenvioSelectOne($codigo);
} elseif ($metodo == "update") {
  $companiasenvio->companiasenvioUpdate($codigo,$nombrecompania,$telefono);
}