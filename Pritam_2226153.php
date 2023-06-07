<?php 
    // Name: Pritam Dhaugoda
    // Student ID: 2226153


    // Connecting database 
    $con=mysqli_connect("sql112.epizy.com", "epiz_32399442","TEwHFnpzU6D","epiz_32399442_2226153");
       

    // Creating table in the databse if it does not exist
    $sql="create table if not exists weather(name varchar(255), dt DATETIME , lat decimal(10,4), lon decimal(10,4), con varchar(255), speed decimal(10,3), direction int, temp decimal(10,3), humidity int, pressure int, sunrise int, sunset int, W_Main varchar(255))";
    $con->query($sql);
    
    // including another php file
    include('data.php');
      
    // Select weather data for given parameter
    $sql4 = "SELECT *
    FROM weather
    WHERE name = '{$_GET['city']}'
    ORDER BY dt DESC limit 1";
    $result2=$con->query($sql4);

    // Get data, convert to JSON and print
    $row = $result2 -> fetch_assoc();
    print json_encode($row);

    // Free result set and close connection
    $result -> free_result();
    $con -> close();
?>  