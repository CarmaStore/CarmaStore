<?php

header('Content-Type: application/json');

    //Conexion a base de datos standar
    $cnx = mysqli_connect('localhost','root','','proyecto') or die("error");
    mysqli_query($cnx,"set names utf8");

    //En donde se guardará toda la información
    $datos = array();    


if(isset($_GET['game'])){
    
    $var = $_GET['game'];
    
    if($var == 0){
        //Si no hay parametro GET
        $sql = 'select * from games';
    }else{
        //Datos del parametro GET
        $sql = "select * from games where id_g = ".$var;
    }
    
    $query = mysqli_query($cnx,$sql);
    
    while($r = mysqli_fetch_assoc($query)){
        /* array[id-index][valor-campo] = valor */
        $datos[$r['id_g']]["id"]=$r['id_g'];
        $datos[$r['id_g']]["name"]=$r['nom_g'];
        $datos[$r['id_g']]["info"]=$r['info_g'];
        $datos[$r['id_g']]["date"]=$r['fecha'];
        $datos[$r['id_g']]["company"]=$r['Company'];
        $datos[$r['id_g']]["price"]=$r['precio'];
        $datos[$r['id_g']]["languaje"]=$r['idioma'];
        $datos[$r['id_g']]["photo"]=$r['foto_g'];
    }
    
}

//Salida de todos los datos
echo json_encode($datos);



