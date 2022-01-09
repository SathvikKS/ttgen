<?php
    session_start();
    if(!$_SESSION['auth']){
        header('location: stdlogin.html');
    }
 ?>   

 <h1>WELCOME YOU ARE AUTHENTICATED<\</h1>