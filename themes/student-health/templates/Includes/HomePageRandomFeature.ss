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
        <h3>
	        Health Answers
        </h3>
        	<% loop RandomQuestion %>
        		<p>$Question.Summary(60)</p>
        	
        	<p><a href="{$Link}" title="read more">Read the Answer</a><a href="{$absoluteBaseURL}health-answers/ask-your-question">Ask Your Question</a></p>
        
        	<% end_loop %>
    </div>
</div>