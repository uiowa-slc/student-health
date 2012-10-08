  <div class="post_meta">
  
	 <% if PostedBy %><!--Need to update this to never show my name-->
	 	Posted by <a href="/information">$PostedBy</a> at $LastEdited.
	 <% else %>
	 	Posted by <a href="/information">student-health</a> at $LastEdited PostedBy = $PostedBy
	 <% end_if %>   
	 
  </div>