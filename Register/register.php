<?php 

	class User{
        // Connection
        private $conn;

        // Table
        private $db_table = "register";

        // Columns
        public $id_user;
        public $username;
        public $password;
        public $namauser;

        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }

        // GET ALL
        public function getUser(){
            $sqlQuery = "SELECT * FROM " . $this->db_table . "";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }

        #Create

         function createUser(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                        SET
                        username = :username,
                        password = :password,
                        namauser = :namauser";

        $stmt = $this->conn->prepare($sqlQuery);

        //sanitize
        $this->username=htmlspecialchars(strip_tags($this->username));
        $this->password=htmlspecialchars(strip_tags($this->password));
        $this->namauser=htmlspecialchars(strip_tags($this->namauser));

        //bind data
        $stmt->bindParam(":username", $this->username);
        $stmt->bindParam(":password", $this->password);
        $stmt->bindParam(':namauser', $this->namauser);

        if ($stmt->execute()) {
            return true;
            }
        return false;
        
        }

        #Delete
         function deleteUser(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id_user = ?";
            $stmt = $this->conn->prepare($sqlQuery);

            $this->id_user=htmlspecialchars(strip_tags($this->id_user));

            $stmt->bindParam(1, $this->id_user);

            if($stmt->execute()){
                return true;
            }
            return false;
        }



        #Uodate
        public function updateUser(){
            $sqlQuery = "UPDATE
                        ". $this->db_table ."
                    SET 
                        username = :username,
                        password = :password,
                        namauser = :namauser
                    WHERE
                        id_user = :id_user";

            $stmt = $this->conn->prepare($sqlQuery);


            $this->username=htmlspecialchars(strip_tags($this->username));
            $this->password=htmlspecialchars(strip_tags($this->password));
            $this->namauser=htmlspecialchars(strip_tags($this->namauser));
            $this->id_user=htmlspecialchars(strip_tags($this->id_user));

            //bind data
            $stmt->bindParam(":username", $this->username);
            $stmt->bindParam(":password", $this->password);
            $stmt->bindParam(":namauser", $this->namauser);
            $stmt->bindParam(":id_user", $this->id_user);

            if ($stmt->execute()) {
                return true;
            }
            return false;
        }

        public function getSingleEmployee(){
            $sqlQuery = "SELECT
                        *
                      FROM
                        ". $this->db_table ."
                    WHERE 
                       id_user = ?
                    LIMIT 0,1";

            $stmt = $this->conn->prepare($sqlQuery);

            $stmt->bindParam(1, $this->id);

            $stmt->execute();

            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            
            $this->id = $dataRow['id_user'];
            $this->username = $dataRow['username'];
            $this->password = $dataRow['password'];
            $this->namauser = $dataRow['namauser'];
            

        }
    }


?>