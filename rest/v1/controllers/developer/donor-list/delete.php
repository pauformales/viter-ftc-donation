<?php


$conn = null;
$conn = checkDbConnection();

$donor_list = new DonorList($conn);

$body = file_get_contents("php://input");


if (array_key_exists('donor_listid', $_GET)) {
    $donor_list->donor_list_aid = $_GET['donor_listid'];
    checkId($donor_list->donor_list_aid);
    $query = checkDelete($donor_list);
    returnSuccess($donor_list, 'donor_list delete', $query);
}
