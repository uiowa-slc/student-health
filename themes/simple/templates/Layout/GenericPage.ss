<div id="main">
<div class="content-container typography">	
	
	<article>
		<h1>$Title</h1>

		<div class="content">$Content</div>
		<iframe id="asdfg"></iframe><!--Gets rid of the problem??-->
		<% if Picture %>
			<div id="genericpicture"><img src="{$Picture}" /></div>
		<% end_if %>

			</article>
		$Form
		$PageComments
		

  <div class="post_meta">
  
	 <% if PostedBy %>
	 	Posted by <a href="/information">$PostedBy</a> at $LastEdited.
	 <% else %>
	 	Posted by <a href="/information">student-health</a> at $LastEdited.
	 <% end_if %>   
  </div>
  
</div>


</div>

