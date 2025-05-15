<?php

//CHECK DATABASE CONNECTION
$conn = null;
$conn = checkDbConnection();
// USE MODELS
$donor_list = new DonorList($conn);

if (array_key_exists('donor_listid', $_GET)) {
    //CHECK DATA
    checkPayload($data);
    //CHECKING DATA
    $donor_list->donor_list_aid = $_GET['donor_listid'];
    $donor_list->donor_list_first_name = checkIndex($data, 'donor_list_first_name');
    $donor_list->donor_list_first_name = checkIndex($data, 'donor_list_last_name');
    $donor_list->donor_list_email = checkIndex($data, 'donor_list_email');
    $donor_list->donor_list_contact_number = checkIndex($data, 'donor_list_contact_number');
    $donor_list->donor_list_address = checkIndex($data, 'donor_list_address');
    $donor_list->donor_list_city = checkIndex($data, 'donor_list_city');
    $donor_list->donor_list_state_province = checkIndex($data, 'donor_list_state_province');
    $donor_list->donor_list_country = checkIndex($data, 'donor_list_country');
    $donor_list->donor_list_zip = checkIndex($data, 'donor_list_zip');
    $donor_list->donor_list_updated = date('Y-m-d H:i:s');

    $donor_list_name_old = $data['donor_list_name_old'];


    //VALIDATION

    checkId($donor_list->donor_list_aid);

    compareName(
        $donor_list, // PASS THE MODEL PARAMETER 1
        $donor_list->donor_list_first_name, // PASS THE NAME PARAMETER 2
        $donor_list_name_old // PASS THE OLD NAME || PARAMETER 3
    );

    $query = checkUpdate($donor_list);
    returnSuccess($donor_list, 'donor_list update', $query);
}

// exist if not available
checkEndpoint();
