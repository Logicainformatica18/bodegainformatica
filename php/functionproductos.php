<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$preciounitario = isset($_POST['preciounitario']) ? $_POST['preciounitario'] : "";
$preciopaquete = isset($_POST['preciopaquete']) ? $_POST['preciopaquete'] : "";
$unidadesporpaquete = isset($_POST['unidadesporpaquete']) ? $_POST['unidadesporpaquete'] : "";
$unidadesenstock = isset($_POST['unidadesenstock']) ? $_POST['unidadesenstock'] : "";
$categoria = isset($_POST['categoria']) ? $_POST['categoria'] : "";
$proveedor = isset($_POST['proveedor']) ? $_POST['proveedor'] : "";
//filtro




class productos extends connection
{


  public function productosSelect()
  {
    //consulta todos los empleados
    $sql = mysqli_query($this->open(), "SELECT p.IdProducto, p.NombreProducto,p.PrecioUnitario,p.preciopaquete,p.unidadesporpaquete,p.UnidadesEnStock from
    productos p inner join categorias c inner join proveedores pro on p.IdCategoria=c.IdCategoria and
    p.IdProveedor=pro.IdProveedor;");
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
                      <th>Nombre</th>
                      <th>Precio</th>
                      <th>Precio x Paquete</th>
                      <th>Unidades x Paquete</th>
                      <th>Stock</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $productosid = $row[0];
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>s/" . $row[2] . "</td>";
                      echo "<td>" . $row[3] . "</td>";
                      echo "<td>" . $row[4] . "</td>";
                      echo "<td>" . $row[5] . "</td>";
                    ?>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="productosSelectOne('<?php echo $productosid ?>'); productosEditar();  return false"></button></td>
                      <!-- <button class="note-icon-pencil" ></button> -->
                      <td><button class="btn btn-danger note-icon-trash" onclick="productosDelete('<?php echo $productosid ?>');  return false"></button></td>
                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>Nombre</th>
                      <th>Precio</th>
                      <th>Precio x Paquete</th>
                      <th>Unidades x Paquete</th>
                      <th>Stock</th>
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
  public function productosDelete($codigo)
  {
    //registra los datos del empleados
    $sql = "DELETE FROM productos where idproducto='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->productosSelect();
  }
  public function productosInsert($nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor)
  {
    //registra los datos del productos
    $sql = "INSERT INTO productos (nombreproducto,preciounitario,preciopaquete,unidadesporpaquete,unidadesenstock,idcategoria,idproveedor) VALUES ('$nombre',$preciounitario,$preciopaquete,$unidadesporpaquete,$unidadesenstock,'$categoria','$proveedor')";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $this->productosSelect();
  }
  public function productosSelectOne($codigo)
  {
    $sql = mysqli_query($this->open(), "SELECT p.IdProducto, p.NombreProducto,p.PrecioUnitario,p.preciopaquete,p.unidadesporpaquete,p.UnidadesEnStock,c.IdCategoria,pro.IdProveedor from
    productos p inner join categorias c inner join proveedores pro on p.IdCategoria=c.IdCategoria and
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
      productos.codigo.value='$codigo';
      productos.nombre.value='$nombre';
      productos.preciounitario.value='$preciounitario';
      productos.preciopaquete.value='$preciopaquete';
      productos.unidadesporpaquete.value='$unidadesporpaquete';
      productos.unidadesenstock.value='$unidadesenstock';
      productos.categoria.value='$categoria';
      productos.proveedor.value='$proveedor';
      </script>";
    $this->productosSelect();
  }
  public function productosUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor)
  {
    $sql = "UPDATE productos set nombreproducto='$nombre' ,preciounitario='$preciounitario',preciopaquete='$preciopaquete',unidadesporpaquete='$unidadesporpaquete',unidadesenstock='$unidadesenstock',
idcategoria='$categoria',idproveedor='$proveedor' where idproducto='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    productos.codigo.value='$codigo';
    productos.nombre.value='$nombre';
    productos.preciounitario.value='$preciounitario';
    productos.preciopaquete.value='$preciopaquete';
    productos.unidadesenstock.value='$unidadesenstock';
    productos.categoria.value='$categoria';
    productos.proveedor.value='$proveedor';
        </script>";
    $this->productosSelect();
  }
  public function productosSearch2()
  {
    $query = "SELECT nombreproducto from productos";
    //consulta todos los productos
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

$productos = new productos();
if ($metodo == "delete") {
  $productos->productosDelete($codigo);
} elseif ($metodo == "insert") {
  $productos->productosInsert($nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor);
} elseif ($metodo == "select") {
  $productos->productosSelectOne($codigo);
} elseif ($metodo == "update") {
  $productos->productosUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesporpaquete, $unidadesenstock, $categoria, $proveedor);
}