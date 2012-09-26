<div class="content-container typography">	
	<article>

		
	</article>
		$Form
		$PageComments

<div id="main" class="typography">
  <h1 class="node-">Health Answers</h1>  
      


<div class="view view-health-answers-view view-id-health_answers_view view-display-id-page_1 view-dom-id-1 page-health-answers">
        <div class="view-header">
      <blockquote><h2><a href="{$absoluteBaseURL}ask-your-question/">Ask Your Question</a></h2>
</blockquote>
$Content
    </div>
  
 

      <div class="view-content">
      
<% loop getPaginatedAnswers %>  

        <div class="views-row views-row-1 views-row-odd views-row-first">
    <!-- news page -->
<div class="story">
<h2><a href="{$Link}">$Title</a></h2>
<p class="date">$PublishDate</p><br />
<h3>Question</h3>
<p>$Question
</p>
<p class="more"><a href="[$getAbsoluteBaseURL}health-answers/{$URLSegment}" title="read more">Read the Answer</a></p>
</div>
  </div>
 
    

<% end_loop %>

<% if getPaginatedNews.MoreThanOnePage %>

	<div id="paginate">	
	
    <% if getPaginatedNews.NotFirstPage %>
        <a class="prev" href="$getPaginatedNews.PrevLink">Prev</a>
    <% end_if %>	

	<% loop getPaginatedNews.Pages %>	
		<% if CurrentBool %>
	         <span>$PageNum</span>
	    <% else %>
	     	<% if Link %>
	            <a href="$Link">$PageNum</a>
	        <% else %>
	            
	        <% end_if %>
	    <% end_if %>
    
	 <% end_loop %>  
	 <% if getPaginatedNews.NotLastPage %>
	 	<a class="next" href="$getPaginatedNews.NextLink">Next</a>
	 <% end_if %>
	 
	 </div> <!--end paginate div -->
	 
<% end_if %>  

     

 
  <div class="post_meta">
  

	Posted by <a href="/information">student-health</a>.
	
	

    
  </div>
  
  
  
</div>
</div>
<div class="clear"></div>
</div>


