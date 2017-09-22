<?php
if($user->loginCheck($_SESSION['userid'])) {
    session_destroy();
    echo 'logged out';
    header('Location: ?p=home');
} else {
    echo 'error';
    header('Location: ?p=home');
}