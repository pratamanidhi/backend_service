<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once '../koneksi.php';
    include_once 'register.php';
    
    $database = new Database();
    $db = $database->getConnection();
    
    $item = new User($db);
    
    $data = json_decode(file_get_contents("php://input"));
    
    $item->id_user = $data->id_user;
    
    if($item->deleteUser()){
        echo json_encode("Wes Ilang Gok!!!");
    } else{
        echo json_encode("Rung Ilang SU!!!");
    }
?>