
     
<div id="main" class="typography">
  <h1 class="node-45">Staff</h1>  
      

<div id="node-45" class=""><div class="node-inner">

  
  
  
  
  <div class="content">
      </div>

  
</div></div> <!-- /node-inner, /node -->









<% loop Children %>


	<div id="block-views-staff-block_2" class=""><div class="block-inner">

	<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
	        <div class="view-header">
	        	<h2>$Title</h2>
	        
	        </div>
	
	<div class="view-content">

<% loop Children %>

	

	
	 <% if $Pos = 1 %>

    <% end_if %>


        <div class="views-row views-row-{$Pos} {<% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %>} ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content">$Picture.croppedImage(120,140)</span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <% if Content %><div class="field-content"><a href="{$Link}">...</a></div><% end_if %>

  </div>
  </div>
   
<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->

<% end_loop %>


		

<div class="clear"></div>

<% include PostedBy %>



  
</div></div></div>


