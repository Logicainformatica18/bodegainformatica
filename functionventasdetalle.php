<?php
if (!class_exists("connection")) {
  include("conexion.php");
}
if (!class_exists("session")) {
  include("session.php");
}
//variables POST
$ventas = isset($_GET["ventas"]) ? $_GET["ventas"] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$cantidad = isset($_POST['cantidad']) ? $_POST['cantidad'] : "";
//ESTA VARIABLE ES PARA AGREGAR A UNA TABLA DETALLE
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$ventas = isset($_SESSION["ventas"]) ? $_SESSION["ventas"] : "";

class ventasdetalle extends connection{

public $id = "";  
public function setVentasdetalle($id){
  return $this->id=$id;
}

  public function ventasdetalleSelect()
  {
    $ventas = isset($_SESSION["ventas"]) ? $_SESSION["ventas"] : "";
    //consulta todos los empleados
    $query = "SELECT vd.idventas_detalle,p.nombreproducto,p.preciounitario,vd.cantidad,round(vd.cantidad * p.preciounitario,2) as subtotal 
    from ventas_detalle vd inner join productos p on vd.idproducto=p.idproducto
    where vd.idventas='$ventas';";
    $sql = mysqli_query($this->open(), $query);

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
                      <th>Nombre Producto</th>
                      <th>Precio</th>
                      <th>Cantidad</th>
                      <th>SubTotal</th>
                      <th>Modificar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($sql)) {
                      echo "<tr>";
                      $ventasdetalleid = $row[0];
                      echo "<td>" . $row[0] . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "<td>" . $row[2] . "</td>";
                      echo "<td>" . $row[3] . "</td>";
                      echo "<td>" . $row[4] . "</td>";
                    ?>
                      <!-- Button trigger modal -->
                      <td><button type="button" class="btn btn-primary note-icon-pencil" data-toggle="modal" data-target="#exampleModal" onclick="ventasdetalleSelectOne('<?php echo $ventasdetalleid ?>'); ventasdetalleEditar();  return false"></button></td>
                      <!-- <button class="icon_pencil-edit" ></button> -->
                      <td><button class="btn btn-danger  note-icon-trash" onclick="ventasdetalleDelete('<?php echo $ventasdetalleid ?>');  return false"></button></td>
                    <?php
                      echo "</tr>";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>Código</th>
                      <th>Nombre Producto</th>
                      <th>Precio</th>
                      <th>Cantidad</th>
                      <th>SubTotal</th>
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
    $sql = "SELECT round(sum(vd.cantidad * p.preciounitario),1) as total
   from ventas_detalle vd inner join productos p on vd.idproducto=p.idproducto
   where vd.idventas='$ventas';";
    $query = mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    $r = mysqli_fetch_assoc($query);
    $total = $r["total"];
    if ($total > 0) {
      echo "<script> document.getElementById('total').value=$total;</script>";
    } else {
      echo "<script> document.getElementById('total').value=0.00;</script>";
    }
  }
  public function ventasdetalleDelete($codigo)
  {
    $sql = "DELETE FROM ventas_detalle where idventas_detalle='$codigo';";
    if (mysqli_query($this->open(), $sql)) {
    } else {
    }
    $this->ventasdetalleSelect();
  }
  public function ventasdetalleInsert($nombre, $cantidad)
  {
    $ventas = isset($_SESSION["ventas"]) ? $_SESSION["ventas"] : "";
    $sql = mysqli_query($this->open(), "SELECT idproducto from productos where nombreproducto='$nombre'");
    $r = mysqli_fetch_assoc($sql);
    $nombre = $r["idproducto"];
    //registra los datos del ventasdetalle
    $sql = "INSERT INTO ventas_detalle (idventas,idproducto,cantidad) VALUES ('$ventas','$nombre',$cantidad)";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script> ventasdetalleNuevo()</script>";
    $this->ventasdetalleSelect();
  }


  public function ventasdetalleSelectOne($codigo)
  {
    $sql = mysqli_query($this->open(), "SELECT p.IdProducto, p.NombreProducto,p.PrecioUnitario,p.preciopaquete,p.UnidadesEnStock,c.IdCategoria,pro.IdProveedor from
    ventasdetalle p inner join categorias c inner join proveedores pro on p.IdCategoria=c.IdCategoria and
    p.IdProveedor=pro.IdProveedor where idProducto ='$codigo'");
    $r = mysqli_fetch_assoc($sql);
    $codigo = $r["IdProducto"];
    $nombre = $r["NombreProducto"];
    $preciounitario = $r["PrecioUnitario"];
    $preciopaquete = $r["preciopaquete"];
    $unidadesenstock = $r["UnidadesEnStock"];
    $categoria = $r["IdCategoria"];
    $proveedor = $r["IdProveedor"];
    echo "<script>
      ventasdetalle.codigo.value='$codigo';
      ventasdetalle.nombre.value='$nombre';
      ventasdetalle.preciounitario.value='$preciounitario';
      ventasdetalle.preciopaquete.value='$preciopaquete';
      ventasdetalle.unidadesenstock.value='$unidadesenstock';
      ventasdetalle.categoria.value='$categoria';
      ventasdetalle.proveedor.value='$proveedor';
      </script>";
    $this->ventasdetalleSelect();
  }
  public function ventasdetalleUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesenstock, $categoria, $proveedor)
  {
    $sql = "UPDATE ventasdetalle set nombreproducto='$nombre' ,preciounitario='$preciounitario',preciopaquete='$preciopaquete',unidadesenstock='$unidadesenstock',
idcategoria='$categoria',idproveedor='$proveedor' where idproducto='$codigo'";
    mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
    echo "<script>	
    ventasdetalle.codigo.value='$codigo';
    ventasdetalle.nombre.value='$nombre';
    ventasdetalle.preciounitario.value='$preciounitario';
    ventasdetalle.preciopaquete.value='$preciopaquete';
    ventasdetalle.unidadesenstock.value='$unidadesenstock';
    ventasdetalle.categoria.value='$categoria';
    ventasdetalle.proveedor.value='$proveedor';
        </script>";
    $this->ventasdetalleSelect();
  }

}


$ventasdetalle = new ventasdetalle();
if ($metodo == "delete") {
  $ventasdetalle->ventasdetalleDelete($codigo);
} elseif ($metodo == "insert") {
  $ventasdetalle->ventasdetalleInsert($nombre, $cantidad);
} elseif ($metodo == "select") {
  $ventasdetalle->ventasdetalleSelectOne($codigo);
} elseif ($metodo == "update") {
  $ventasdetalle->ventasdetalleUpdate($codigo, $nombre, $preciounitario, $preciopaquete, $unidadesenstock, $categoria, $proveedor);
} 

