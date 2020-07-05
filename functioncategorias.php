<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : "";

//filtro




class categorias extends connection
{


  public function categoriasSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT * FROM categorias");
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
                      <th>Descripción</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $categoriasid = $row[0];
                      echo "<td>" .  $categoriasid . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>" . $row[2] . "</td>";
                    ?>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="categoriasSelectOne('<?php echo $categoriasid ?>'); categoriasEditar();  return false"></button></td>
                      <!-- <button class="note-icon-pencil" ></button> -->
                      <td><button class="btn btn-danger  note-icon-trash" onclick="categoriasDelete('<?php echo $categoriasid ?>');  return false"></button></td>
                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                    <tr>
                    <th>Código</th>
                      <th>Nombre</th>
                      <th>Descripción</th>
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
  public function categoriasDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM categorias where idcategoria='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
  $this->categoriasSelect();
  }
  public function categoriasInsert($nombre, $descripcion)
  {
    //registra los datos del categorias
    $sql = "INSERT INTO categorias (nombrecategoria,descripcion) VALUES ('$nombre','$descripcion')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->categoriasSelect();
  }
  public function categoriasSelectOne($codigo)
  {
    //registra los datos del empleados
    $sql = mysqli_query($this->open(), "SELECT * from categorias where idcategoria ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["IdCategoria"];
    $nombre = $r["NombreCategoria"];
    $descripcion = $r["Descripcion"];
    echo "<script>
      categorias.codigo.value='$codigo';
      categorias.nombre.value='$nombre';
      categorias.descripcion.value='$descripcion';
      </script>";
    $this->categoriasSelect();
  }
  public function categoriasUpdate($codigo, $nombre, $descripcion)
  {
    $sql = "UPDATE categorias set nombrecategoria='$nombre' ,descripcion='$descripcion'where idcategoria='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    categorias.codigo.value='$codigo';
    categorias.nombre.value='$nombre';
    categorias.descripcion.value='$descripcion';
        </script>";
    $this->categoriasSelect();
  }
}

$categorias = new categorias();
if ($metodo == "delete") {
  $categorias->categoriasDelete($codigo);
} elseif ($metodo == "insert") {
  $categorias->categoriasInsert($nombre, $descripcion);
} elseif ($metodo == "select") {
  $categorias->categoriasSelectOne($codigo);
} elseif ($metodo == "update") {
  $categorias->categoriasUpdate($codigo, $nombre, $descripcion);
}
