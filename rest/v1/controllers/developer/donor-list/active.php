<?php
// set http header
require '../../../../core/header.php';
// use needed function
require '../../../../core/functions.php';
// use model
require '../../../../models/developer/settings/donor-list/Donor_list.php';
// check database connection
$conn = null;
$conn = checkDbConnection();
// store model in variable 
$donor_list = new DonorList($conn);
// get payload
$body = file_get_contents("php://input");
$data = json_decode($body, true);
// VALIDATED API KEY
if (isset($_SERVER['HTTP_AUTHORIZATION'])) {
    if (array_key_exists('donor_listid', $_GET)) {
        // CHECK DATA
        checkPayload($data);
        $donor_list->donor_list_aid = $_GET['donor_listid'];
        $donor_list->donor_list_is_active = trim($data['isActive']);
        $donor_list->donor_list_updated = date('Y-m-d H:i:s');

        checkId($donor_list->donor_list_aid);
        $query =checkActive($donor_list);
        returnSuccess($donor_list, 'donor_list active', $query);
    }
    // 404 if endpoint not available
    checkEndPoint();
}
