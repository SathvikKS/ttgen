<php

// Database connection
	$conn = new mysqli('%','yashmitha','Yash@123','Timetable_generator');
	if(!$con){
		
		die("Connection Failed : ".mysqli_error($con));
	} 
    else
    {
        echo "Connection Established";
    }
?>   