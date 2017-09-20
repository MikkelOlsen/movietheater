<?php
    ob_start();
    session_start();
    require_once 'classes/security.class.php';
    require_once 'config.php';

    $security = new Security($db);
    
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="frontend/assets/style.css"> 
    <title>Film Biograf</title>
</head>
<body class="container">
<header>
    <?php require_once 'frontend/plugins/header.php'; ?>
</header>
<main>
    <?php
        if($security->secGetMethod('GET') || $security->secGetMethod('POST')) {
            $get = $security->secGetInputArray(INPUT_GET);
            if(isset($get['p']) && !empty($get['p'])) {
                switch ($_GET['p']) {
                    case 'movielist':
                        require_once 'frontend/includes/list.php';
                        break;
                    case 'home':
                        require_once 'frontend/includes/home.php';
                        break;
                    case 'list':
                        require_once 'frontend/includes/list.php';
                        break;
                    
                    default:
                        header('Location: ?p=home');
                        break;
                }
            }
            else {
                header('Location: index.php?p=home');
        }
    }
       
    ?>
</main>
<footer>
    <?php
        require_once 'frontend/plugins/footer.php';
    ?>
</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

</body>
</html>
