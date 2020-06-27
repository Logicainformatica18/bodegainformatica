<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
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
                      echo "<td>s/" . $row[2] . "</td>";
                      
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
  public function companiasenvioInsert($nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor)
  {
    //registra los datos del companiasenvio
    $sql = "INSERT INTO companiasenvio (nombreproducto,preciounitario,preciopaquete,unidadesporpaquete,unidadesenstock,idcategoria,idproveedor) VALUES ('$nombre',$preciounitario,$preciopaquete,$unidadesporpaquete,$unidadesenstock,'$categoria','$proveedor')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->companiasenvioSelect();
  }
  public function companiasenvioSelectOne($codigo)
  {
    $sql = mysqli_query($this->open(), "SELECT p.IdProducto, p.NombreProducto,p.PrecioUnitario,p.preciopaquete,p.unidadesporpaquete,p.UnidadesEnStock,c.IdCategoria,pro.IdProveedor from
    companiasenvio p inner join categorias c inner join proveedores pro on p.IdCategoria=c.IdCategoria and
    p.IdProveedor=pro.IdProveedor where idProducto ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["IdProducto"];
    $nombre = $r["NombreProducto"];
    $preciounitario = $r["PrecioUnitario"];
    $preciopaquete = $r["preciopaquete"];
    $unidadesporpaquete = $r["unidadesporpaquete"];
    $unidadesenstock = $r["UnidadesEnStock"];
    $categoria = $r["IdCategoria"];
    $proveedor = $r["IdProveedor"];
    echo "<script>
      companiasenvio.codigo.value='$codigo';
      companiasenvio.nombre.value='$nombre';
      companiasenvio.preciounitario.value='$preciounitario';
      companiasenvio.preciopaquete.value='$preciopaquete';
      companiasenvio.unidadesporpaquete.value='$unidadesporpaquete';
      companiasenvio.unidadesenstock.value='$unidadesenstock';
      companiasenvio.categoria.value='$categoria';
      companiasenvio.proveedor.value='$proveedor';
      </script>";
    $this->companiasenvioSelect();
  }
  public function companiasenvioUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor)
  {
    $sql = "UPDATE companiasenvio set nombreproducto='$nombre' ,preciounitario='$preciounitario',preciopaquete='$preciopaquete',unidadesporpaquete='$unidadesporpaquete',unidadesenstock='$unidadesenstock',
idcategoria='$categoria',idproveedor='$proveedor' where idproducto='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    companiasenvio.codigo.value='$codigo';
    companiasenvio.nombre.value='$nombre';
    companiasenvio.preciounitario.value='$preciounitario';
    companiasenvio.preciopaquete.value='$preciopaquete';
    companiasenvio.unidadesenstock.value='$unidadesenstock';
    companiasenvio.categoria.value='$categoria';
    companiasenvio.proveedor.value='$proveedor';
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
  $companiasenvio->companiasenvioInsert($nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor);
} elseif ($metodo == "select") {
  $companiasenvio->companiasenvioSelectOne($codigo);
} elseif ($metodo == "update") {
  $companiasenvio->companiasenvioUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor);
}