<?php
include("head.php");
include('functionproductos.php');
?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h3 class="page-header"><i class="fa fa-table"></i> Productos</h3>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
                    <li class="breadcrumb-item active">Tabla</li>
                    <li class="breadcrumb-item active">Productos</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="productosNuevo();">Agregar</button>
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">Gestionar productos</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form accept-charset="utf-8" id="productos" name="productos" method="POST" action="" enctype="multipart/form-data">
                    <div class="col s12 l6">
                        <input type="hidden" name="codigo">
                        Producto <input name="nombre" type="text" class="form-control" />
                        Precio Unitario <input name="preciounitario" type="number" class="form-control" />
                        Precio Por Paquete <input name="preciopaquete" type="number" class="form-control" />
                        Unidades Por Paquete <input name="unidadesporpaquete" type="number" class="form-control" />
                        Stock <input name="unidadesenstock" type="number" class="form-control" />
                        Categoria
                        <select name="categoria" id="categoria" class="form-control">
                            <?php
                            $con = new connection();
                            $sql = mysqli_query($con->open(), "SELECT IdCategoria,NombreCategoria from categorias");
                            while ($row = mysqli_fetch_array($sql)) {
                                $categoriasid = $row[0];
                                $nombre = $row[1];
                                echo "<option value='$categoriasid'>" .  $nombre . "</option>";
                            }

                            ?>
                        </select>
                        Proveedor
                        <select name="proveedor" id="proveedor" class="form-control">
                            <?php
                            $con = new connection();
                            $sql = mysqli_query($con->open(), "SELECT IdProveedor,NombreCompania from proveedores");
                            while ($row = mysqli_fetch_array($sql)) {
                                $proveedorid = $row[0];
                                $nombre = $row[1];
                                echo "<option value='$proveedorid'>" .  $nombre . "</option>";
                            }

                            ?>
                        </select>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="submit" name="nuevo" value="Nuevo" class="btn btn-secondary" onclick="productosNuevo(); return false" />

                <input type="button" name="btn" value="Grabar" class="btn btn-success" onclick="productosInsert();    productosNuevo(); return false" />

                <input type="submit" name="modificar" value="Modificar" class="btn btn-primary" onclick="productosUpdate(); return false" />
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<p></p>

</form>




<div id="resultado" class="container-fluid">


    <?php
    $productos->productosSelect();

    ?>

</div>

<?php
include "footer.php";
?>