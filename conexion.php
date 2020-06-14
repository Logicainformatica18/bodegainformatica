 <?php
  class connection{
   //Configuracion de la conexion a base de datos
   protected $bd_host = "127.0.0.1"; 
   protected $bd_usuario = "root"; 
   protected $bd_password = ""; 
   protected $bd_base = "bodega";
   protected $con;
   public function open(){

 $this->con = mysqli_connect($this->bd_host, $this->bd_usuario, $this->bd_password,$this->bd_base);
   // mysqli_set_charset($this->con,'utf8');  
	// chequea la conexion si es que da error
	// mysqli_conect_error => Devuelve una cadena con la descripción del último error de conexión
	if (!$this->con) {
		die("Connection failed: " . mysqli_connect_error());
    }
    mysqli_set_charset($this->con,'utf8');  
    return $this->con;
   }
 }



   