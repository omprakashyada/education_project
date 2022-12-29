<?php
include "config.php";
include_once "Common.php";
if (isset($_POST['getStateByCountry']) == "getStateByCountry") {
    $countryId = $_POST['countryId'];
    $common = new Common();
    $states = $common->getStateByCountry($connection,$countryId);
    $stateData = '<option value="">State</option>';
    if ($states->num_rows>0){
        while ($state = $states->fetch_object()) {
            $stateData .= '<option value="'.$state->state.'">'.$state->state.'</option>';
        }
    }
    echo "test^".$stateData;
}
if (isset($_POST['getCityByState']) == "getCityByState") {
    $state = $_POST['state'];

    $common = new Common();
    $cities = $common->getCityByState($connection,$state);
    $cityData = '<option value="">City</option>';
    if ($cities->num_rows > 0){
        while ($city = $cities->fetch_object()) {
            $cityData .= '<option value="'.$city->id.'">'.$city->city_name.'</option>';
        }
    }
    echo "test^".$cityData;
}