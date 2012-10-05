<div class="content-container typography">	
	<article>

		<div class="content">$Content</div>
	</article>
		$Form
		$PageComments
<div id="main" class="typography">
  <h1 class="node-2">Services</h1>  
      

<div id="node-2" class=""><div class="node-inner">

  
  
  
  
  <div class="content">
    <p>SHS offers a variety of clinical and health promotion services. Click the links below to read more about our various services:</p>
  </div>

  
</div></div> <!-- /node-inner, /node -->


      
<div id="block-views-services-block_1" class=""><div class="block-inner">

  

    <div class="view view-services view-id-services view-display-id-block_1 view-dom-id-1">
    
  
  
      <div class="view-content">
      
 
      
      <% loop ChildrenOf(services) %>
      
      	<div class="views-row views-row-$Pos views-row-<% if MultipleOf(2,2) %>odd<% else %>even<% end_if %>">
	      	<h2><a href="{$absoluteBaseURL}services{$URLSegment}" >$Title</a></h2>
	      	<img src="{$Picture.Link}" alt="Allergies Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" />
	      	<p>$Content.Summary(7)</p>
	      	<span class="more"><a href="{$absoluteBaseURL}services{$URLSegment}" title="read more">Read More</a></span>
      	</div>
      	
      <% end_loop %>
     
      
      <!--
  <div class="views-row views-row-1 views-row-odd views-row-first">
  

<h2><a href="/services/" >Allergies</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/allergies.jpg" alt="Allergies Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>If you are one of the hundreds...</p>
<span class="more"><a href="/services/allergies" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-2 views-row-even">
  

<h2><a href="/services/blood-and-body-fluid-exposure" >Blood and Body Fluid Exposure</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/exposure_0.jpg" alt="Blood and Body Fluid Exposure Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>If you have been exposed: This material...</p>
<span class="more"><a href="/services/blood-and-body-fluid-exposure" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-3 views-row-odd">
  

<h2><a href="/services/general-medicine" >General Medicine</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/general-medicine.jpg" alt="General Medicine Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>Student Health Service provides primary medical care...</p>
<span class="more"><a href="/services/general-medicine" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-4 views-row-even">
  

<h2><a href="/services/gynecology" >Gynecology</a></h2>
<p>The Student Health Service provides complete and...</p>
<span class="more"><a href="/services/gynecology" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-5 views-row-odd">
  

<h2><a href="/services/international-travel" >International Travel</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/international-travel.jpg" alt="International Travel Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>Traveling outside the United States?&nbsp;Every destination, even...</p>
<span class="more"><a href="/services/international-travel" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-6 views-row-even">
  

<h2><a href="/services/laboratory" >Laboratory</a></h2>
<p>Routine laboratory procedures are performed in the...</p>
<span class="more"><a href="/services/laboratory" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-7 views-row-odd">
  

<h2><a href="/services/nurse-care-room" >Nurse Care Room</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/Mary%20Beth-%20Nurse%20Care%20Room_1.jpg" alt="Services Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>Students can utilize the Nurse Care Room...</p>
<span class="more"><a href="/services/nurse-care-room" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-8 views-row-even">
  

<h2><a href="/services/nurseline" >Nurseline</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/Nurseline-001_0.jpg" alt="Nurseline Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>Nurseline can help you with whether to...</p>
<span class="more"><a href="/services/nurseline" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-9 views-row-odd">
  

<h2><a href="/services/pharmacy" >Pharmacy</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/pharmacy.jpg" alt="Pharmacy Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>Medications required for treatment are prescribed by...</p>
<span class="more"><a href="/services/pharmacy" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-10 views-row-even">
  

<h2><a href="/services/psychiatry" >Psychiatry</a></h2>
<p>Student Health Service provides mental health care...</p>
<span class="more"><a href="/services/psychiatry" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-11 views-row-odd">
  

<h2><a href="/services/self-care-guide" >Self-Care Guide</a></h2>
<img src="http://studenthealth.uiowa.edu/sites/default/files/imagecache/services_thumnail/first-aid.jpg" alt="Self-Care Guide Image" title=""  class="imagecache imagecache-services_thumnail imagecache-default imagecache-services_thumnail_default" width="70" height="70" /><p>These Student Survival Guidelines were designed as...</p>
<span class="more"><a href="/services/self-care-guide" title="read more">Read More</a></span>





  </div>
  <div class="views-row views-row-12 views-row-even views-row-last">
  

<h2><a href="/services/sexual-health" >Sexual Health</a></h2>
<p>The Student Health Service provides for diagnosis,...</p>
<span class="more"><a href="/services/sexual-health" title="read more">Read More</a></span>





  </div>
-->
    </div>
  
  
  
  
  
  
</div> 

  
</div></div> <!-- /block-inner, /block -->
      

 
  <div class="post_meta">
  
  	Posted by <a href="/information">student-health</a>.
	Last updated 08/17/2010 - 11:16    
    
  </div>

</div></div>
getToplevel = $getToplevel
<!-- end main -->
<div class="clear"></div>