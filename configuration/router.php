<?php
    $route = isset($_GET['route']) ? $_GET['route'] : '';
    
    switch($route){
        case 'ping':
            response(OK, array("time" => time()));
            break;
        default:
            response(ERROR, INVALID_ROUTE);
            break;
    }
?>