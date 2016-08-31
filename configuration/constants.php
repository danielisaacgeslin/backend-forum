<?php
    /* DIRECTORIES */
    define("ROOT", $_SERVER["DOCUMENT_ROOT"] . "/dgeslinServer/");
    define("ROOT_URL", "https://" . $_SERVER["SERVER_NAME"] . "/dgeslinServer/");
    
    /* DATABASE */
    define("DATA_BASE", "DGESLIN");
    define("HOST", "localhost");
    define("DB_USER", "root");
    define("DB_PASSWORD", "");
    
    /*RESPONSES*/
    define("OK", "OK");
    define("ERROR", "ERROR");
    define("INVALID_ROUTE", "route is missing or unrecognized");
?>