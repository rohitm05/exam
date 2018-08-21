<?php
session_start();
include "con.php";
$query="delete from category where id='".$_REQUEST['id']."'";
mysqli_query($con,$query);
$query="delete from question where category_id='".$_REQUEST['id']."'";
mysqli_query($con,$query);
$_SESSION['err_msg']="Category deleted successfully";
header("Location: category.php");
?>