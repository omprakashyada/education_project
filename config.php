<?php
$connection = new mysqli("localhost","root","","state_filter");
if (! $connection){
    die("Error in connection".$connection->connect_error);
}