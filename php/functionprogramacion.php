<?php
if (!class_exists("connection"))
{
  include ("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$criterio = isset($_POST['criterio']) ? $_POST['criterio'] : "";
//
$aula = isset($_POST['aula']) ? $_POST['aula'] : "";
$carrera = isset($_POST['carrera']) ? $_POST['carrera'] : "";
$fec_inicio = isset($_POST['fec_inicio']) ? $_POST['fec_inicio'] : "";
$fec_fin = isset($_POST['fec_fin']) ? $_POST['fec_fin'] : "";
$turno = isset($_POST['turno']) ? $_POST['turno'] : "";
$ciclo = isset($_POST['ciclo']) ? $_POST['ciclo'] : "";

class programacion 
{
    public function programacionSelect()
    {
        $con = new connection();
        //consulta todos los empleados
        $sql = mysqli_query($con->open(), "SELECT p.cod_programacion,a.descripcion,s.descripcion,p.turno,p.ciclo,p.fec_inicio,p.fec_fin,p.cod_sublinea FROM programacion p
        inner join aula a inner join sub_linea s on p.cod_aula=a.cod_aula and p.cod_sublinea=s.cod_sublinea;");
?>
        <table class="striped responsive-table">
            <tr>
                <th>Código</th>
                <th>Aula</th>
                <th>Carrera</th>
                <th>Turno</th>
                <th>Ciclo</th>
                <th>Inicio</th>
                <th>Fin</th>
                <th>Opción</th>
                <th>Opción</th>
                <th>Opción</th>
            </tr>
            <?php
            while ($row = mysqli_fetch_array($sql)) {
                echo "<tr>";
                $programacionid = $row[0];
                echo "<td>" .  $programacionid . "</td>";
                echo "<td>" . $row[1] . "</td>";
                echo "<td>" . $row[2] . "</td>";
                echo "<td>" . $row[3] . "</td>";
                echo "<td>" . $row[4] . "</td>";
                echo "<td>" . $row[5] . "</td>";
                echo "<td>" . $row[6] . "</td>";
            ?>
                <!-- Modal Trigger -->
                <td><a class="btn green" href="" onclick="programacionDetalle('<?php echo $programacionid ?>','<?php echo $row[7] ?>','<?php echo $row[3] ?>','<?php echo $row[4] ?>'); return false">Detalle</a></td>
                <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="programacionSelectOne('<?php echo $programacionid ?>'); programacionCancelar(); return false">Seleccionar</a></td>
                <td><a class="waves-effect waves-light btn red" href="" onclick="programacionDelete('<?php echo $programacionid ?>');  return false">Eliminar</a></td>
            <?php
                echo "</tr>";
            }
            ?>
        </table>
    <?php
    }
    public function programacionDelete($codigo)
    {
        $con = new connection();
        //registra los datos del empleados
        $sql = "DELETE FROM programacion where cod_programacion='$codigo';";
        if (mysqli_query($con->open(), $sql)) {
        } else {
        }
        $this->programacionSelect();
    }
    public function programacionInsert($aula, $carrera, $turno, $ciclo, $fec_inicio, $fec_fin)
    {

        $con = new connection();
        //   registra los datos del programacion
        $sql = "INSERT INTO programacion (cod_aula,cod_sublinea,turno,ciclo,fec_inicio,fec_fin) VALUES ('$aula','$carrera','$turno','$ciclo','$fec_inicio','$fec_fin')";
        mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
        $this->programacionSelect();
    }
    public function programacionSelectOne($codigo)
    {
        $con = new connection();
        //registra los datos del empleados
        $sql = mysqli_query($con->open(), "SELECT * from programacion  where cod_programacion ='$codigo'");
        $r = mysqli_fetch_assoc($sql);
        $codigo = $r["cod_programacion"];
        $aula = $r["cod_aula"];
        $carrera = $r["cod_sublinea"];
        $turno = $r["turno"];
        $ciclo = $r["ciclo"];
        $fec_inicio = $r["fec_inicio"];
        $fec_fin = $r["fec_fin"];
        echo "<script>
      programacion.codigo.value='$codigo';
      programacion.aula.value='$aula';
      programacion.carrera.value='$carrera';
      programacion.turno.value='$turno';
      programacion.ciclo.value='$ciclo';
      programacion.fec_inicio.value='$fec_inicio';
      programacion.fec_fin.value='$fec_fin';
      </script>";
        $this->programacionSelect();
    }
    public function programacionUpdate($codigo, $aula, $carrera, $turno, $ciclo, $fec_inicio, $fec_fin)
    {
        $con = new connection();
        //si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
        // ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
        $sql = "UPDATE programacion set cod_aula='$aula',cod_sublinea='$carrera',turno='$turno',ciclo='$ciclo',fec_inicio='$fec_inicio',fec_fin='$fec_fin' where cod_programacion='$codigo'";
        mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
        echo "<script>	
        programacion.codigo.value='$codigo';
        programacion.aula.value='$aula';
        programacion.carrera.value='$carrera';
        programacion.turno.value='$turno';
        programacion.ciclo.value='$ciclo';
        programacion.fec_inicio.value='$fec_inicio';
        programacion.fec_fin.value='$fec_fin';
        </script>";
        $this->programacionSelect();
    }
    public function programacionSearch($criterio)
    {
        $con = new connection();
        //consulta todos los programacion
        $sql = mysqli_query($con->open(), "SELECT p.cod_programacion,a.descripcion,s.descripcion,p.turno,p.ciclo,p.fec_inicio,p.fec_fin FROM programacion p
        inner join aula a inner join sub_linea s on p.cod_aula=a.cod_aula and p.cod_sublinea=s.cod_sublinea where a.descripcion like '%$criterio%';  ");
    ?>
        <table class="striped responsive-table">
            <tr>
                <th>Código</th>
                <th>Aula</th>
                <th>Carrera</th>
                <th>Turno</th>
                <th>Ciclo</th>
                <th>Inicio</th>
                <th>Fin</th>
                <th>Opción</th>
                <th>Opción</th>
            </tr>
            <?php
            while ($row = mysqli_fetch_array($sql)) {
                echo "<tr>";
                $programacionid = $row[0];
                echo "<td>" .  $programacionid . "</td>";
                echo "<td>" . $row[1] . "</td>";
                echo "<td>" . $row[2] . "</td>";
                echo "<td>" . $row[3] . "</td>";
                echo "<td>" . $row[4] . "</td>";
                echo "<td>" . $row[5] . "</td>";
                echo "<td>" . $row[6] . "</td>";
            ?>
                <!-- Modal Trigger -->
                <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="programacionSelectOne('<?php echo $programacionid ?>'); programacionCancelar(); return false">Seleccionar</a></td>
                <td><a class="waves-effect waves-light btn red" href="" onclick="programacionDelete('<?php echo $programacionid ?>');  return false">Eliminar</a></td>
            <?php
                echo "</tr>";
            }
            ?>
        </table>
<?php
    }
    public function programacionDetalle($codigo,$carrera,$turno,$ciclo)
    {
        session_start();
        $_SESSION["programacion"]= $codigo;
        $_SESSION["carrera"]= $carrera;
        $_SESSION["turno"]= $turno;
        $_SESSION["ciclo"]= $ciclo;
        echo "<script>	window.location.href='programaciondetalle.php';</script>";
    }
}

$programacion = new programacion();
if ($metodo == "delete") {
    $programacion->programacionDelete($codigo);
} elseif ($metodo == "insert") {
    $programacion->programacionInsert($aula, $carrera, $turno, $ciclo, $fec_inicio, $fec_fin);
} elseif ($metodo == "select") {
    $programacion->programacionSelectOne($codigo);
} elseif ($metodo == "update") {
    $programacion->programacionUpdate($codigo, $aula, $carrera, $turno, $ciclo, $fec_inicio, $fec_fin);
} elseif ($metodo == "search") {
    $programacion->programacionSearch($criterio);
}
elseif ($metodo == "detalle") {
    $programacion->programacionDetalle($codigo,$carrera,$turno,$ciclo);
}
