<?php 
require('db.php');

$sql="SELECT * FROM curd_user";

$query=mysqli_query($con,$sql);
$tableData='<table class="table table-strip table-dark table-hover table-bordered">
<thead class=""><tr>
  <th>#</th>
  <th>Name</th>
  <th>Email</th>
   <th>Edit</th>
   
</tr></thead>
<tbody >';
if(mysqli_num_rows($query)>0){
$n=0;
while($run=mysqli_fetch_array($query))
{
	$n++;
	$tableData .= '<tr>
            <td>'.$n.'</td>
	        <td>'.$run['name'].'</td>
	        <td>'.$run['email'].'</td>
	        <td><button type="button" class="btn btn-primary btn-xs edit" id="'.$run['id'].'">Edit Data</button></td>
	        
	        </tr>';
}// while loop

}else{
	$tableData.='<tr><td colspan="5">No data found</td></tr>';
}

$tableData .='</tbody><table>';

echo $tableData;

 ?>