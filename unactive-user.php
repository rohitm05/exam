<?php
include "con.php";
session_start();
$query="update users set status='0' where id='".$_REQUEST['id']."'";
$result=mysqli_query($con,$query);
if($result)
	{
		$query="delete from user_answer where user_id='".$_REQUEST['id']."'";
		mysqli_query($con,$query);
		$query="update users set result=NULL where id='".$_REQUEST['id']."'";
		mysqli_query($con,$query);
		$_SESSION['msg']="User activated successfully";
		header("Location: usermanagement.php");
	}
	else
	{
		$_SESSION['err_msg']="User was not activated";
		header("Location: usermanagement.php");	
	}
?>