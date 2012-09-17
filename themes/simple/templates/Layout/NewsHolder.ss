<div class="content-container typography">	
	<article>
		<h1>$Title</h1>
		<div class="content">$Content</div>
	</article>
		$Form
		$PageComments
<div id="main" class="typography">
  <h1 class="node-">News</h1>  
      

<div class="view view-news-view view-id-news_view view-display-id-page_1 view-dom-id-1">
    
  	<% loop getPaginatedNews %>
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
    <!-- news page -->
<a href="{$Link}" class="imagecache imagecache-news_thumbnail imagecache-imagelink imagecache-news_thumbnail_imagelink"><img src="{$Picture.Link}" alt="News Item Image" title=""  class="imagecache imagecache-news_thumbnail" width="95" height="75" /></a><h2><a href="/news/bat-season">Bat Season</a></h2>
<p class="date">$PublishDate</p>
<p>$Content.Summary(10)</p>
<span class="more"><a href="{$Link}" title="read more">Read More</a></span>

	<% end_loop %>





  </div>
    </div>
  
   
  
  
  
  
</div> 

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
