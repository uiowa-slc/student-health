<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language ?>" lang="<?php print $language->language ?>" dir="<?php print $language->dir ?>">

<head>
  <?php print $head; ?>
  <title><?php print $head_title; ?></title>
    <meta name="google-site-verification" content="s_lYM_8WGqeN2fvokvAq2u_S_1vdGYeEHCI0amJ-xUE" />
  <?php print $styles; ?>
<!--<style type='text/css'>@import url(/sites/all/themes/shs/css/ie7.css);</style>-->

<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.0r4/build/reset/reset-min.css" />
<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'/>
<link href='http://fonts.googleapis.com/css?family=Nobile' rel='stylesheet' type='text/css'/>
<link rel="shortcut icon" href="/sites/all/themes/shs/favicon.ico" type="image/x-icon" />

<!--script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>

  <?php print $scripts; ?>
<script type="text/javascript" src="/sites/all/themes/shs/js/jquery.coda-slider-2.0.js"></script>

  <script type="text/javascript"><?php /* Needed to avoid Flash of Unstyled Content in IE */ ?> </script>
  
  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-26']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</head>
<body class="<?php print $body_classes; ?>">
<iframe src="http://studentlife.uiowa.edu/assets/StudentLifeBar_shs.html" width="100%" height="38" scrolling="no" style="border: none" frameborder="0" >
</iframe>
<div id="background">
<div id="container">
<div id="wrapper">
<div id="header">
<h1 class="logo"><a href="<?php print $front_page; ?>"><?php print $site_name; ?></a></h1>
<p><strong>Appointments:</strong> (319) 335-8394 <strong>Nurseline:</strong> (319) 335-9704 <strong>Pharmacy:</strong> (319) 335-9200</p>
<a href="http://www.uiowa.edu"><img src="/sites/all/themes/shs/images/uiowa.png" width="78" height="64" alt="The University of Iowa" longdesc="http://www.uiowa.edu" /></a></div>
<!--end header-->
<div id="nav">
<p class="appointments"><a href="/appointments/">Appointments</a></p>


   
		<?php if (!empty($navigation)): ?>      
<?php print $navigation; ?>
<?php endif; ?>



		  
		 
       
  
  </div>
<!--end nav-->
<div class="clear"></div>
<div id="body">
 <?php if (!empty($left)): ?>
        <div id="sidebar">
          <?php print $left; ?>
          
  
          
          
        </div> <!-- /sidebar -->
      <?php endif; ?>

<div id="main">
 

<?php if (!empty($center)): ?>      
<?php print $center; ?>
<?php endif; ?>
      
<?php print $content; ?>

  <?php if (!empty($tabs)): ?><div class="tabs"><?php print $tabs; ?></div><?php endif; ?>
  <?php if (!empty($messages)): print $messages; endif; ?>
  <?php if (!empty($help)): print $help; endif; ?>
  


</div>
<!-- end main -->
<div class="clear"></div>
</div>
<!-- end body --></div>


<!--end wrapper-->
<div id="footer">

 <?php if (!empty($footer)): ?>
        <div id="footer-content">
          <?php print $footer; ?>
        </div> <!-- /footer content -->
      <?php endif; ?>
      


<!-- end footer --></div>
<!-- end container --></div>
<!-- end background --></div>

<?php print $closure ?>

<!--<script>
		var theInt = null;
		var $crosslink, $navthumb;
		var curclicked = 0;
		
		theInterval = function(cur){
			clearInterval(theInt);
			
			if( typeof cur != 'undefined' )
				curclicked = cur;
			
			//$crosslink.removeClass("active-thumb");
			//$navthumb.eq(curclicked).parent().addClass("active-thumb");
			//	$(".stripNav ul li a").eq(curclicked).trigger('click');
			
			theInt = setInterval(function() {
				//$crosslink.removeClass("active-thumb");
				$navthumb.eq(curclicked).parent().addClass("active-thumb");
				$(".stripNav ul li a").eq(curclicked).trigger('click');
				curclicked++;
				if( 4 == curclicked )
					curclicked = 0;
				
			}, 3000);
		};
		
		// DOM Ready
		trymore = function() {
			$navthumb = $("#right-link");
			//$crosslink = $(".cross-link");
			
			$navthumb
				.click(function() {
					var $this = $(this);
					theInterval($this.parent().attr('href').slice(1) - 1);
					return false;
				});
			
			theInterval();
		};
</script>-->

<script type="text/javascript">
//<![CDATA[
	//jQuery(document).ready(function() {
		//jQuery("div#slider1").codaSlider();
	//});
	jQuery(window).bind("load", function() {
		jQuery('#slider1').codaSlider({
                autoSlide: true,
                autoSlideInterval: 4000,
                autoSlideStopWhenClicked: true,
				autoHeight: false
            });
	});
//]]>
</script>


</body>
</html>
