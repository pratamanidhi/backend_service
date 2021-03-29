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


    $item->id_user = $data->id_user;
    $item->id_tambal_ban = $data->id_tambal_ban;
    $item->namauser = $data->namauser;
    $item->tanggal_booking = $data->tanggal_booking;
    $item->jam_booking = $data->jam_booking;
    $item->jenis_kendaraan = $data->jenis_kendaraan;
    $item->request = $data->request;
    
    if($item->createUser()){
        $res = json_encode($item);
        echo $res;
    } else{
        echo 'GA ISO GBLK!!!';
    }
?>