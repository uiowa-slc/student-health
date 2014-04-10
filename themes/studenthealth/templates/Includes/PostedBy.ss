  <div class="post_meta">

	 <% if PostedBy %>
	 	<% if $PostedBy=="Drew Parker " || $PostedBy=="Default Admin " || $PostedBy=="Drew Parker" || $PostedBy=="Default Admin" %>
	 		Posted by <a href="/information">student-health</a> on $LastEdited.Format("F j, Y - g:i a")
	 	<% else %>
	 		Posted by <a href="{$BaseHref}information">$PostedBy</a> on $LastEdited.Format("F j, Y - g:i a") 
	 	<% end_if %>	 	
	 <% else %>
	 	Posted by <a href="{$BaseHref}information">student-health</a> on $LastEdited.Format("F j, Y - g:i a") 
	 <% end_if %>   

  </div>