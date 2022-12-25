<?php include "header.php"; ?>


hii	

<button class="btn btn-danger">Click</button>
<button class="btn btn-success">Click</button>


<input type="text" name="a">
<p>My name is</p>

<div>Vishnu Sahani</div>


<script type="text/javascript">
	$(document).ready(function(){
		$("button" ).bind( "click", function() {
                alert( "Button Clicked!" )
          });


		$("html").append( "<button>Click Alert!</button>" );

	});

	//////////////
	 var str1 = "Hello ";
  var str2 = "world!";
 
	console.log(str1.concat(str2));
	console.log(concat('hello world'));

	function getMinsSecs() {
var dt = new Date();
return dt.getMinutes()+":"+dt.getSeconds();
}

$( "input" ).on( "click", function() {

$( "p" ).append( "Start time: " + getMinsSecs() + "<br />" );
$( "div" ).each(function( i ) {
$( this ).fadeOut( 1000 * ( i * 2 ) );
});
$( "div" ).promise().done(function() {
$( "p" ).append( "End time: " + getMinsSecs() + "<br />" );
});
});
</script>
</body>
</html>