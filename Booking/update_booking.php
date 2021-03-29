<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once '../koneksi.php';
    include_once 'booking.php';
    
    $database = new Database();
    $db = $database->getConnection();
    
    $item = new User($db);
    
    $data = json_decode(file_get_contents("php://input"));
    
    $item->id_booking = $data->id_booking;
    
    // employee values
    $item->id_user = $data->id_user;
    $item->namauser = $data->namauser;
    $item->jam_booking = $data->jam_booking;
    $item->request = $data->request;

    
    if($item->updateUser()){
        echo json_encode("ISO ASW!!!!");
    } else{
        echo json_encode("GA ISO GBLK!!!");
    }
?>