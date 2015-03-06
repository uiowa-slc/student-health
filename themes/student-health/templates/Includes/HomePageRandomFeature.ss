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
        	
        	<% loop RandomQuestions.Limit(2) %>
        	<h5><a href="{$Link}" title="read more">$Title</a></h5>
        		<p>$Question.Summary(30) <a href="{$Link}" title="read more">Read the Answer</a></p>
            <% end_loop %>
            <hr />
        	<ul class="random-health-links">
        		<li><a href="{$absoluteBaseURL}health-answers/ask-your-question" class="btn">Ask Your Question</a></li>&nbsp;
        		<li><a href="{$absoluteBaseURL}health-answers/" class="btn">See All Health Answers</a></li>
        	</ul>
        	
    </div>
</div>