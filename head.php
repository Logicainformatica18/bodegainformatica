<?php
if (!class_exists("session")) {
    include("session.php");
  }
include 'functionperson.php';
$administrador = new person("");
$administrador->personValidar();
$login = isset($_SESSION["login"]) ? $_SESSION["login"] : "";
$con = new connection();
$query = mysqli_query($con->open(), "SELECT p.Nombre,p.Paterno,p.Materno,p.Foto,p.Dni,p.Celular,p.Email,p.Fec_nac,c.nombre as Cargo from person p
inner join cargo c on p.cargoid=c.cargoid where dni='$login';");
$r = mysqli_fetch_assoc($query);
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sistema | Bodega</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- Funciones ajax -->
    <script src="function.js"></script>
    <link  rel="icon"   href="favicon.ico" type="image/png" />
</head>


<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="index.php" class="nav-link">Inicio</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="logout.php" class="nav-link">Cerrar Sesión</a>
                </li>
            </ul>

            <!-- SEARCH FORM -->
            <!-- <form class="form-inline ml-3">
                <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-navbar" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form> -->

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">


                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index.php" class="brand-link">
                <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Bodega</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <?php $foto = base64_encode($r["Foto"]);
                        if ($foto == "") {
                            echo " <img src='dist/img/user2-160x160.jpg' class='img-circle elevation-2'alt='User Image'>";
                        } else {
                            echo "<img src='data:image/jpeg;base64,$foto' class='img-circle elevation-2'>";
                        }
                        ?>

                    </div>
                    <div class="info">
                        <a href="#" class="d-block"><?php echo $r["Nombre"] . " " . $r["Paterno"]; ?></a>
                        <a href="logout.php">Cerrar Sesión</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item has-treeview menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="profile.php" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Perfil</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="nav-item has-treeview">
                            <a href="categorias.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Categorías
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="productos.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Productos
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="proveedores.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Proveedores
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="ventas.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Ventas
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="companiasenvio.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Companias Envio
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>




                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>


        <!-- Main content -->
        <div class="content-wrapper">
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">