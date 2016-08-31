<?php
    $route = isset($_GET['route']) ? $_GET['route'] : '';
    
    switch($route){
        case 'ping':
            response(OK, array("time" => time()));
            break;
        case 'getArticle':
            $article = new Article();
            response(OK, $article -> getArticle($_GET['id']));
            break;
        case 'saveArticle':
            $article = new Article();
            $success = $article -> setArticle($_POST);
            if($success){
                response(OK, "");
            }else{
                response(ERROR, "");
            }
            break;
        case 'getArticleList':
            $articleList = new ArticleList();
            response(OK, $articleList -> getArticleList());
            break;
        default:
            response(ERROR, INVALID_ROUTE);
            break;
    }
?>