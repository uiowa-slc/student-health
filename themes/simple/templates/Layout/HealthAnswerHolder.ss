<div class="content-container typography">	
	<article>

		
	</article>
		$Form
		$PageComments

<div id="main" class="typography">
  <h1 class="node-">Health Answers</h1>  
      


<div class="view view-health-Answers-view view-id-health_Answers_view view-display-id-page_1 view-dom-id-1 page-health-Answers">
        <div class="view-header">
      <blockquote><h2><a href="{$absoluteBaseURL}ask-your-question/">Ask Your Question</a></h2>
</blockquote>
$Content
    </div>
  
 

      <div class="view-content page-health-answers">
      
<% loop getPaginatedAnswers %>  

        <div class="views-row views-row-1 views-row-odd views-row-first">
    <!-- news page -->
<div class="story">
<h2><a href="{$Link}">$Title</a></h2>
<p class="date">$PublishDate</p><br />
<h3>Question</h3>
<p>$Question
</p>
<p class="more"><a href="[$getAbsoluteBaseURL}health-Answers/{$URLSegment}" title="read more">Read the Answer</a></p>
</div>
  </div>
 
    

<% end_loop %>

<% if getPaginatedAnswers.MoreThanOnePage %>

	<div class="item-list">
	<ul class="pager">	
	
    <% if getPaginatedAnswers.NotFirstPage %>
        <a class="prev" href="$getPaginatedAnswers.PrevLink"><li class="pager-item">Prev</li></a>
    <% end_if %>	

	<% loop getPaginatedAnswers.Pages %>	
		<% if CurrentBool %>
	         <span><li class="pager-item">$PageNum</li></span>
	    <% else %>
	     	<% if Link %>
	            <a href="$Link"><li class="pager-item">$PageNum</li></a>
	        <% else %>
	            
	        <% end_if %>
	    <% end_if %>
    
	 <% end_loop %>  
	 <% if getPaginatedAnswers.NotLastPage %>
	 	<a class="next" href="$getPaginatedAnswers.NextLink"><li class="pager-item">Next>></li></a>
	 <% end_if %>
	 
	 </div> <!--end item-list div -->
	 </ul>
	 
<% end_if %>  

     

 
  <div class="post_meta">
  

	Posted by <a href="/information">student-health</a>. <%--This is how the Drupal site does it--%>
	
	

    
  </div>
  
  
  
</div>
</div>
<div class="clear"></div>
</div>


