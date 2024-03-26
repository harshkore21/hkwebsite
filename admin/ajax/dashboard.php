<?php 

    require('../inc/db_config.php');
    require('../inc/essentials.php');
    adminLogin();

    if (isset($_POST['booking_analytics'])) 
    {
        $frm_data = filteration($_POST);

        $condition = "";

        if ($frm_data['period']==1) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 7 DAY AND NOW()";
        }
        else if ($frm_data['period']==2) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 30 DAY AND NOW()";
        }
        else if ($frm_data['period']==3) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 90 DAY AND NOW()";
        }
        else if ($frm_data['period']==4) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 1 YEAR AND NOW()";
        }


        // SQL query for transferring 'price' to 'trans_amt'
        $sql = "UPDATE booking_order
        JOIN booking_details ON booking_order.booking_id = booking_details.booking_id
        SET booking_order.trans_amt = booking_details.total_pay";

        // Execute the SQL query
        mysqli_query($con, $sql);

        // sql query to show total booking, active bookings, cancelled bookings and their amounts
        $result = mysqli_fetch_assoc(mysqli_query($con, "SELECT
          COUNT(CASE WHEN booking_status!='pending' AND booking_status!='payment failed' THEN 1 END) AS `total_bookings`,
          SUM(CASE WHEN booking_status!='pending' AND booking_status!='payment failed' THEN `trans_amt` END) AS `total_amt`,

          COUNT(CASE WHEN booking_status='booked' AND arrival=1 THEN 1 END) AS `active_bookings`,
          SUM(CASE WHEN booking_status='booked' AND arrival=1 THEN `trans_amt` END) AS `active_amt`,

          COUNT(CASE WHEN booking_status='cancelled' AND refund=0 THEN 1 END) AS `cancelled_bookings`,
          SUM(CASE WHEN booking_status='cancelled' AND refund=0 THEN `trans_amt` END) AS `cancelled_amt`

          FROM `booking_order` $condition"));

        $output = json_encode($result);

        echo $output;
    }

    if (isset($_POST['user_analytics'])) 
    {
        $frm_data = filteration($_POST);

        $condition = "";

        if ($frm_data['period']==1) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 7 DAY AND NOW()";
        }
        else if ($frm_data['period']==2) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 30 DAY AND NOW()";
        }
        else if ($frm_data['period']==3) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 90 DAY AND NOW()";
        }
        else if ($frm_data['period']==4) {
            $condition = "WHERE datentime BETWEEN NOW() - INTERVAL 1 YEAR AND NOW()";
        }

        $total_new_reg = mysqli_fetch_assoc(mysqli_query($con,"SELECT COUNT(id) AS `count` 
        FROM `user_cred` $condition"));
       
        $total_queries = mysqli_fetch_assoc(mysqli_query($con,"SELECT COUNT(sr_no) AS `count` 
          FROM `user_queries` $condition"));

        $total_reviews = mysqli_fetch_assoc(mysqli_query($con,"SELECT COUNT(sr_no) AS `count` 
          FROM `rating_review` $condition"));
          

        $output = ['total_new_reg' => $total_new_reg['count'],
            'total_queries' => $total_queries['count'],
            'total_reviews' => $total_reviews['count']
        ];

        $output = json_encode($output);

        echo $output;
    }

?>