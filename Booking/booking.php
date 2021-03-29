<?php 

	class User{
        // Connection
        private $conn;

        // Table
        private $db_table = "booking";

        // Columns
        public $id_booking;
        public $id_user;
        public $id_tambal_ban;
        public $namauser;
        public $tanggal_booking;
        public $jam_booking;
        public $jenis_kendaraan;
        public $request;

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
            public function createUser(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        id_user = :id_user, 
                        id_tambal_ban = :id_tambal_ban,
                        namauser = :namauser, 
                        tanggal_booking = :tanggal_booking,
                        jam_booking = :jam_booking, 
                        jenis_kendaraan = :jenis_kendaraan,
                        request = :request";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->id_user=htmlspecialchars(strip_tags($this->id_user));
            $this->id_tambal_ban=htmlspecialchars(strip_tags($this->id_tambal_ban));
            $this->namauser=htmlspecialchars(strip_tags($this->namauser));
            $this->tanggal_booking=htmlspecialchars(strip_tags($this->tanggal_booking));
            $this->jam_booking=htmlspecialchars(strip_tags($this->jam_booking));
            $this->jenis_kendaraan=htmlspecialchars(strip_tags($this->jenis_kendaraan));
            $this->request=htmlspecialchars(strip_tags($this->request));

        
            // bind data
            $stmt->bindParam(":id_user", $this->id_user);
            $stmt->bindParam(":id_tambal_ban", $this->id_tambal_ban);
            $stmt->bindParam(":namauser", $this->namauser);
            $stmt->bindParam(":tanggal_booking", $this->tanggal_booking);
            $stmt->bindParam(":jam_booking", $this->jam_booking);
            $stmt->bindParam(":jenis_kendaraan", $this->jenis_kendaraan);
            $stmt->bindParam(":request", $this->request);

        
            if($stmt->execute()){
               return true;
            }
            return false;
        }


        #Delete

        function deleteUser(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id_booking = ?";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->id_booking=htmlspecialchars(strip_tags($this->id_booking));
        
            $stmt->bindParam(1, $this->id_booking);
        
            if($stmt->execute()){
                return true;
            }
            return false;
        }

        #Update
        public function updateUser(){
            $sqlQuery = "UPDATE
                        ". $this->db_table ."
                    SET
                        id_user = :id_user, 
                        namauser = :namauser, 
                        jam_booking = :jam_booking, 
                        request = :request
                    WHERE 
                        id_booking = :id_booking";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->id_user=htmlspecialchars(strip_tags($this->id_user));
            $this->namauser=htmlspecialchars(strip_tags($this->namauser));
            $this->jam_booking=htmlspecialchars(strip_tags($this->jam_booking));
            $this->request=htmlspecialchars(strip_tags($this->request));

            $this->id_booking=htmlspecialchars(strip_tags($this->id_booking));
        
            // bind data
            $stmt->bindParam(":id_user", $this->id_user);
            $stmt->bindParam(":namauser", $this->namauser);
            $stmt->bindParam(":jam_booking", $this->jam_booking);
            $stmt->bindParam(":request", $this->request);
            
            $stmt->bindParam(":id_booking", $this->id_booking);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }

	}


?>