  <div class="post_meta">
  
	 <% if PostedBy %><!--Need to update this to never show my name-->
	 	<% if PostedBy != "Drew Parker" %>
	 		Posted by <a href="/information">$PostedBy</a> at $LastEdited.
	 	<% else %>
	 		Posted by <a href="/information">student-health</a> at $LastEdited 
	 	<% end_if %>	 	
	 <% else %>
	 	Posted by <a href="/information">student-health</a> at $LastEdited 
	 <% end_if %>   
	 
  </div>