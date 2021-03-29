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
    
    // employee values
    $item->id_user = $data->id_user;
    $item->username = $data->username;
    $item->password = $data->password;
    $item->namauser = $data->namauser;

    
    if($item->updateUser()){
        echo json_encode("ISO ASW!!!!");
    } else{
        echo json_encode("GA ISO GBLK!!!");
    }
?>