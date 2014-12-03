<div class="gradient">
<div class="container clearfix">
	<div class="white-cover"></div>
	<section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">

	<!--section class="main-content"-->
	<% include BreadCrumbs %>
		<h1>$Title</h1>
		<p><strong>$Question</strong></p>	
	
		$Answer		
		<% if TagsCollection %>
			<p>
				<% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_loop %>
			</p>
		<% end_if %>
	 </section>
    <section class="sec-content hide-print">

    	<% include BlogSideBar %>
       	<div class="ask-sidebar"><a href="ask-your-question/" class="btn">Ask a question!</a></div>
    </section>
</div>
</div>