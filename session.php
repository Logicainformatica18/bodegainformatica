<?php
class session {
    public function session_inicio(){
        return session_start();
    }
}

$session=new session();
$session->session_inicio();
?>