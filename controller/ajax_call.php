<?php 

$request = json_decode(file_get_contents('php://input'),true);
$act = $request['act'];
    // data init
    if($act == 'init'){
        $userList = db_result_array("tbl_user");
        $courseList = db_result_array("tbl_course");
        $data['users'] = $userList;
        $data['courses'] = $courseList;
        echo json_encode($data);
    }

    // search action
    if($act == 'search'){

        //search condition from params
        $search_conditional ="";

        $userID = intval($request['userID']);
        $search_conditional .= $userID > 0 ? " and U.id = $userID" : "";

        $courseID = (int) $request['courseID'];
        $search_conditional .= $courseID > 0 ? " and C.id = $courseID" : "";
        
        // Generate sql
        $sql_str = "
            select 
                U.*, C.course, S.status, S.style
            from 
                tbl_user U 
                LEFT JOIN tbl_enrollment E on U.id = E.userID
                LEFT JOIN tbl_course C on E.courseID = C.id
                LEFT JOIN tbl_completionStatus S on E.completionStatusID = S.id
            where 1 = 1 {$search_conditional}
            order BY
                U.firstName
        ";
        
        $data = db_result_array_sql($sql_str);
        echo json_encode($data);
    }

die();
?>