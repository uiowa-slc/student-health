$Header
<style>
.legacy-hp__hero {
 
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}
@media screen and (min-width: 480px) and (max-width: 768px) {
  .legacy-hp__hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
  <% end_if %>
    padding: 4em 0;
  }
}
@media screen and (min-width: 768px) {
  .legacy-hp__hero {
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
<div class="legacy-hp__hero">
        <div class="legacy-hp__container clearfix">

        <% if HomePageHeroFeatures.Limit(2) %>
            <div class="legacy-hp__hero-article-wrapper">

              <% loop HomePageHeroFeatures.Limit(2) %>
                <% include legacy/HomePageHeroFeature %>
              <% end_loop %>


	          </div>
         <% end_if %>

         <% include legacy/HomePageHeroText %>

        </div>

    </div>
	<section class="legacy-hp__home-highlights">
        <div class="legacy-hp__container clearfix">

			<div class="legacy-hp__module latest-post quick-links-container">
				<div class="legacy-hp__media">
				</div>
				<div class="legacy-hp__inner">
					<h3>Quick Links</h3>
					<div class="row">
						<div class="quick-links">
							<ul>
								<li class="quick-links__item"><a href="info/parents/" class="quick-links__link quick-links__link--parents">For Parents / Guardians</a></li>
								<li class="quick-links__item"><a href="info/insurance/" class="quick-links__link quick-links__link--insurance">Insurance</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--intl"href="info/requirements-and-forms/#international">International Students</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--mychart" href="info/my-medical-chart/">MyChart</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--self-care"href="services/self-care-guide/">Health Answers &amp; Self-Care Guide</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
			<div class="legacy-hp__module latest-post">
				        	<div class="legacy-hp__media">
				        	</div>
				            <div class="legacy-hp__inner">
				              <h3>Latest Posts</h3>
				              <% with $Page("news") %>
				                <% loop $BlogPosts.Limit(3) %>
				                <article>
				                  <h4><a href="$Link">$Title</a></h4>
				                 	 <p>$Content.LimitCharacters(100) <a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>
				                </article>
				                <% if not Last %><hr /><% end_if %>
				                <% end_loop %>
				              <% end_with %>
				            </div>
				</div>
	        <% loop HomePageFeatures.Limit(1) %>
	            $forTemplate
	         <% end_loop %>
         </div><!-- end .container -->
    </section>


