<?php
if (!class_exists("connection"))
{
  include ("conexion.php");
}
//variables POST
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$programacion = isset($_POST['programacion']) ? $_POST['programacion'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$criterio = isset($_POST['criterio']) ? $_POST['criterio'] : "";
//
$criterio3 = substr(isset($_POST['criterio3']) ? $_POST['criterio3'] : "",0,8);
$fec_inicio = isset($_POST['fec_inicio']) ? $_POST['fec_inicio'] : "";
$fec_fin = isset($_POST['fec_fin']) ? $_POST['fec_fin'] : "";
$dia = isset($_POST['dia']) ? $_POST['dia'] : "";
$curso = isset($_POST['curso']) ? $_POST['curso'] : "";
$frecuencia = isset($_POST['frecuencia']) ? $_POST['frecuencia'] : "";



class programaciondetalle 
{
    public function programaciondetalleSelect()
    {
        $con = new connection();
      
    
        $programacion= $_SESSION["programacion"];
        //consulta todos los empleados
        $sql = mysqli_query($con->open(), "SELECT pd.cod_programaciondetalle,p.paterno,p.materno,p.nombre,c.descripcion,pd.dia,pd.frecuencia,pd.fec_inicio,pd.fec_fin from
        programaciondetalle pd inner join person p inner join curso c inner join programacion pr
        on pd.dni=p.dni and pd.cod_curso=c.cod_curso and pd.cod_programacion=pr.cod_programacion
        where pr.cod_programacion='$programacion';");
?>
        <table class="striped responsive-table">
            <tr>
                <th>Código</th>
                <th>Paterno</th>
                <th>Materno</th>
                <th>Nombre</th>
                <th>Curso</th>
                <th>Dia</th>
                <th>Frecuencia</th>
                <th>Inicio</th>
                <th>Fin</th>
                <th>Opción</th>
                <th>Opción</th>
            </tr>
            <?php
            while ($row = mysqli_fetch_array($sql)) {
                echo "<tr>";
                $programaciondetalleid = $row[0];
                echo "<td>" .  $programaciondetalleid . "</td>";
                echo "<td>" . $row[1] . "</td>";
                echo "<td>" . $row[2] . "</td>";
                echo "<td>" . $row[3] . "</td>";
                echo "<td>" . $row[4] . "</td>";
                echo "<td>" . $row[5] . "</td>";
                echo "<td>" . $row[6] . "</td>";
                echo "<td>" . $row[7] . "</td>";
                echo "<td>" . $row[8] . "</td>";
            ?>
                <!-- Modal Trigger -->
                <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="programaciondetalleSelectOne('<?php echo $programaciondetalleid ?>'); programaciondetalleCancelar(); return false">Seleccionar</a></td>
                <td><a class="waves-effect waves-light btn red" href="" onclick="programaciondetalleDelete('<?php echo $programaciondetalleid ?>');  return false">Eliminar</a></td>
            <?php
                echo "</tr>";
            }
            ?>
        </table>
        <?php
    }
    public function programaciondetalleDelete($codigo)
    {
        $con = new connection();
        //registra los datos del empleados
        $sql = "DELETE FROM programaciondetalle where cod_programaciondetalle='$codigo';";
        if (mysqli_query($con->open(), $sql)) {
        } else {
        }
        $this->programaciondetalleSelect();
    }
    public function programaciondetalleInsert($programacion,$criterio3,$cod_curso,$dia,$frecuencia,$fec_inicio,$fec_fin)
    {
      
        $con = new connection();
     //   registra los datos del programaciondetalle
        $sql = "INSERT INTO programaciondetalle (cod_programacion,dni,cod_curso,dia,frecuencia,fec_inicio,fec_fin) VALUES ('$programacion','$criterio3','$cod_curso','$dia','$frecuencia','$fec_inicio','$fec_fin')";
       mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
       $this->programaciondetalleSelect();
    }
    public function programaciondetalleSelectOne($codigo)
    {
        $con = new connection();
        //registra los datos del empleados
        $sql = mysqli_query($con->open(), "SELECT pd.cod_programaciondetalle,p.paterno,p.materno,p.nombre,c.descripcion,pd.dia,pd.frecuencia,pd.fec_inicio,pd.fec_fin from
        programaciondetalle pd inner join person p inner join curso c
        on pd.dni=p.dni and pd.cod_curso=c.cod_curso  where cod_programaciondetalle ='$codigo'");
        $r = mysqli_fetch_assoc($sql);
        $codigo = $r["cod_programaciondetalle"];
        $programaciondetalle = $r["descripcion"];
        echo "<script>
      programaciondetalle.codigo.value='$codigo';
      programaciondetalle.descripcion.value='$programaciondetalle';
      </script>";
        $this->programaciondetalleSelect();
    }
    public function programaciondetalleUpdate($cod_programaciondetalle,$dni,$cod_curso,$cod_aula,$dia,$turno,$fec_inicio,$fec_fin)
    {
        $con = new connection();
        //si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
        // ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
        $sql = "UPDATE programaciondetalle set dni='$dni',cod_curso='$cod_curso',cod_aula='$cod_aula',dia='$dia',turno='$turno',fec_inicio='$fec_inicio',fec_fin='$fec_fin' where cod_sublinea='$cod_programaciondetalle'";
        mysqli_query($con->open(), $sql) or die('Error. ' . mysqli_error($sql));
        echo "<script>	
        programaciondetalle.codigo.value='$cod_programaciondetalle';
        programaciondetalle.descripcion.value='';
        </script>";
        $this->programaciondetalleSelect();
    }
    public function programaciondetalleSearch($criterio)
    {
        $con = new connection();
        //consulta todos los programaciondetalle
        $sql = mysqli_query($con->open(), "SELECT * FROM programaciondetalle where descripcion like '%$criterio%' order by descripcion asc;  ");
        echo "
		<table class='striped responsive-table'>
		  <tr>
      <th>Código</th>
      <th>descripcion</th>
      <th>Opción</th>
			<th>Opción</th>
		  </tr>";
        while ($row = mysqli_fetch_array($sql)) {
            echo "<tr>";
            $cod_programaciondetalle = $row[0];
            echo "<td>" .  $row[0] . "</td>";
            echo "<td>" .  $row[1] . "</td>";
        ?>
            <!-- Modal Trigger -->
            <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="programaciondetalleSelectOne('<?php echo $cod_programaciondetalle ?>'); programaciondetalleCancelar();  return false">Seleccionar</a></td>
            <td><a class="waves-effect waves-light btn red" href="" onclick="programaciondetalleDelete('<?php echo $cod_programaciondetalle ?>'); return false">Eliminar</a></td>
<?php
            echo "</tr>";
        }

        echo "</table>";
    }
}

$programaciondetalle = new programaciondetalle();
if ($metodo == "delete") {
    $programaciondetalle->programaciondetalleDelete($codigo);
} elseif ($metodo == "insert") {
    $programaciondetalle->programaciondetalleInsert($programacion,$criterio3,$curso,$dia,$frecuencia,$fec_inicio,$fec_fin);
} elseif ($metodo == "select") {
    $programaciondetalle->programaciondetalleSelectOne($codigo);
} elseif ($metodo == "update") {
    $programaciondetalle->programaciondetalleUpdate($cod_programaciondetalle,$criterio3,$curso,$aula,$dia,$turno,$fec_inicio,$fec_fin);
} elseif ($metodo == "search") {
    $programaciondetalle->programaciondetalleSearch($criterio);
}
