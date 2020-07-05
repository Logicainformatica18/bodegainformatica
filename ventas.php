<?php
include("head.php");
include('functionventas.php');
?>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h3 class="page-header"><i class="fa fa-table"></i> Ventas</h3>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
                    <li class="breadcrumb-item active">Tabla</li>
                    <li class="breadcrumb-item active">Ventas</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
  

        
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<form accept-charset="utf-8" id="ventas" name="ventas" method="POST" action="" enctype="multipart/form-data">
    <div class="col s12 l6">
        <input type="hidden" name="codigo">

    </div>
    <input type="button" name="btn" value="Nuevo" class="btn btn-primary" onclick="ventasInsert();return false" />
    <p></p>

</form>

<div id="resultado">
    <?php

    $ventas->ventasSelect();

    ?>

</div>


<?php
include "footer.php";
?>