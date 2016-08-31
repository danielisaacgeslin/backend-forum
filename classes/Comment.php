<?php
    class Comment {
        public function setComment($comment, $article_id){
            $creation_user = 1;
            
            if(!isset($comment) or !isset($article_id)){
                return false;
            }
            
            $link = Connection::connect();
            
            $query = 'INSERT INTO COMMENTS (TEXT, CREATION_USER) VALUES (:text, :creation_user)';
            
            $stmt = $link->prepare($query);
            
            $stmt->bindParam(':text', $comment, PDO::PARAM_STR);
            $stmt->bindParam(':creation_user', $creation_user, PDO::PARAM_INT);
            
            if(!$stmt -> execute()){
                return false;
            }
            
            $comment_id = $link->lastInsertId();
            
            $query = 'INSERT INTO COMMENT_LISTS (COMMENT_ID, ARTICLE_ID) VALUES (:comment_id, :article_id)';
            
            $stmt = $link->prepare($query);
            $stmt->bindParam(':comment_id', $comment_id, PDO::PARAM_INT);
            $stmt->bindParam(':article_id', $article_id, PDO::PARAM_INT);
            
            return $stmt -> execute();
        }
        
        public function __construct(){
            
        }
    }
?>