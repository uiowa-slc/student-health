


<div id="main">
       
      
<div id="block-views-home_view-block_1" class=""><div class="block-inner">

  

    
<div class="slider-wrap">
<div id="slider1" class="csw">
<div class="panelContainer">



<div class="view view-home-view view-id-home_view view-display-id-block_1 view-dom-id-1">
    
  
  
      <div class="view-content">
      
      	<% loop getSliderItems %>

      	<div class="views-row views-row-{$Pos} views-row-odd views-row-first">
    <!-- home page feature -->

		<div style="background:url('{$Picture.Link}');" class="panel panel-text panel 2">
		<div class="feature-content">
		
		<h3><a href="{$Link}">$Title</a></h3>
		
		<p>$Content.Summary(20)</p>
		
		
		<a class="more" href="{$Link}" title="read more">Read More</a>
		
		
		</div><!--end feature content-->
		<!--
		<script>
		alert("Hi");
		var pos = {$Pos};
		console.log(pos);
		
		</script>
		-->
		
		</div>
		</div>
  		
		<% end_loop %>
		
      </div>
  
  
  
  
  
  
</div> 
</div>
<!-- .panelContainer --></div>
<!-- #slider1 -->
<div id="navigation"></div>
</div>
<!-- .slider-wrap -->

  
</div></div> <!-- /block-inner, /block -->



<div id="block-views-news_view-block_1" class=""><div class="block-inner">

<div id="news-area">
	<h4 class="news"><a href="{$absoluteBaseURL}news">News</a></h4>
		      
      <div class="view-content">
      
	    <ul>
	    	
		    <% loop getNewsItems %>
		    

          <li class="views-row views-row-1 views-row-odd views-row-first">
<a href="{$Link}" class="imagecache imagecache-news_thumbnail imagecache-imagelink imagecache-news_thumbnail_imagelink"><img src="{$Picture.Link}" alt="News Item Image" title=""  class="imagecache imagecache-news_thumbnail" width="95" height="75" /></a>
<h5><a href="/news/{$Title}">$Title</a></h5>

	<p>$Content.Summary(10)</p>
	
	<span class="more"><a href="{$Link}" title="read more">Read More</a></span>
		

			<% end_loop %>
		
		
			
		</ul>
	
	</div>
	
</div></div></div>

<div id="block-views-health_answers_view-block_1" class=""><div class="block-inner">

<div id="clipboard">
	<h4 class="clipboard">
		<a href="{$absoluteBaseURL}health-answers">Health Answers</a>
	</h4>
	<div id="clipboard-content">
		<div id="clipboard-top"></div>

		<div class="view-content">
      
			<ul>
				
				<% loop getHealthItem %>
				
				<li class="views-row views-row-1 views-row-odd views-row-first views-row-last"><!-- news page -->
					<h4>Question</h4>

					<p>$Question</p>
					<p class="more"><a href="{$Link}" title="read more">Read the Answer</a></p>
					<p class="ask"><a href="{$absoulteBaseURL}health-answers/ask-your-question" title="Ask Your Question">Ask Your Question</a></p>

				</li>
				
				<% end_loop %>
				
			</ul>
		</div>
	</div>
</div>

</div></div>

<!--end health answers--></div>

<div class="clear"> 
</div><!--Drew: think this is end body-->
</div></div>
</div>

<div class="experiment">
<!--
<% loop getServicesChildren %>
$Pos
$Title
<% end_loop %>
          
          
<!-- /sidebar -->

<script type="text/javascript">
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