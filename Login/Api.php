<?php
    require_once '../DbConnect.php';
 
    $response = array();
 
    if(isset($_GET['apicall'])){
 
        switch($_GET['apicall']){
    
        case 'login':
    
            if(isTheseParametersAvailable(array('username', 'password'))){
        
                $username = $_POST['username'];
                $password = $_POST['password']; 
                
                $stmt = $conn->prepare("SELECT id_user, username, password, namauser FROM register WHERE username = ? AND password = ?");
                $stmt->bind_param('ss',$username, $password);
                
                $stmt->execute();
                
                $stmt->store_result();
                
                if($stmt->num_rows > 0){
                
                $stmt->bind_result($id, $username, $password, $namauser);
                $stmt->fetch();
                
                $user = array(
                'id'=>$id, 
                'username'=>$username, 
                'password'=>$password,
                'namauser'=>$namauser
                );
                
                $response['error'] = false; 
                $response['message'] = 'Login successfull'; 
                $response['user'] = $user; 
                }else{
                $response['error'] = false; 
                $response['message'] = 'Invalid username or password';
                }
            }
            break; 
    
            default: 
            $response['error'] = true; 
            $response['message'] = 'Invalid Operation Called';
        }
 
    }else{
    $response['error'] = true; 
    $response['message'] = 'Invalid API Call';
    }
 
    echo json_encode($response);
 
    function isTheseParametersAvailable($params){
        
        foreach($params as $param){
        if(!isset($_POST[$param])){
        return false; 
        }
        }
        return true; 
    }
?>