<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language ?>" lang="<?php print $language->language ?>" dir="<?php print $language->dir ?>">

<head>
  <?php print $head; ?>
  <title><?php print $head_title; ?></title>
  <?php print $styles; ?>
  <!--[if IE 7]><style type='text/css'>@import url(/sites/all/themes/shs/css/ie7.css);</style><![endif]-->
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.0r4/build/reset/reset-min.css" />
<link rel="shortcut icon" href="/sites/all/themes/shs/favicon.ico" type="image/x-icon" />
  <?php print $scripts; ?>
  <link href='http://fonts.googleapis.com/css?family=Droid+Sans:regular,bold' rel='stylesheet' type='text/css'/>
  <link href='http://fonts.googleapis.com/css?family=Molengo' rel='stylesheet' type='text/css'/>
  <link href='http://fonts.googleapis.com/css?family=Nobile' rel='stylesheet' type='text/css'/>





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
  <p>Your browser does not support iframes.</p>
</iframe>
<div id="background">
<div id="container">
<div id="wrapper">
<div id="header">
<a href="<?php print $front_page; ?>"><img class="header-logo" src="/sites/all/themes/shs/images/logo.png" alt="The University of Iowa Student Health" longdesc="http://studenthealth.uiowa..edu" /></a>
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

<div id="main" class="typography">
  <?php if (!empty($title)): ?><h1 class="node-<?php print $node->nid; ?>"><?php print $title; ?></h1><?php endif; ?>
  
 <?php if (!empty($tabs)): ?><div class="tabs"><?php print $tabs; ?></div><?php endif; ?>
  <?php if (!empty($messages)): print $messages; endif; ?>
  <?php if (!empty($help)): print $help; endif; ?>
 
<?php if (!empty($abovecontent)): ?>      
<?php print $abovecontent; ?>
<?php endif; ?>

<?php print $content; ?>


<?php if (!empty($center)): ?>      
<?php print $center; ?>
<?php endif; ?>
      

 
  <div class="post_meta">
  
<?php 	if((theme('username', $node))!= ("Anonymous")) { ?>
  	Posted by <a href="/information"><?php print theme('username',$node) ?></a>.
	Last updated <?php print format_date($node->changed, 'small') ?><?php if ($last_edit): ?>by 
	    <a href="/information"><?php print $node->lasteditor ?></a>
    <?php endif;  ?>
    
<?php }else {?>

	Posted by <a href="/information">student-health</a><?php if(isset($node->created)) {?>
	on <?php print format_date($node->created, 'small'); }?>.
	
	

<?php } ?>
    
  </div>

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
</body>
</html>
