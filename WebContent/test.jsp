<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>

<style type="text/css">
	@charset "utf-8";
	.menu{
		position: relative;
		color: #5f6368;
		border: solid 1px #dadce0;
		border-radius: 1vw;
		display: inline-block;
		padding: 6px 8px 6px 8px; 
		/*padding: top right bottom left*/
		cursor: pointer;
	}

	.clicked_menu{
		color: ;border-color: #4285f4;
		color: #4285f4;
		background: #e9f1fe;
    }
</style>

<script type="text/javascript">
	$(document).ready(function(){
		$('.menu').each(function(index){
			$(this).attr('menu-index', index);
		}).click(function(){
			var index = $(this).attr('menu-index');
			$('.menu[menu-index=' + index + ']').addClass('clicked_menu');
			$('.menu[menu-index!=' + index + ']').removeClass('clicked_menu');
		});
	});
</script>

</head>

<body>
	<div class="menu">cash</div>
	<div class="menu">search</div>
	<div class="menu">send</div>	
</body>

</html>