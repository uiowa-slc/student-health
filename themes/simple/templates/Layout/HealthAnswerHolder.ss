<div class="content-container typography">	
	<article>

		
	</article>
		$Form
		$PageComments

<div id="main" class="typography page-health-answers">
  <h1 class="node-">$Title</h1>  
      


<div class="view view-health-Answers-view view-id-health_Answers_view view-display-id-page_1 view-dom-id-1 page-health-Answers">
        <div class="view-header">
        <% if $URLSegment =='health-answers' %>
		      <blockquote><h2><a href="{$absoluteBaseURL}ask-your-question/">Ask Your Question</a></h2>
		      </blockquote>
		<% end_if %>

$Content
    </div>
  
 

      <div class="view-content page-health-answers">
      
      
<% if $URLSegment='health-answers' %>
      
	<% loop getAllAnswers %>  
	
	        <div class="views-row views-row-$Pos">
	    <!-- news page -->
	<div class="story">
	<h2><a href="{$Link}">$Title</a></h2>
	<% if ArticleDate %><p class="date">$formatDate</p><br /><% end_if %>
	<h3>Question</h3>
	<p>$Question
	</p>
	<p class="more"><a href="{$Link}" title="read more">Read the Answer</a></p>
	</div>
	  </div>
	 
	    
	
	<% end_loop %>
	
	<% if getAllAnswers.MoreThanOnePage %>
	
		<div class="item-list">
		<ul class="pager">	
		
	    <% if getAllAnswers.NotFirstPage %>
	        <a class="prev" href="$getAllAnswers.PrevLink"><li class="pager-item">< Prev</li></a>
	    <% end_if %>	
	
		<% loop getAllAnswers.Pages %>	
			<% if CurrentBool %>
		         <span><li class="pager-current">$PageNum</li></span>
		    <% else %>
		     	<% if Link %>
		            <a href="$Link"><li class="pager-item">$PageNum</li></a>
		        <% else %>
		            
		        <% end_if %>
		    <% end_if %>
	    
		 <% end_loop %>  
		 <% if getAllAnswers.NotLastPage %>
		 	<a class="next" href="$getAllAnswers.NextLink"><li class="pager-item">Next ></li></a>
		 <% end_if %>
		 
		 </ul> 
		</div>
		 
	<% end_if %>  

<% else %>

	<% loop getPaginatedAnswers %>
	
		 <div class="views-row views-row-$Pos">

	    	<div class="story">
			    <h2><a href="{$Link}">$Title</a></h2>
			    <% if ArticleDate %><p class="date">$formatDate</p><br /><% end_if %>
			    <h3>Question</h3>
			    <p>$Question</p>
			    <p class="more"><a href="{$Link}" title="read more">Read the Answer</a></p>
			</div>
		</div>
		
	<% end_loop %>
	
	
	<% if getPaginatedAnswers.MoreThanOnePage %>
	
		<div class="item-list">
		<ul class="pager">	
		
	    <% if getPaginatedAnswers.NotFirstPage %>
	        <a class="prev" href="$getPaginatedAnswers.PrevLink"><li class="pager-item">< Prev</li></a>
	    <% end_if %>	
	
		<% loop getPaginatedAnswers.Pages %>	
			<% if CurrentBool %>
		         <span><li class="pager-current">$PageNum</li></span>
		    <% else %>
		     	<% if Link %>
		            <a href="$Link"><li class="pager-item">$PageNum</li></a>
		        <% else %>
		            
		        <% end_if %>
		    <% end_if %>
	    
		 <% end_loop %>  
		 <% if getPaginatedAnswers.NotLastPage %>
		 	<a class="next" href="$getPaginatedAnswers.NextLink"><li class="pager-item">Next ></li></a>
		 <% end_if %>
		 
		 </ul> 
		</div>
		 
	<% end_if %>  

	
	
	
	
	
	
	
	
	

<% end_if %>
     

 <% include PostedBy %>
  
  
  
</div>
</div>
<div class="clear"></div>
</div></div></div>


