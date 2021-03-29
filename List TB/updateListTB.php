<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once '../koneksi.php';
    include_once 'listTB.php';
    
    $database = new Database();
    $db = $database->getConnection();
    
    $item = new User($db);
    
    $data = json_decode(file_get_contents("php://input"));
    
    $item->id_tambal_ban = $data->id_tambal_ban;
    
    // employee values
    $item->latitude = $data->latitude;
    $item->longitude = $data->longitude;
    $item->nama_tambal_ban = $data->nama_tambal_ban;
    $item->deskripsi = $data->deskripsi;
    $item->jam_operasi = $data->jam_operasi;
    
    if($item->updateUser()){
        echo json_encode("ISO ASW!!!!");
    } else{
        echo json_encode("GA ISO GBLK!!!");
    }
?>