<?php

//CHECK DATABASE CONNECTION
$conn = null;
$conn = checkDbConnection();
// USE MODELS
$notification = new Notification($conn);

if (array_key_exists('notificationid', $_GET)) {
    //CHECK DATA
    checkPayload($data);
    //CHECKING DATA
    $notification->notification_aid = $_GET['notificationid'];
    $notification->notification_name = checkIndex($data, 'notification_name');
    $notification->notification_email = checkIndex($data, 'notification_email');
    $notification->notification_purpose = checkIndex($data, 'notification_purpose');
    $notification->notification_updated = date('Y-m-d H:i:s');

    $notification_name_old = $data['notification_name_old'];


    //VALIDATION

    checkId($notification->notification_aid);

    compareName(
        $notification, // PASS THE MODEL PARAMETER 1
        $notification->notification_name, // PASS THE NAME PARAMETER 2
        $notification_name_old // PASS THE OLD NAME || PARAMETER 3
    );

    $query = checkUpdate($notification);
    returnSuccess($notification, 'notification update', $query);
}

// exist if not available
checkEndpoint();
