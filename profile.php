<?php
include('head.php');

$administrador->personSelectOne2($_SESSION["login"]);

?>
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <?php $foto = base64_encode($r["Foto"]);
                            if ($foto == "") {
                                echo " <img src='dist/img/user4-128x128.jpg' class='profile-user-img img-fluid img-circle'alt='User Image'>";
                            } else {
                                echo "<img src='data:image/jpeg;base64,$foto' class='profile-user-img img-fluid img-circle'>";
                            }
                            ?>
                        </div>

                        <h3 class="profile-username text-center"><?php echo $r["Nombre"] . " " . $r["Paterno"]. " " . $r["Materno"]; ?></h3>
                        <p class="text-muted text-center"><?php echo $r["Cargo"] ?></p>

                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>DNI</b> <a class="float-right"><?php echo $r["Dni"] ?></a>
                            </li>
                            <li class="list-group-item">
                                <b>Celular</b> <a class="float-right"><?php echo $r["Celular"] ?></a>
                            </li>
                            <li class="list-group-item">
                                <b>Nacimiento</b> <a class="float-right"><?php echo $r["Fec_nac"] ?></a>
                            </li>
                        </ul>
                    
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Cambiar Contraseña
                        </button>
                            <p></p>
                        <button type="button" class="btn btn-success" onclick="envioWhatsapp('<?php echo $administrador->nombre ?>')">Whatsapp Desarrollador</button>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->


                <!-- /.card -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header p-2">
                        <ul class="nav nav-pills">
                            <li class="nav-item"><a class="nav-link active" href="#settings" data-toggle="tab">Configuración</a></li>
                        </ul>
                    </div><!-- /.card-header -->
                    <div class="card-body">
                        <div class="tab-content">
                            <div class="active tab-pane" id="settings">
                                <form class="form-horizontal">
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-2
                              col-form-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputName" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail" class="col-sm-2
                              col-form-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputName2" class="col-sm-2
                              col-form-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputName2" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputExperience" class="col-sm-2
                              col-form-label">Experience</label>
                                        <div class="col-sm-10">
                                            <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputSkills" class="col-sm-2
                              col-form-label">Skills</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="offset-sm-2 col-sm-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="offset-sm-2 col-sm-10">
                                            <button type="submit" class="btn btn-danger">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div><!-- /.card-body -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</section>
<!-- /.content -->
















<p></p>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" action="" id="person">

                    <img src="imagenes/messenger.png" alt="messenger" width="100">
                    <h6><b>Cambiar Contraseña</b></h6>
                    <input type="password" class="form-control" name="password" placeholder="  password Actual" requerid>
                    <p></p>
                    <input type="password" class="form-control" name="new_password" placeholder=" Nueva Contraseña" requerid>
                    <p></p>
                    <input type="password" class="form-control" name="repetir_password" placeholder="  Repetir Contraseña" requerid>
                    <p></p>
                    <p></p>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <input type="button" value="Guardar" name="btn" class="btn btn-primary" onclick="personChangePassword(); return false;">
            </div>
        </div>
    </div>
</div>
<p></p>

<!-- Modal Structure -->


<div id="resultado">


</div>


<?php
include "footer.php";
?>