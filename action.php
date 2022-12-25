<?php 
include('db.php');

if(isset($_POST['action']))
{
	if($_POST['action'] == 'insert' && !empty($_POST['name']) && !empty($_POST['email']))
	{

		$name = trim($_POST['name']);
		$email = trim($_POST['email']);

		$query = "INSERT INTO curd_user (name,email) VALUES('{$name}','{$email}')";
		if(mysqli_query($con,$query))
		{
			echo "Data Inserted Successfully";
		}else{
			echo "Data not inserted Please try again";

		}

		
	}// action insert check

	if($_POST['action'] == 'fetch_single')
	{
		$id =$_POST['id'];
		$query="SELECT * FROM curd_user WHERE id='{$id}'";
		$sql= mysqli_query($con,$query);
		$run=mysqli_fetch_array($sql);

		$data['name'] =$run['name'];
		$data['email'] =$run['email'];

		echo json_encode($data);

		


	}//fetch_single

		if($_POST['action'] == 'update' && !empty($_POST['name']) && !empty($_POST['email']))
		{
			$name = trim($_POST['name']);
		    $email = trim($_POST['email']);
		    $id = $_POST['hidden_id'];

$query = "UPDATE curd_user SET name ='{$name}',email='{$email}' WHERE id='{$id}'";
		if(mysqli_query($con,$query))
		{
			echo "Data Updateed Successfully";
		}else{
			echo "Data not Update Please try again";

		}

		}// update data

}

 ?>
