<?php
    $Users = db_result_array("tbl_user");
    $Courses = db_result_array("tbl_course");

    $db->reset();
    $db->setTable("tbl_enrollment");
    $db->delete();

    foreach($Users as $user){
        $number = rand(2, count($Courses) - 1);
        $random_numbers = array_rand($Courses, $number);

        foreach ($random_numbers as $no){
            $data = null;
            $data['uid'] = $user['id'];
            $data['cid'] = $Courses[$no]['id'];
            $data['completionid'] = rand(1,3);

            $db->reset();
            $db->setTable("tbl_enrollment");
            $db->insert($data);
        }
    }

?>