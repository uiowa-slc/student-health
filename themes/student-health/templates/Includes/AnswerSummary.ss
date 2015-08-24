<div class="blogSummary">
	<h2 class="postTitle">
		<% if $ExternalURL %>
			<a href="$ExternalURL" target="_blank" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a>
		<% else %>
			<a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a>
		<% end_if %>
	</h2>

	<% if BlogHolder.ShowFullEntry %>
		<p>$Content</p>
	<% else %> 
		<p><strong>$Question</strong></p>
		<p>$Answer.Summary(30)<a href = "$Link">Continue Reading</a></p>
	<% end_if %>

	<% if TagsCollection %>
		<p class="tags-summary">
			Tags:
			<% loop TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
			<% end_loop %>
		</p>
	<% end_if %>

</div>
<hr>
