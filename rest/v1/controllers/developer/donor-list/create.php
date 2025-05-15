<?php

$conn = null;
$conn = checkDbConnection();
// MAKE INSTANCE OF A CLASS
$donor_list = new DonorList($conn);

//  GET METHOD REQUEST SHOULD NOT BE PRESENT IN THIS REQUEST
if (array_key_exists("donor_listid", $_GET)) {
    checkEndpoint();
}
// CHECK IF DATA HAS VALUE
checkPayload($data);
// GET DATA
$donor_list->donor_list_first_name = checkIndex($data, 'donor_list_first_name');
$donor_list->donor_list_last_name = checkIndex($data, 'donor_list_last_name');
$donor_list->donor_list_email = checkIndex($data, 'donor_list_email');
$donor_list->donor_list_contact_number = checkIndex($data, 'donor_list_contact_number');
$donor_list->donor_list_address = checkIndex($data, 'donor_list_address');
$donor_list->donor_list_city = checkIndex($data, 'donor_list_city');
$donor_list->donor_list_state_province = checkIndex($data, 'donor_list_state_province');
$donor_list->donor_list_country = checkIndex($data, 'donor_list_country');
$donor_list->donor_list_zip = checkIndex($data, 'donor_list_zip');
$donor_list->donor_list_is_active = 1;
$donor_list->donor_list_created = date("Y-m-d H:i:s");
$donor_list->donor_list_updated = date("Y-m-d H:i:s");

// VALIDATION
isNameExist($donor_list, $donor_list->donor_list_first_name);

$query = checkCreate($donor_list);
returnSuccess($donor_list, 'donor_list create', $query);
