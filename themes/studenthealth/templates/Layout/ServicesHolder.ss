
<div id="main" class="typography">
  <h1 class="node-2">Services</h1>  
      

<div id="node-2" class=""><div class="node-inner">

  
  
  
  
  <div class="content">
    <p>$Content</p>
  </div>

  
</div></div> <!-- /node-inner, /node -->


      
<div id="block-views-services-block_1" class=""><div class="block-inner">

  

    <div class="view view-services view-id-services view-display-id-block_1 view-dom-id-1">
    
  
  
      <div class="view-content">
      
 
      
      <% loop ChildrenOf(services) %>
      
      	<div class="views-row views-row-$Pos views-row-<% if MultipleOf(2,2) %>odd<% else %>even<% end_if %>">
	      	<h2><a href="{$absoluteBaseURL}services/{$URLSegment}" >$Title</a></h2>
	      	$Picture.croppedImage(70,70)
	      	<p>$Content.Summary(7)</p>
	      	<span class="more"><a href="{$absoluteBaseURL}services/{$URLSegment}" title="read more">Read More</a></span>
      	</div>
      
      <% end_loop %>
     <div class="clear"></div>
      
        </div>
  
  
  
  
  
  
</div> 

  
</div></div> <!-- /block-inner, /block -->
      

 
<% include PostedBy %>


</div></div>

<!-- end main -->
<div class="clear"></div>