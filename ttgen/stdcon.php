<?php

    $username = $_POST['username'];
    $password = $_POST['password'];
	

	// Database connection
	$conn = new mysqli('localhost','root','','Timetable_generator');
	if(!$conn){
		
		die("Connection Failed : ".mysqli_error($con));
	} 
    else {
		$query= "SELECT * from Student where s_id ='$username' and s_pass='$password' "
		$result = mysqli_query( $conn, $query);
        if(mysqli_num_rows($result)== 1){
            session_start();
            $_SESSION['auth']= 'true';
            header('location: index.php');
     }
     else{
         echo "wrong username or password";
     }

?>