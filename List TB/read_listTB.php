<?php 

	header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once "../koneksi.php";
    include_once "listTB.php";

    $database = new Database();
    $db = $database->getConnection();

    $item = new User($db);

    $stmt = $item->getUser();
    $itemCount = $stmt->rowCount();



    if($itemCount > 0){
        
        $userArr = array();
        $userArr["body"] = array();
        $userArr["itemCount"] = $itemCount;

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $e = array(
        "id_tambal_ban" => $id_tambal_ban,
        "latitude" => $latitude,
        "longitude" => $longitude,
        "nama_tambal_ban" => $nama_tambal_ban,
        "deskripsi" => $deskripsi,
        "jam_operasi" => $jam_operasi,
        "alamat" => $alamat,
        "harga" => $harga
            );

            array_push($userArr["body"], $e);
        }
        echo json_encode($userArr);
    }

    else{
        http_response_code(404);
        echo json_encode(
            array("message" => "No record found.")
        );
    }

?>   