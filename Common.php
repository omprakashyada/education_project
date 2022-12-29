<?php

class Common
{
  public function getCountry($connection)
  {
      $mainQuery = "SELECT * FROM countries";
      $result1 = $connection->query($mainQuery) or die("Error in main Query".$connection->error);
      return $result1;
  }

  public function getStateByCountry($connection,$countryCode){
      $query = "SELECT * FROM states WHERE country_code='$countryCode'";
      $result = $connection->query($query) or die("Error in  Query".$connection->error);
      return $result;
  }

  public function getCityByState($connection,$stateName){
      $query = "SELECT * FROM cities WHERE state_name='$stateName'";
      $result = $connection->query($query) or die("Error in  Query".$connection->error);
      return $result;
  }
}
