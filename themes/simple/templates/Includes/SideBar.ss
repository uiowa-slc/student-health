<div id="sidebar">
          
<div id="block-1">

<div id="search">
<form method="get" action="http://search.uiowa.edu/search">
<fieldset><input type="text" name="q" value="" title="text" ></input> 
<input type="submit" name="btnG" value="Search" class="submit"  ></input> 
<input type="hidden" name="site" value="default_collection" ></input> 
<input type="hidden" name="client" value="default_frontend"  ></input> 
<input type="hidden" name="output" value="xml_no_dtd"  ></input> 
<input type="hidden" name="proxystylesheet" value="default_frontend" ></input> 
<input type="hidden" name="sitesearch" value="studenthealth.uiowa.edu"  ></input></fieldset> </form>
</div>


  
</div> <!-- /block-inner, /block -->



<% if InSection(self-care-guide) %>

	<div id="block-menu-menu-health" class="">
	<div class="line"></div>
	<div id="sidebar-nav">
	
	
	 <h2 class="title">Self-Care Guide</h2>
	  	
	      <ul class="menu">
	      
			  <% loop ChildrenOf(self-care-guide) %>
	
			  		<li class="leaf "><a href="{$Link}" title="">$Title</a></li>
	
			  <% end_loop %>
			  
		  </ul> 
	  
	</div>
	
	</div> <!-- /block-inner, /block -->

<% else_if InSection(services) %>

	<div id="block-menu-menu-services-menu" class="">
	<div class="line"></div>
	<div id="sidebar-nav">
	
	
	      <h2 class="title">Services</h2> 
	      
	      <ul class="menu">
	      
			  <% loop ChildrenOf(services) %>
	
			  		<li class="leaf "><a href="{$Link}" title="">$Title</a></li>

	
			  <% end_loop %>
			  
		  </ul> 
		  
	</div>
	
	</div> <!-- /block-inner, /block -->

<% else_if InSection(wellness) %>

	
	<div id="block-menu-menu-wellness" class="">
	<div class="line"></div>
	<div id="sidebar-nav">
	
	
	      <h2 class="title">Wellness</h2>
	  
	      <ul class="menu">
	      
			  <% loop ChildrenOf(wellness) %>
	
			  		<li class="leaf "><a href="{$Link}" title="">$Title</a></li>
	
			  <% end_loop %>
			  
		  </ul> 
	
	  
	</div>
	
	</div> <!-- /block-inner, /block -->
	
<% else_if InSection(health-answers) %>

	<div id="block-menu-menu-health" class="">
	<div class="line"></div>
	<div id="sidebar-nav">
	
	
	     <h2 class="title">Categories</h2>
	     
	     	
	     <ul class="menu">
	     
	     	<% loop ChildrenOf(health-answers) %>
	     	
	     		<% if ShowInMenus %>
	     	
		     		<li class="leaf"><a href="{$Link}" title="">$Title</a></li>
		     		
		     	<% end_if %>
	     		
	        <% end_loop %>
	        
	     </ul>
	  
	<!--
	    <ul class="menu"><li class="leaf first"><a href="{$absoluteBaseURL}category/health-answers/alcohol" title="">Alcohol</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/cold-flu" title="">Cold / Flu</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/fitness" title="">Fitness</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/general" title="">General</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/medicine" title="">Medicine</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/mental-health" title="">Mental Health</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/nutrition" title="">Nutrition</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/sexual-health" title="">Sexual Health</a></li>
	<li class="leaf"><a href="{$absoluteBaseURL}category/health-answers/stress" title="">Stress</a></li>
	<li class="leaf last"><a href="{$absoluteBaseURL}category/health-answers/illness" title="">Illness</a></li>
	</ul>
	-->
	  
	</div>
	
	</div> <!-- /block-inner, /block -->
	
<% else_if InSection(home) %>

	<% if $URLSegment != 'home' %>
	
		<div id="block-menu-menu-health" class="">
		<div class="line"></div>
		<div id="sidebar-nav">
			
		     <h2 class="title">Home</h2>
		     
		     <ul class="menu">
		     
		     	<% loop ChildrenOf(info) %>
		     	
		     	
		     	
		     			<li class="leaf"><a href="{$Link}" title="">$Title</a></li>
		     			
		     	
		     		
		        <% end_loop %>
		        
		     </ul>
		     	 
		 </div>
		
		</div> <!-- /block-inner, /block -->
	
	 <% end_if %> 
		
<% end_if %>




<div id="block-block-3" class=""><div class="block-inner sidebar-pic">

  

    <div class="line">&nbsp;</div>
<div id="quick-links">
<ul>
<li class="app"><a href="{$absoluteBaseURL}info/parents/">Parents / Guardians</a></li>
<li class="pharmacy"><a href="{$absoluteBaseURL}services/pharmacy">Pharmacy</a></li>
<li class="insurance"><a href="{$absoluteBaseURL}info/insurance">Insurance</a></li>
<li class="nurseline"><a href="{$absoluteBaseURL}requirements-and-forms#international">International Students</a></li>
<li class="immunizations"><a href="{$absoluteBaseURL}services/immunizations">Immunizations</a></li>
<li class="self-care"><a href="{$absoluteBaseURL}services/self-care-guide">Self-Care Guide</a></li>
</ul>
</div>


  
</div></div> <!-- /block-inner, /block -->


<div id="block-block-7" class=""><div class="block-inner">

  

    <!-- Begin MailChimp Signup Form --><!-- Begin MailChimp Signup Form --><link href="http://cdn-images.mailchimp.com/embedcode/classic-081011.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
	<!-- Add your own MailChimp form style overrides in your site stylesheet or in here. --><!-- Add your own MailChimp form style overrides in your site stylesheet or in here. -->
</style><div id="mc_embed_signup">
<form action="http://uiowa.us2.list-manage1.com/subscribe/post?u=c61b1cddac92babd42d7d628e&amp;id=c3ef47a8fb" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">

<div id="socialMediaContainer">
	<p>Connect with Student Health: </p>
	<div id="socialMedia">
		<a href="https://twitter.com/hawkeye_health"><img id="twitterPic" src="{$ThemeDir}/images/twitter-logo.png" /></a>
		<a href="http://www.youtube.com/user/UIStudentWellness"><img id="youtubePic" src="{$ThemeDir}/images/youtube-logo.png" /></a>
	</div>
</div>

<div class="mc-field-group">
	<label for="mce-EMAIL">Subscribe to our newsletter! Enter your email address below:</label><br />
	<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" />
</div>
<div id="mce-responses" class="clear">
<div class="response" id="mce-error-response" style="display:none"></div>
<div class="response" id="mce-success-response" style="display:none"></div>
</div>
<div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button" /></div>
</form>

</div>

</div></div> <!-- /block-inner, /block -->
<div id="block-block-4" class=""><div class="block-inner">

  




<div style="clear: left"></div>

<a href="{$getSidebarLink}">$getSidebarImage.croppedImage(250,180)</a>



  
</div></div> <!-- /block-inner, /block -->
        
</div>
