<div class="container clearfix">
	<div class="white-cover"></div>
	<section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
    <div id="BlogContent" class="typography">
	
	
	<div class="blogEntry">
	<!--section class="main-content"-->
	<% include BreadCrumbs %>
		<h2 class="postTitle">$Title</h2>
		<% if TagsCollection %>
			<p class="tags">
				<% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_loop %>
			</p>
		<% end_if %>
		<h5>$Question</h5>	
	
		$Answer		
	<!--/section -->
	</div>
    
	</div>
	    </section>
    <section class="sec-content hide-print">
    	<% include BlogSideBar %>
    	<div style= "padding-left: 15px;">
       	<a href="ask-your-question/">Ask a question!</a>
    	
    	</div>
    </section>
</div>
