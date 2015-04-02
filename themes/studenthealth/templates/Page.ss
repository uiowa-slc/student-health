<!DOCTYPE html>
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
	<% base_tag %>
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

  <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
  <script type="text/javascript" src="{$ThemeDir}/build/build.js"></script>
	
	<script type="text/javascript">
	jQuery(function(){
	jQuery('#superfish-4').supersubs({minWidth: 12, maxWidth: 27, extraWidth: 1}).superfish({
	animation: {opacity:'show'},
	speed: 'normal',
	autoArrows: false,
	dropShadows: false});
	});
	</script>
	<script type="text/javascript">
	jQuery(function(){
	jQuery('#superfish-1').supersubs({minWidth: 12, maxWidth: 27, extraWidth: 1}).superfish({
	delay: 1000,
	animation: {opacity:'show',},
	speed: 'normal',
	autoArrows: false,
	dropShadows: false});
	});
	</script>
	
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Nobile' rel='stylesheet' type='text/css'>




	
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/app.css" />

</head>
<body class="$ClassName<% if Menu(2) %><% else %> no-sidebar<% end_if %> page-node">
	<% include DivisionBar %>

	<div id="background">
		<div id="container">
			<div id="wrapper">
				<% include Header %>
			<div id="nav">
				<p class="appointments"><a href="{$absoluteBaseURL}info/appointments/">Appointments</a></p>
				
				
				<div id="block-superfish-1" class=""><div class="block-inner">
				
					<ul id="superfish-1" class="sf-menu primary-links sf-horizontal sf-style-default sf-total-items-6 sf-parent-items-3 sf-single-items-2">
						<!--<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}home" title="Home" class="sf-depth-1 menuparent <% if InSection(home) %>active<% end_if %>">Home</a>-->
						<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}info" title="Home" class="sf-depth-1 menuparent <% if InSection(home) %>active<% end_if %>">Info</a>
							<ul>
								<% loop ChildrenOf(info) %>
									
										<li id="menu-633-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}info/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
										
								<% end_loop %>
								
							</ul>
		
					<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}services" title="Services" class="sf-depth-1 menuparent <% if InSection(services) %>active<% end_if %>">Services</a>
							
							<ul>
								
								<% loop ChildrenOf(services) %>
									
												
										<li id="menu-513-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
												
										
								<% end_loop %>
							</ul>
					<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}wellness" title="Services" class="sf-depth-1 menuparent <% if InSection(wellness) %>active<% end_if %>">Wellness</a>
						<ul>
								<% loop ChildrenOf(wellness) %>
									
										<li id="menu-633-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
										
								<% end_loop %>
								
						</ul>
	
<li id="menu-335-1" class="middle even sf-item-4 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}health-answers" title="Health Answers" class="sf-depth-1 <% if InSection(health-answers) %>active<% end_if %>">Health Answers</a></li>		
		
<li id="menu-336-1" class="last odd sf-item-5 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}news" title="News" class="sf-depth-1 <% if InSection(news) %>active<% end_if %>">News</a></li>						

	</li>
</ul>
			</div></div> <!-- /block-inner, /block -->
			</div><!--End nav-->
<div class="clear"></div>



      
      
<div id="body">
		
	<% include SideBar %>
		$Layout
</div>

<div class="clear"></div>
<% include Footer %>

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

</body>
</html>