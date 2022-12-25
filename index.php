<?php include "header.php" ?>
<div class="container-fluid">
	
<div class="alert h4 text-center ">
	Ajax-Curd Operation
</div>

<div class="form-group text-right mr-3">
	<button type="button" name="add_img" id="add_img" class="btn btn-success btn-xs">Add Image</button>

	<button type="button" name="add" id="add" class="btn btn-success btn-xs">Add</button>
</div>

<div class="table-responsive" id="table_data">
	
</div>
<!--  -->

</div>
<!-- container -->
<!-- start img dialog -->
<div id="img_dialog" title="Add Image">
	<form id="img_form" method="POST">
		<div class="form-group">
			<label for="img_type">Image Type</label>
			<input type="text" name="img_type" id="img_type" class="form-control">
			<span id="img_type_error" class="text-danger"></span>
		</div>
		<!-- form group -->
		<div class="form-group">
			<label for="img">Image</label>
			<input type="file" name="img" id="img" class="form-control">
			<span id="img_error" class="text-danger"></span>

		</div>
		<!-- form group -->
		<div class="form-group">
			<input type="submit" name="form_img_action" id="form_img_action" class="btn btn-danger">
		</div>

		<span id="img_status"></span>

	</form>
	
</div>

<!--start add dialog -->
<div id="user_dialog" title="Add Data">
	<form id="user_form" method="POST">
		<div class="form-group">
			<label>Name</label>
			<input type="text" name="name" id="name" class="form-control">
			<span id="name_error" class="text-danger"></span>
		</div>
		<!-- form group -->

		<div class="form-group">
			<label>email</label>
			<input type="email" name="email" id="email" class="form-control">
			<span id="email_error" class="text-danger"></span>
		</div>
		<!-- form group -->

		<div class="form-group">
			<input type="hidden" name="action" id="action" value="insert">
			<input type="hidden" name="hidden_id" id="hidden_id">
			<input type="submit" name="form_action" id="form_action" class="btn btn-info" value="Insert">

		</div>
		<!-- form group -->

	</form>
	
</div><!--end add dialog -->
<!-- action dialog box start -->

<div id="action_alert" title="Action">

	
</div><!-- action dialog box end -->



<script type="text/javascript">
	$(document).ready(function(){
		
		load_table_data();

		function load_table_data()
		{
			$.ajax({
				method:'POST',
				url:'fetch.php',
				success:function(respo)
				{
					$('#table_data').html(respo);
				},

			});
		}// load table data


		$('#user_dialog').dialog({
			autoOpen: false,
			width:400
		});

		$('#img_dialog').dialog({
			autoOpen: false,
			width:400
		});


		$('#action_alert').dialog({
			autoOpen:false,
			
		});

		$('#add').click(function(){
			$('#user_dialog').attr('title','Add Data');
			$('#action').val('insert');
			$('#form_action').val('Insert');
			$('#user_dialog').dialog('open');
			$('#user_form')[0].reset();
		});

		$('#add_img').click(function(){
			$('#img_dialog').attr('title',"Add Image");
			$('#form_img_action').val('Insert');
			$('#img_dialog').dialog('open');
			$('#img_form')[0].reset();

		});//add img

		$('#img_dialog').on('submit',function(eve){
			eve.preventDefault();
			var img_type = $('#img_type').val();
			//var img = $('#img').val();

			var t_error='';
var img = document.getElementById("img"),file = img.files[0];

            if(img_type.length == 0 || img_type.trim() == ""){
                $('#img_type_error').html('Please fill this field');
                $('#img_type').addClass('is-invalid');
                t_error='yes';

            }else{
                $('#img_type_error').html(' ');
                 $('#img_type').removeClass('is-invalid');

                $('#img_type').addClass('is-valid');
                t_error='';

            }
            // img type validation

            var formdata = new FormData();
     
     formdata.append("img", file);
     formdata.append("img_type", img_type);
     var ajax = new XMLHttpRequest();
  ajax.open( "POST", "img-action.php" );
  ajax.onreadystatechange = function() {
    if(ajax.readyState == 4 && ajax.status == 200) {
    
     $('#img_status').html(ajax.responseText); 
     $('#img_form')[0].reset();
    }
  }
  ajax.send( formdata );		

		});	// image dialog submit

		$('#user_form').on('submit',function(event){
			event.preventDefault();
			var	name = $('#name').val();
			var	email = $('#email').val();
			var	action = $('#action').val();
			var	hidden_id = $('#hidden_id').val();

			var n_error='';
			var e_error='';
			if(name.length == 0 || name.trim() == ""){
                $('#name_error').html('Please fill this field');
                $('#name').addClass('is-invalid');
                n_error='yes';

            }else{
                $('#name_error').html(' ');
                 $('#name').removeClass('is-invalid');

                $('#name').addClass('is-valid');
                n_error='';

            }
            // name validation
            if(email.length == 0 || email.trim() == ""){
                $('#email_error').html('Please fill this field');
                $('#email').addClass('is-invalid');
                e_error='yes';

            }else{
                $('#email_error').html(' ');
                 $('#email').removeClass('is-invalid');

                $('#email').addClass('is-valid');
                e_error='';

            }
            // email validation

            if(n_error == '' && e_error == '')
            {
            	$('#form_action').attr('disabled',true);
            	$.ajax({
            		method:'POST',
            		url:'action.php',
            		data:{name:name,email:email,action:action,hidden_id:hidden_id},
            		beforeSend:function(){
            			$('#form_action').val('Please Wait..')
            			$('#form_action').attr('disabled',true);

            		},
            		success:function(data){
            			$('#user_dialog').dialog('close');
            			$('#action_alert').html(data);
            			$('#action_alert').dialog('open');
            			$('#user_form')[0].reset();
            			$('#form_action').attr('disabled',false);
            			load_table_data();

            		}
            	});

            }else{
            	return false;
            }


		});//submit form


		$(document).on('click','.edit',function(){
			var id = $(this).attr('id');
			var action = 'fetch_single';
			$.ajax({
				url:"action.php",
				method:'POST',
				data:{id:id,action:action},
				dataType:'json',
				// beforeSend:function()
				// {
				//    $('.edit').html('Please Wait..');
				//    $('.edit').attr('disabled',true);

				// },
				success:function(data)
				{
					$('#name').val(data.name);
					$('#email').val(data.email);
					$('#user_dialog').attr('title','Edit Data');
					$('#action').val('update');
					$('#hidden_id').val(id);
					$('#form_action').val('Update');
					$('#user_dialog').dialog('open');
				},
			});
		});

	});// document ready
</script>

<?php include "header.php" ?>