<?php
    class Article {  
        public function setArticle($data){
            $creation_user = 0;
            
            if(!isset($data) or !isset($data['title']) or !isset($data['description']) or !isset($data['body'])){
                return false;
            }
            
            $link = Connection::connect();
            $query = 'INSERT INTO ARTICLES '
                    . '(TITLE, DESCRIPTION, BODY, CREATION_USER) '
                    . 'VALUES (:title, :description, :body, :creation_user)';
            $stmt = $link->prepare($query);
            
            $stmt->bindParam(':title', $data['title'], PDO::PARAM_STR);
            $stmt->bindParam(':description', $data['description'], PDO::PARAM_STR);
            $stmt->bindParam(':body', $data['body'], PDO::PARAM_STR);
            $stmt->bindParam(':creation_user', $creation_user, PDO::PARAM_INT);
            
            return $stmt -> execute();
        }
        
        public function getArticle($id){
            $link = Connection::connect();
            
            $query = 'SELECT * FROM ARTICLES WHERE ID = :id';
            
            $stmt = $link->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        
        public function __construct(){
            
        }
    }
?>