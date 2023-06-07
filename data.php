<?php
    // Name: Pritam Dhaugoda
    // Student ID: 2226153


  // Select weather data for given parameters
  $sql2 = "SELECT *
  FROM weather
  WHERE name = '{$_GET['city']}'
  AND dt >= DATE_SUB(NOW(), INTERVAL 1800 SECOND)
  ORDER BY dt DESC limit 1";
  $result = $con -> query($sql2);
  // If 0 record found
  if ($result->num_rows == 0) {
    // Fetching the API
    $data=file_get_contents("https://api.openweathermap.org/data/2.5/weather?q={$_GET['city']}&appid=6367695619317589abc0070b43ee19ba&units=metric");
        
        //changing string API data to object 
        $arr2=json_decode($data);
    // Storing Data in a variable which are taken from the API
    $date1=date_create(null);
    $dt= date_format($date1,"Y-m-d H:i:s");
    $name=$arr2->name;
    $Lat=$arr2->coord->lat;
    $Long=$arr2->coord->lon;
    $Condition=$arr2->weather[0]->description;
    $Speed=$arr2->wind->speed;
    $Direction=$arr2->wind->deg;
    $Temp=$arr2->main->temp;
    $Humidity=$arr2->main->humidity;
    $Pressure=$arr2->main->pressure;
    $Rise=$arr2->sys->sunrise;
    $Set=$arr2->sys->sunset;
    $W=$arr2->weather[0]->main;


    $in="insert into weather values('$name','$dt','$Lat','$Long','$Condition','$Speed','$Direction','$Temp','$Humidity','$Pressure','$Rise','$Set','$W')";
    $con->query($in);
  }
?>