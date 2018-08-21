<?php
session_start();
include 'con.php';
if (isset($_POST['add-btn'])) {
	$query="insert into question (category_id,question,answer1,answer2,answer3,answer4,correct_ans) values('".$_POST['category_id']."','".$_POST['question']."','".$_POST['answer1']."','".$_POST['answer2']."','".$_POST['answer3']."','".$_POST['answer4']."','".$_POST['correct']."')";
	mysqli_query($con,$query);
	$result=mysqli_affected_rows($con);
	if($result>0)
	{
		$_SESSION['msg']="Question added successfully";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);
	}
	else
	{
	  $_SESSION['err_msg']="Question was not added";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);	
	}

}



?>