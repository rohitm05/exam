<?php
include "con.php";
session_start(); 
if (isset($_POST['add-btn'])) 
{
	$query="update category set category_des='".$_POST['description']."', time='".$_POST['time']."' where id='".$_POST['id']."'";
	$result=mysqli_query($con,$query);
	if($result)
	{
		$_SESSION['msg']="Category updated successfully";
		header("Location: category.php");
	}
	else
	{
		$_SESSION['err_msg']="Category was not updated";
		header("Location: category.php");	
	}
} 



?>