<div class="content-container typography">	
	<article>
		<!--<h1>$Title</h1>-->
		<div class="content">$Content</div>
	</article>
		$Form
		$PageComments
</div>


<div id="main">
       
<div id="block-views-home_view-block_1" class=""><div class="block-inner">
      
<div class="slider-wrap">
<div id="slider1" class="csw">
	
	<div class="coda-slider" id="slider-id">
	  <div>
	    <img src="{$ThemeDir}/images/logo.png" />
	  </div>
	 </div>
	 
	 <div class="coda-slider" id="slider-id">
	  <div>
	    <h1>Testing this </h1>
	  </div>
	 </div>

</div>
</div>
</div>
</div>

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
					<p class="ask"><a href="/health-answers/ask-your-question" title="Ask Your Question">Ask Your Question</a></p>

				</li>
				
				<% end_loop %>
				
			</ul>
		</div>
	</div>
</div>

</div></div>

<!--end health answers--></div>

</div>
</div></div>
</div>
<div class="clear">

          
          
<!-- /sidebar -->
<!--
<script type="text/javascript">
jQuery(window).bind("load", function() {
		jQuery('#slider1').codaSlider({
                autoSlide: true,
                autoSlideInterval: 4000,
                autoSlideStopWhenClicked: true,
				autoHeight: false
            });
	});
</script>-->