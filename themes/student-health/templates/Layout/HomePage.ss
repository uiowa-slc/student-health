<style>
.hero {
  border-bottom: 5px solid #ffce39;
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}
@media screen and (min-width: 480px) and (max-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
  <% end_if %>
    padding: 4em 0;
  }
}
@media screen and (min-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
  <% end_if %>
    padding: 0;
    height: 665px;
  }
}
</style>
<div class="hero">
        <div class="container clearfix">

        <% if HomePageHeroFeatures.Limit(2) %>
            <div class="hero-article-wrapper">

              <% loop HomePageHeroFeatures.Limit(2) %>
                <% include HomePageHeroFeature %>
              <% end_loop %>


	          </div>
         <% end_if %>

         <% include HomePageHeroText %>

        </div>

    </div>
	<section class="home-highlights">
        <div class="container clearfix">
	        <% loop HomePageFeatures.Limit(2) %>
	            <% include HomePageFeature %>
	         <% end_loop %>
	         <% include HomePageRandomFeature %>
	        <div class="module latest-post">
	        	<div class="media">
	        	</div>
	            <div class="inner">
	              <h3>Latest Posts</h3>
	              <% with $Page("news") %>
	                <% loop Entries(3) %>
	                <article>
	                  <h4><a href="$Link">$Title</a></h4>
	                 	 <p>$Content.LimitCharacters(60) <a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>
	                 	 
	     
	                </article>
	                <hr />
	                <% end_loop %>
	              <% end_with %>
	            </div>
          </div>
        </div><!-- end .container -->
    </section>

    <% include TopicsAndNews %>