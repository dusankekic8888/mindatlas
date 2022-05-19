<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();

include_once "./lib/class.libMsql.php";

// Config
$config_url=$_SERVER["SERVER_NAME"].'/mindatlas';
$config_base_url = "http://$config_url/";

// Route
$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";

switch($com){
    case "ajax_call":
        include_once "./controller/ajax_call.php";
        break;
    case "generate-data":
        $page_title = "Generate data";
        include_once "./controller/generate.php";
        break;
    default:
        $page_title = "Course Report";
        $view = "index";
        break;
}
?>


<!doctype html>
<html>
<head>
    <base href="<?=$config_base_url?>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <title><?=$page_title ? $page_title : "Courses Enrollment System"?></title>

    <link href="themes/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="themes/css/style.css" rel="stylesheet" type="text/css" />

</head>

<body class="">

<div class="wrapper">
    <div class="clearfix"></div>

    <div class="contentPage">
        <div class="container">

            <?php if($page_title){?>
                <h1 class="headTitlePage"><?=$page_title?></h1>
            <?php }?>

            <?php
                if(isset($view))
                include "./views/{$view}.php";
            ?>

        </div>
    </div>

</div>
<div id="loading"></div>

<script type="text/javascript" src="themes/js/jquery.min.js"></script>
<script type="text/javascript" src="themes/js/bootstrap.min.js"></script>
<script type="text/javascript" src="themes/js/script.js"></script>

</body>
</html>