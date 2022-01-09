<?php

// Database connection
	$conn = new mysqli('localhost','root','','Timetable_generator');
	if(!$conn){
		
		die("Connection Failed : ".mysqli_error($con));
	} 
    else
    {
        echo "Connection Established";
    }
?>   