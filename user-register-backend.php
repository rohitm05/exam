<?php
include "con.php";
session_start();

if(isset($_POST['reg-btn']))
{
	if($_POST['inputPassword']==$_POST['confirmPassword'])
	{
		$query="select id from users where email='".$_POST['inputEmail']."'";
		 $result=mysqli_query($con,$query);
		if(mysqli_num_rows($result)>0)
		{	

			$_SESSION['err_msg']="You have already appeared the exam";
			header("Location: user-register.php");	
		}
		else
		{

			$password=sha1($_POST['inputPassword']);
			$query="insert into users(name,email,mobile,password,status) values ('".$_POST['name']."','".$_POST['inputEmail']."','".$_POST['mobile']."','".$password."', '0')";
			
			mysqli_query($con,$query);
			$result=mysqli_affected_rows($con);
			if($result>0)
			{
				$_SESSION['email']=$_POST['inputEmail'];
				$last_id = mysqli_insert_id($con);
				$_SESSION['id']=$last_id;
				header("Location: quiz.php");
			}
			else
			{
				$_SESSION['err_msg']="Problem in Registration ";
				header("Location: user-register.php");
				
			}

		
		}
	
	}

}
?>