<div class="module latest-post">
	        	<div class="media">
	        	</div>
	            <div class="inner">
	              <h3>Latest Posts</h3>
	              <% with $Page("news") %>
	                <% loop Entries(2) %>
	                <article>
	                  <h4><a href="$Link">$Title</a></h4>
	                 	 <p>$Content.LimitCharacters(60) <a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>
	                 	 
	     
	                </article>
	                <hr />
	                <% end_loop %>
	              <% end_with %>
	            </div>
	</div>