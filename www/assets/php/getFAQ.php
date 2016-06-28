<?php
//get all the course from db and reply using json structure

//echo "I'm the php";

//connection to db
$mysqli = new mysqli("localhost", "fabiostim", "", "my_fabiostim");

if (mysqli_connect_errno()) { //verify connection
    echo "Error to connect to DBMS: ".mysqli_connect_error(); //notify error
    exit(); //do nothing else 
}
else {
    //echo "Successful connection"; // connection ok

	$slID = $_POST['slID'];

    # extract results mysqli_result::fetch_array
    $query = "SELECT * FROM (SELECT * FROM sl JOIN sl_category ON sl.sl_categoryID=sl_category.sl_category_id WHERE sl.slID='".$slID."') AS t1 JOIN faq on faq.slID=t1.slID ";
    //query execution
    $result = $mysqli->query($query);
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);	//<----- CORRECT HERE		
        }
        echo json_encode($myArray);
    }

    //free result
    $result->close();

    //close connection
    $mysqli->close();



}






?>