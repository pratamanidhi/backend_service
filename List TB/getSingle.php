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

    $item->id = isset($_GET['id']) ? $_GET['id'] : die();
  
    $item->getSingleData();

    if($item->id != null){
        // create array
        $emp_arr = array(
            "id" =>  $item->id,
            "latitude" => $item->latitude,
            "longitude" => $item->longitude,
            "nama_tambal_ban" => $item->nama_tambal_ban,
            "deskripsi" => $item->deskripsi,
            "jam_operasi" => $item->jam_operasi,
            "alamat" => $item->alamat,
            "detail_harga" => $item->detail_harga,
            "harga" => $item->harga,
            "no_telepon" => $item->no_telepon,
        );
      
        http_response_code(200);
        echo json_encode($emp_arr);
    }
      
    else{
        http_response_code(404);
        echo json_encode("Employee not found.");
    }
?>