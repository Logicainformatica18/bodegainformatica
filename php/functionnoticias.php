<?php
if (!class_exists("connection"))
{
  include ("conexion.php");
}
$codigo = isset($_POST["codigo"]) ? $_POST["codigo"]:""; 
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
$titulo = isset($_POST['titulo']) ? $_POST['titulo'] : "";
$contenido = isset($_POST['contenido']) ? $_POST['contenido'] : "";

class noticias {

    public function noticiasInsert($titulo,$contenido){
        $con = new connection();
        $sql="INSERT INTO noticias(titulo,contenido)values('$titulo','$contenido');";
        mysqli_query($con->open(),$sql);
    
    }


    public function noticiasSelect()
    {
      $con = new connection();
      //consulta todos los empleados
      $sql = mysqli_query($con->open(), "SELECT * FROM noticias");
  ?>
      <table class="striped responsive-table">
        <tr>
          <th>Código</th>
          <th>titulo</th>
          <th>contenido</th>
          <th>Opción</th>
          <th>Opción</th>
        </tr>
        <?php
        while ($row = mysqli_fetch_array($sql)) {
          echo "<tr>";
          $noticiasid = $row[0];
          echo "<td>" .  $noticiasid . "</td>";
          echo "<td>" . $row[1] . "</td>";
        ?>
          <!-- Modal Trigger -->
          <td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="noticiasSelectOne('<?php echo $noticiasid ?>'); noticiasCancelar(); return false">Seleccionar</a></td>
          <td><a class="waves-effect waves-light btn red" href="" onclick="noticiasDelete('<?php echo $noticiasid ?>');  return false">Eliminar</a></td>
        <?php
          echo "</tr>";
        }
        ?>
      </table>
  <?php
    }



}

$noticias = new noticias;

if($metodo="insert"){
    $noticias->noticiasInsert($titulo,$contenido);
}