<% if $ClassName != "HomePage" %>
	<% if $allVersions.Count > 2 %>
		<p class="last-edit">This page was updated on $LastEdited.Format("MMMM d, Y")<% if $allVersions.First.Author %> by  <a href="information/">{$allVersions.First.Author.Name}<% end_if %>.</p>
	<% else %>
			<p class="last-edit">This page was created on $Created.Format("MMMM d, Y")<% if $allVersions.First.Author %> by  <a href="information/">{$allVersions.First.Author.Name}<% end_if %>. </p>
	<% end_if %>
<% end_if %>
