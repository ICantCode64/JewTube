<?php
include __DIR__ . "/../core/main.php";

if (!$loggedin) {
    header("Location: /login.php");
    exit;
}

if (!$admin) {
    header("Location: /");
    exit;
}
?>