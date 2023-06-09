<?php
include "conn3.php";


$username = $_POST['username'];
$password = $_POST['password'];
$name = $_POST['name'];
$username_='';




    if($username != '' AND $password !=''AND $name !='') {
        $aSQL = "SELECT * from t_user_signup where username=$username";
        $aQResult=mysqli_query($connect, $aSQL);
        while ($aRow = mysqli_fetch_array($aQResult))
        {
        $username_=$aRow["username"];
        echo json_encode('username_exist');
        }
    if($username_ == NULL) {
        $result2 = mysqli_query($connect,
        "insert into t_user_signup
        set username='$username', password='$password',
        name='$name' "
        );
        echo json_encode('success');
        }
        $username_=NULL;}
    else{
        echo json_encode('data_not_complete');
        }
        $username_=NULL;
?>
