
<div id="main" class="typography">
  <h1 class="node-">News</h1>  
      

<div class="page-news view view-news-view view-id-news_view view-display-id-page_1 view-dom-id-1">

	   <div class="view-content">
    
  	<% loop getPaginatedNews %>
  

      
        <div class="views-row views-row-$Pos">
    <!-- news page -->
<a href="{$Link}" class="imagecache imagecache-news_thumbnail imagecache-imagelink imagecache-news_thumbnail_imagelink">$Picture.croppedImage(95,75)</a><h2><a href="/news/bat-season">$Title</a></h2>
<p class="date">$formatDate</p>
<p>$Content.Summary(10)</p>
<span class="more"><a href="{$Link}" title="read more">Read More</a></span>

        </div>

	<% end_loop %>





  </div>
  <div class="clear">
    </div>
  
   
  
  
  
  
</div> 

<% if getPaginatedNews.MoreThanOnePage %>

	<div class="item-list">
	<ul class="pager">	
		
    <% if getPaginatedNews.NotFirstPage %>
        <a class="prev" href="$getPaginatedNews.PrevLink"><li class="pager-item">Prev</li></a>
    <% end_if %>	

	<% loop getPaginatedNews.Pages %>	
		<% if CurrentBool %>
	         <span><li class="pager-item">$PageNum</li></span>
	    <% else %>
	     	<% if Link %>
	            <a href="$Link"><li class="pager-item">$PageNum</li></a>
	        <% else %>
	            
	        <% end_if %>
	    <% end_if %>
    
	 <% end_loop %>  
	 <% if getPaginatedNews.NotLastPage %>
	 	<a class="next" href="$getPaginatedNews.NextLink"><li class="pager-item">Next</li></a>
	 <% end_if %>
	 
	 </div> <!--end item-list div -->
	 </ul>
	 
<% end_if %>  

     

<% include PostedBy %>
  

</div><!--End main-->
<div class="clear"></div>
</div>




