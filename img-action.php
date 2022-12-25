<?php 

if(isset($_FILES['img']) && isset($_POST['img_type']))
{
     $img_type =trim($_POST['img_type']);
	   $image = $_FILES['img'];	
			//print_r($image);
		 $name=$_FILES['img']['name'];
		 $type=$_FILES['img']['type'];
		 $size=$_FILES['img']['size'];
		 $tmp=$_FILES['img']['tmp_name'];

		 	 ////////////////
		 if($name=='')
		  {
              echo "<script>alert('Please select a Image')</script>
              Please select a Image
              ";
              exit();
           }
        if(($type=="image/jpeg")||($type=="image/jpg")||($type=="image/png"))
        {
           if(file_exists("image/" .$_FILES["img"]["name"]))
               {
                  echo "<span class='text-danger'>This file name already exists! Please try another File</span>
                  <script>$('#img').val('');</script>";
                  exit();
                }

              if($size<=500000) // 500kb
              {
		           move_uploaded_file($tmp,"image/$name");
               // write database query here
               echo "Image Inserted successfully";	  
		           
                }
             else{
                     echo "<span class='text-danger'>Please select file size is Less than 500 KB</span>
                     <script>$('#img').val('');</script>";
	             }
         }
          else{
                 echo "<span class='text-danger'>Please Select jpeg or png File Only</span>
                 <script>$('#img').val('');</script>";
               }

	    //move_uploaded_file($imgtmp,"images/".$imgname);


}// aadhar isset if close

 ?>