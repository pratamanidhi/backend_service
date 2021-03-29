<?php 

	class User{
        // Connection
        private $conn;

        // Table
        private $db_table = "list_tambal_ban";

        // Columns
		public $id_tambal_ban;
        public $latitude;
        public $longitude;
        public $nama_tambal_ban;
        public $deskripsi;
        public $jam_operasi;
        public $alamat;
        public $detail_harga;
        public $harga;
        public $no_telepon;

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
                        latitude = :latitude, 
                        longitude = :longitude, 
                        nama_tambal_ban = :nama_tambal_ban, 
                        deskripsi = :deskripsi,
                        jam_operasi = :jam_operasi";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->latitude=htmlspecialchars(strip_tags($this->latitude));
            $this->longitude=htmlspecialchars(strip_tags($this->longitude));
            $this->nama_tambal_ban=htmlspecialchars(strip_tags($this->nama_tambal_ban));
            $this->deskripsi=htmlspecialchars(strip_tags($this->deskripsi));
            $this->jam_operasi=htmlspecialchars(strip_tags($this->jam_operasi));
        
            // bind data
            $stmt->bindParam(":latitude", $this->latitude);
            $stmt->bindParam(":longitude", $this->longitude);
            $stmt->bindParam(":nama_tambal_ban", $this->nama_tambal_ban);
            $stmt->bindParam(":deskripsi", $this->deskripsi);
            $stmt->bindParam(":jam_operasi", $this->jam_operasi);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }

        #Delete

        function deleteUser(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id_tambal_ban = ?";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->id_tambal_ban=htmlspecialchars(strip_tags($this->id_tambal_ban));
        
            $stmt->bindParam(1, $this->id_tambal_ban);
        
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
                        latitude = :latitude, 
                        longitude = :longitude, 
                        nama_tambal_ban = :nama_tambal_ban, 
                        deskripsi = :deskripsi,
                        jam_operasi = :jam_operasi
                    WHERE 
                        id_tambal_ban = :id_tambal_ban";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->latitude=htmlspecialchars(strip_tags($this->latitude));
            $this->longitude=htmlspecialchars(strip_tags($this->longitude));
            $this->nama_tambal_ban=htmlspecialchars(strip_tags($this->nama_tambal_ban));
            $this->deskripsi=htmlspecialchars(strip_tags($this->deskripsi));
            $this->jam_operasi=htmlspecialchars(strip_tags($this->jam_operasi));
            $this->id_tambal_ban=htmlspecialchars(strip_tags($this->id_tambal_ban));
        
            // bind data
            $stmt->bindParam(":latitude", $this->latitude);
            $stmt->bindParam(":longitude", $this->longitude);
            $stmt->bindParam(":nama_tambal_ban", $this->nama_tambal_ban);
            $stmt->bindParam(":deskripsi", $this->deskripsi);
            $stmt->bindParam(":jam_operasi", $this->jam_operasi);
            $stmt->bindParam(":id_tambal_ban", $this->id_tambal_ban);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }

        public function getSingleData(){
            $sqlQuery = "SELECT
                        *
                      FROM
                        ". $this->db_table ."
                    WHERE 
                        id_tambal_ban = ?
                    LIMIT 0,1";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->id);
            $stmt->execute();
            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);

            $this->id = $dataRow["id_tambal_ban"];
            $this->latitude = $dataRow["latitude"];
            $this->longitude = $dataRow["longitude"];
            $this->nama_tambal_ban = $dataRow["nama_tambal_ban"];
            $this->deskripsi = $dataRow["deskripsi"];
            $this->jam_operasi = $dataRow["jam_operasi"];
            $this->alamat = $dataRow["alamat"];
            $this->detail_harga = $dataRow["detail_harga"];
            $this->harga = $dataRow["harga"];
            $this->no_telepon = $dataRow["no_telepon"];
        }

	}


?>