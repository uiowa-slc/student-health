<div class="module">
    <div class="media">
    <% if $ExternalLink %>
      <a href="$ExternalLink" target="_blank">
    <% else %>
        <a href="$AssociatedPage.Link">
    <% end_if %>
        </a>
  
    </div>
    <div class="inner">
        <h3 class="postTitle">
	        <a href="{$absoluteBaseURL}health-answers/" title="read more"> Health Answers </a>
        </h3>
        	
        	<% loop RandomQuestion %>
        	<h5><a href="{$Link}" title="read more">$Title</a></h5>
        		<p>$Question.Summary(60)</p>
        	<ul class="random-health-links">
        		<li><a href="{$Link}" title="read more">Read the Answer</a></li>
        		<li><a href="{$absoluteBaseURL}health-answers/ask-your-question">Ask Your Question</a></li>
        		<li><a href="{$absoluteBaseURL}health-answers/">See All Questions</a></li>
        	</ul>
        	<% end_loop %>
    </div>
</div>