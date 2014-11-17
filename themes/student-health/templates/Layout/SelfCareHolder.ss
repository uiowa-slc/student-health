<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>

	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Content
	    	<% loop $Children %>
        
            <h2><a href="$Link" title="Read more on &quot;{$Title}&quot;">$Title</a></h2>
            <p>$Content.LimitWordCount(25)<a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>

        
    		<% end_loop %>
	    	$Form
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideNav %>
	    </section>
	</div>
</div>
