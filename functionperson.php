<?php
if (!class_exists("session")) {
    class session {
		public function session_inicio(){
			return session_start();
		}
	}
	
	$session=new session();
	$session->session_inicio();
  }
if (!class_exists("connection"))
		{
		  include ("conexion.php");
		}
//variables POST
$dni = isset($_POST['dni']) ? $_POST['dni'] : "";
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";
$cargo = isset($_POST['cargo']) ? $_POST['cargo'] : "";
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$paterno = isset($_POST['paterno']) ? $_POST['paterno'] : "";
$materno = isset($_POST['materno']) ? $_POST['materno'] : "";
$celular = isset($_POST['celular']) ? $_POST['celular'] : "";
$criterio = isset($_POST['criterio']) ? $_POST['criterio'] : "";
$foto = isset($_FILES['foto']['tmp_name']) ? $_FILES['foto']['tmp_name'] : "";
$email = isset($_POST['email']) ? $_POST['email'] : "";
$sexo = isset($_POST['sexo']) ? $_POST['sexo'] : "";
if ($sexo == "") {
	$sexo = "M";
}
$login = isset($_POST['login']) ? $_POST['login'] : "";
$password = isset($_POST['password']) ? $_POST['password'] : "";
$metodo = isset($_POST['metodo']) ? $_POST['metodo'] : "";
/// CAMBIAR CONTRASEÑA

////////////////////////////////////////////////////////////////////
$new_password          = isset($_POST['new_password']) ? $_POST['new_password'] : "";
$repetir_password  = isset($_POST['repetir_password']) ? $_POST['repetir_password'] : "";
// CAMBIAR CONTRASEÑA

//FILTRO
$criterio1 = isset($_POST['criterio1']) ? $_POST['criterio1'] : "";

//FILTRO


//comprobamos si hay una foto o no
if ($foto != "") {
	//Convertimos la información de la imagen en binario para insertarla en la BBDD
	$foto = addslashes(file_get_contents($_FILES['foto']['tmp_name']));
}

//FECHA
$dia = isset($_POST['Dia']) ? $_POST['Dia'] : "";
$mes = isset($_POST['Mes']) ? $_POST['Mes'] : "";
$año = isset($_POST['Año']) ? $_POST['Año'] : "";
//FECHA

//BUSQUEDA INTELIGENTE
$criterio3 = isset($_POST['criterio3']) ? $_POST['criterio3'] : "";
//
class person extends connection
{
	public $nombre;
	public $paterno;
	public $materno;
	public $fec_nac;
	public $sexo;
	public $foto;
	public $celular;
	public $email;
	public $password;
	public $cargo = "";
	public function __construct($cargo)
	{
		$this->cargo = $cargo;
	}
	public function personSelect()
	{
		//consulta todos los person
		$sql = mysqli_query($this->open(), "SELECT p.dni ,p.paterno,p.materno,p.nombre,p.foto,p.celular,c.nombre,p.email,p.sexo as cargo from person p inner join cargo c on p.cargoid=c.cargoid;  ");
		echo "
	<table class='striped responsive-table'>
	  <tr>
		<th>Dni</th>
		<th>Paterno</th>
		<th>Materno</th>
		<th>Nombre</th>
		<th>Celular</th>
		<th height='100'>Foto</th>
		<th>Cargo</th>
		<th>Email</th>
		<th>Opción</th>
		<th>Opción</th>
	  </tr>";
		while ($row = mysqli_fetch_array($sql)) {
			echo "<tr>";
			$cod_person = $row[0];
			echo "<td>" .  $row[0] . "</td>";
			echo "<td>" .  $row[1] . "</td>";
			echo "<td>" . $row[2] . "</td>";
			echo "<td>" . $row[3] . "</td>";
			echo "<td>" . $row[5] . "</td>";
			// decodificar base 64
			$foto = base64_encode($row[4]);
			if ($foto == "") {
				echo "<td height='100'>No Disponible</td>";
			} else {
				echo "<td height='100'><img src='data:image/jpeg;base64,$foto' width='100'height='100'></td>";
			}

			echo "<td>" . $row[6] . "</td>";
			echo "<td>" . $row[7] . "</td>";
?>
			<!-- Modal Trigger -->
			<td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="personSelectOne('<?php echo $cod_person ?>'); Cancelar();  return false">Seleccionar</a></td>
			<td><a class="waves-effect waves-light btn red" href="" onclick="personDelete('<?php echo $cod_person ?>'); return false">Eliminar</a></td>
		<?php
			echo "</tr>";
		}

		echo "</table>";
	}
	public function personInsert($dni, $cargo, $paterno, $materno, $nombre, $celular, $dia, $mes, $año, $foto, $email, $sexo)
	{
		if ($dia < 10) {
			$dia = "0" . $dia;
		}
		if ($mes < 10) {
			$mes = "0" . $mes;
		}
		//VALIDAR FECHA
		if ($dia < 1 || $mes < 1) {
			echo "<script type='text/javascript'> alert('Elija correctamente su Fecha de cumpleaños');</script>";
			$this->personSelect();
			exit;
		}
		//VALIDAR FECHA
		$fec_nac =    $año . "-" . $mes . "-" . $dia;
		//registra los datos del person
		$sql = "INSERT INTO person (dni,cargoid,paterno,materno,nombre,celular,fec_nac,foto,fec_reg,fec_mod,password,email,sexo,discriminator) VALUES ('$dni','$cargo','$paterno', '$materno', '$nombre','$celular','$fec_nac','$foto',now(),now(),'$dni','$email','$sexo','')";
		mysqli_query($this->open(), $sql) or die("<script>alert('Error de Registro'); </script> ");
		$this->personSelect();
	}
	public function personDelete($codigo)
	{
		//registra los datos del person
		$sql = "DELETE FROM person where dni ='$codigo'";
		mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
		$this->personSelect();
	}
	public function personSelectOne($codigo)
	{
		//registra los datos del person
		$sql = mysqli_query($this->open(), "SELECT p.dni ,p.paterno,p.materno,p.nombre,p.foto,p.celular,p.email,p.sexo, c.cargoid as cargo,day(p.fec_nac)as dia,month(p.fec_nac)as mes,year(p.fec_nac)as anio from person p inner join cargo c on p.cargoid=c.cargoid  where dni ='$codigo'");
		$r = mysqli_fetch_assoc($sql);
		$codigo = $r["dni"];
		$paterno = $r["paterno"];
		$materno = $r["materno"];
		$nombre = $r["nombre"];
		$celular = $r["celular"];
		$foto = base64_encode($r["foto"]);
		$cargo = $r["cargo"];
		$dia = $r["dia"];
		$mes = $r["mes"];
		$año = $r["anio"];
		$email = $r["email"];
		$sexo = $r["sexo"];
		if ($sexo == 'M') {
			echo "<script>person.sexo.checked=false;</script>";
		} else {
			echo "<script>person.sexo.checked=true;</script>";
		}
		echo "<script>
		person.codigo.value='$codigo';
		person.dni.value='$codigo';
		person.paterno.value='$paterno';
		person.materno.value='$materno';
		person.nombre.value='$nombre';
		person.celular.value='$celular';
		person.cargo.value='$cargo';
		person.Dia.value='$dia';
		person.Mes.value='$mes';
		person.Año.value='$año';
		person.email.value='$email';
		document.getElementById('fotografia').src='data:image/jpeg;base64,$foto';
		</script>";
		$this->personSelect();
	}
	public function personSelectOne2($codigo)
	{
		//registra los datos del person
		$sql = mysqli_query($this->open(), "SELECT p.dni ,p.paterno,p.password,p.materno,p.nombre,p.foto,p.celular,p.email,p.sexo, c.nombre as cargo,fec_nac from person p inner join cargo c on p.cargoid=c.cargoid  where dni ='$codigo'");

		$r = mysqli_fetch_assoc($sql);
		$this->dni = $r["dni"];
		$this->paterno = $r["paterno"];
		$this->materno = $r["materno"];
		$this->nombre = $r["nombre"];
		$this->foto = $r["foto"];
		$this->celular = $r["celular"];
		$this->email = $r["email"];
		$this->sexo = $r["sexo"];
		$this->cargo = $r["cargo"];
		$this->password = $r["password"];
		$this->fec_nac = $r["fec_nac"];
	}
	public function personSearch($criterio)
	{
		//consulta todos los person
		$sql = mysqli_query($this->open(), "SELECT p.dni ,p.paterno,p.materno,p.nombre,p.foto,p.celular,c.nombre,p.email,p.sexo as cargo from person p inner join cargo c on p.cargoid=c.cargoid where p.paterno like '%$criterio%';  ");
		echo "
		<table class='striped responsive-table'>
		  <tr>
			<th>Dni</th>
			<th>Paterno</th>
			<th>Materno</th>
			<th>Nombre</th>
			<th>Celular</th>
			<th height='100'>Foto</th>
			<th>Cargo</th>
			<th>Email</th>
			<th>Opción</th>
			<th>Opción</th>
		  </tr>";
		while ($row = mysqli_fetch_array($sql)) {
			echo "<tr>";
			$cod_person = $row[0];
			echo "<td>" .  $row[0] . "</td>";
			echo "<td>" .  $row[1] . "</td>";
			echo "<td>" . $row[2] . "</td>";
			echo "<td>" . $row[3] . "</td>";
			echo "<td>" . $row[5] . "</td>";
			// decodificar base 64
			$foto = base64_encode($row[4]);
			if ($foto == "") {
				echo "<td height='100'>No Disponible</td>";
			} else {
				echo "<td height='100'><img src='data:image/jpeg;base64,$foto' width='100'height='100'></td>";
			}

			echo "<td>" . $row[6] . "</td>";
			echo "<td>" . $row[7] . "</td>";
		?>
			<!-- Modal Trigger -->
			<td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="personSelectOne('<?php echo $cod_person ?>'); Cancelar();  return false">Seleccionar</a></td>
			<td><a class="waves-effect waves-light btn red" href="" onclick="personDelete('<?php echo $cod_person ?>'); return false">Eliminar</a></td>
<?php
			echo "</tr>";
		}

		echo "</table>";
	}

	public function personFiltro($criterio1)
	{
		//consulta todos los person
		$s="SELECT p.dni ,p.paterno,p.materno,p.nombre,p.foto,p.celular,c.nombre,p.email,p.sexo as cargo from person p inner join cargo c on p.cargoid=c.cargoid where c.cargoid like '$criterio1';  ";
		$sql = mysqli_query($this->open(),$s );
		
		echo "
		<table class='striped responsive-table'>
		  <tr>
			<th>Dni</th>
			<th>Paterno</th>
			<th>Materno</th>
			<th>Nombre</th>
			<th>Celular</th>
			<th height='100'>Foto</th>
			<th>Cargo</th>
			<th>Email</th>
			<th>Opción</th>
			<th>Opción</th>
		  </tr>";
		while ($row = mysqli_fetch_array($sql)) {
			echo "<tr>";
			$cod_person = $row[0];
			echo "<td>" .  $row[0] . "</td>";
			echo "<td>" .  $row[1] . "</td>";
			echo "<td>" . $row[2] . "</td>";
			echo "<td>" . $row[3] . "</td>";
			echo "<td>" . $row[5] . "</td>";
			// decodificar base 64
			$foto = base64_encode($row[4]);
			if ($foto == "") {
				echo "<td height='100'>No Disponible</td>";
			} else {
				echo "<td height='100'><img src='data:image/jpeg;base64,$foto' width='100'height='100'></td>";
			}

			echo "<td>" . $row[6] . "</td>";
			echo "<td>" . $row[7] . "</td>";
		?>
			<!-- Modal Trigger -->
			<td><a class="waves-effect waves-light btn modal-trigger blue" href="" onclick="personSelectOne('<?php echo $cod_person ?>'); Cancelar();  return false">Seleccionar</a></td>
			<td><a class="waves-effect waves-light btn red" href="" onclick="personDelete('<?php echo $cod_person ?>'); return false">Eliminar</a></td>
<?php
			echo "</tr>";
		}

		echo "</table>";
	}

	public function personUpdate($codigo, $cargo, $paterno, $materno, $nombre, $celular, $dia, $mes, $año, $foto, $email, $sexo)
	{
		//VALIDAR FECHA
		if ($dia < 1 || $mes < 1) {
			echo "<script type='text/javascript'> alert('Elija correctamente su Fecha de cumpleaños');</script>";
			exit;
		}
		//VALIDAR FECHA
		$fec_nac =    $año . "-" . $mes . "-" . $dia;
		//si no hay ninguna foto eso quiere decir que no actualizaremos el campo foto
		// ya que si lo dejamos, la anterior foto lo eliminara si el valor es nulo
		if ($foto == "") {
			$sql = "UPDATE person SET cargoid='$cargo',paterno='$paterno',materno='$materno',nombre='$nombre',celular='$celular',fec_nac='$fec_nac',email='$email',sexo='$sexo' where dni='$codigo'";
			echo "holaaaaa";
		} else {
			$sql = "UPDATE person SET cargoid='$cargo',paterno='$paterno',materno='$materno',nombre='$nombre',celular='$celular',fec_nac='$fec_nac',foto='$foto',email='$email',sexo='$sexo' where dni='$codigo'";
		}
		mysqli_query($this->open(), $sql) or die('Error. ' . mysqli_error($sql));
		echo "<script>	
		person.codigo.value='$codigo';
		person.dni.value='$codigo';
		person.paterno.value='$paterno';
		person.materno.value='$materno';
		person.nombre.value='$nombre';
		person.celular.value='$celular';
		person.cargo.value='$cargo';
		person.Dia.value='$dia';
		person.Mes.value='$mes';
		person.Año.value='$año';
		person.email.value='$email';
			document.getElementById('fotografia').src= document.getElementById('foto_subida').src
			</script>";
		$this->personSelect();
	}
	public function personLogin($login, $password, $cargo)
	{
	//	
		// Consulta enviada a la base de datos
		$query = "SELECT p.dni ,p.password,c.nombre as cargo from person p inner join cargo c on p.cargoid=c.cargoid WHERE  dni  = '$login' and password='$password' and c.cargoid='$cargo';";
		$result = mysqli_query($this->open(), $query);
		// Que la Variable $row mantenga el resultado de la consulta
		$r = mysqli_fetch_assoc($result);
		if ($r["dni"] != "" || $r["password"] != "" || $r["cargo"] != "") {
			$cargo = $r["cargo"];
			//comprobar el cargo de usuario

			$_SESSION["login"] = $r["dni"];
			$_SESSION["password"] = $r["password"];
			$_SESSION["cargo"] = $r["cargo"];
			$cargo = $r["cargo"];
			$_SESSION['loggedin'] = true;
			echo "<script> window.location.href='index.php';</script>";
		} else {
			echo "<script>alert(' Usuario o Contraseña Incorrecta');</script>";
		}
	}
	public function personValidar()
	{
		if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
	
		} else {
		echo "<script>  alert('Logueese primero');	window.location.href='login.php';</script> ";
			exit;
		}
	}
	public function personChangePassword($password, $new_password, $repetir_password)
	{
		
		$dni = $_SESSION["login"];
		$password_sesion = $_SESSION["password"];

		if ($password == $password_sesion) {
			if ($new_password == $repetir_password && strlen($password) > 3) {
				$query = "UPDATE person SET password = '$new_password' WHERE  dni  ='$dni';";
				if (mysqli_query($this->open(), $query)) {
					$_SESSION['password'] = $new_password;
					echo "<script type='text/javascript'>alert('Contraseña ha cambiado');</script>";
					//include "enviar_email/cambiar_password.php";
				} else {
					echo "<script type='text/javascript'>alert('Error de cambio de contraseña');</script>";
				}
			} else {
				echo "<script>alert('error de repetir password  o el tamaño de contraseña es muy corto');</script>";
			}
		} else {
			echo "<script type='text/javascript'>alert('Contraseña Incorrecta');</script>";
		}
	}

	public function personSearch2($criterio3)
	{
		echo "<script>
$(document).ready(function() {
	$('input.autocomplete').autocomplete({
		data: {
			'Apple': null,
			'Microsoft': null,
			'Google': 'https://placehold.it/250x250',";
		$query_alumno = mysqli_query(
			$this->open(),
			"SELECT p.dni ,p.paterno,p.materno,p.nombre,p.foto,p.celular,c.nombre,p.email,p.sexo as cargo
				 from person p inner join cargo c on p.cargoid=c.cargoid where concat(p.paterno,' ',p.materno,' ',p.nombre) like '%$criterio3%' and c.nombre like 'docente' ;"
		);
		while ($rrr = mysqli_fetch_array($query_alumno)) {
			echo "'" . $rrr[0] .
				" " . $rrr[1] .
				" " . $rrr[2] .
				" " . $rrr[3] .
				" " .
				"' : null,";
		}
		echo "ultimo: null

		},
	});
});</script>";
	}
	
}

$person = new person("");
//verificamos el metodo recibido
if ($metodo == "insert") {
	$person->personInsert($dni, $cargo, $paterno, $materno, $nombre, $celular, $dia, $mes, $año, $foto, $email, $sexo);
} elseif ($metodo == "delete") {
	$person->personDelete($codigo);
} elseif ($metodo == "select") {
	$person->personSelectOne($codigo);
} elseif ($metodo == "search") {
	$person->personSearch($criterio);
} elseif ($metodo == "update") {
	$person->personUpdate($codigo, $cargo, $paterno, $materno, $nombre, $celular, $dia, $mes, $año, $foto, $email, $sexo);
} elseif ($metodo == "login") {
	$person->personLogin($login, $password, $cargo);
} elseif ($metodo == "changePassword") {

	$person->personChangePassword($password, $new_password, $repetir_password);
}
elseif ($metodo == "filtro") {

	$person->personFiltro($criterio1);
}
elseif ($metodo == "search2") {

	$person->personSearch2($criterio3);
}
