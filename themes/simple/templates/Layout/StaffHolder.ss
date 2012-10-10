
     
<div id="main" class="typography">
  <h1 class="node-45">Staff</h1>  
      

<div id="node-45" class=""><div class="node-inner">

  
  
  
  
  <div class="content">
      </div>

  
</div></div> <!-- /node-inner, /node -->

<div id="block-views-staff-block_1" class=""><div class="block-inner">

<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
        <div class="view-header">
      <h2>Health Care Provider Staff</h2>
</div>

<div class="view-content">

<% loop ChildrenOf(home/staff/health-care-provider-staff) %>
	
	 <% if $Pos = 1 %>

    <% end_if %>


        <div class="views-row views-row-{$Pos} <% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %> ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content"><img src="$Picture.URL" alt="" title=""  class="imagecache imagecache-staff_thumbnail imagecache-default imagecache-staff_thumbnail_default" width="120" height="140" /></span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <div class="field-content"><a href="{$Link}">...</a></div>

  </div>
  </div>
    

<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->

<div id="block-views-staff-block_2" class=""><div class="block-inner">

<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
        <div class="view-header">
      <h2>Nursing Staff</h2>
</div>

<div class="view-content">

<% loop ChildrenOf(home/staff/nursing-staff) %>
	
	 <% if $Pos = 1 %>

    <% end_if %>


        <div class="views-row views-row-{$Pos} {<% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %>} ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content"><img src="$Picture.URL" alt="" title=""  class="imagecache imagecache-staff_thumbnail imagecache-default imagecache-staff_thumbnail_default" width="120" height="140" /></span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <div class="field-content"><a href="{$Link}">...</a></div>

  </div>
  </div>
    

<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->

<div id="block-views-staff-block_3" class=""><div class="block-inner">

<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
        <div class="view-header">
      <h2>Health Iowa Staff</h2>
</div>

<div class="view-content">

<% loop ChildrenOf(home/staff/health-iowa-staff) %>
	
	


        <div class="views-row views-row-{$Pos} {<% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %>} ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content"><img src="$Picture.URL" alt="" title=""  class="imagecache imagecache-staff_thumbnail imagecache-default imagecache-staff_thumbnail_default" width="120" height="140" /></span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <div class="field-content"><a href="{$Link}">...</a></div>

  </div>
  </div>
    

<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->	

<div id="block-views-staff-block_4" class=""><div class="block-inner">

<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
        <div class="view-header">
      <h2>Scheduling Staff</h2>
</div>

<div class="view-content">

<% loop ChildrenOf(home/staff/scheduling-staff) %>
	
	


        <div class="views-row views-row-{$Pos} {<% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %>} ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content"><img src="$Picture.URL" alt="" title=""  class="imagecache imagecache-staff_thumbnail imagecache-default imagecache-staff_thumbnail_default" width="120" height="140" /></span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <div class="field-content"><a href="{$Link}">...</a></div>

  </div>
  </div>
    

<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->


<div id="block-views-staff-block_5" class=""><div class="block-inner">

<div class="view view-staff view-id-staff view-display-id-block_1 view-dom-id-1">
        <div class="view-header">
      <h2>Administrative Staff</h2>
</div>

<div class="view-content">

<% loop ChildrenOf(home/staff/administrative-staff) %>
	
	


        <div class="views-row views-row-{$Pos} {<% if $MultipleOf(2,2) %>views-row-odd<% else %>views-row-even<% end_if %>} ">
      
  <div class="views-field-field-headshot-fid">
                <span class="field-content"><img src="$Picture.URL" alt="" title=""  class="imagecache imagecache-staff_thumbnail imagecache-default imagecache-staff_thumbnail_default" width="120" height="140" /></span>
  </div>
  
  <div class="views-field-title">
                <span class="field-content">$Name</span>
  </div>
  
  <div class="views-field-field-title-value">
                <span class="field-content">$JobTitle</span>
  </div>
  
  <div class="views-field-body">
                <div class="field-content"><a href="{$Link}">...</a></div>

  </div>
  </div>
    

<% end_loop %>

</div></div> 
</div></div> <!-- /block-inner, /block -->				

<div class="clear"></div>

<% include PostedBy %>



  
</div></div></div>


