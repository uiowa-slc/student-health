<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>

	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Content
	    	
			Reading about a condition is no substitute for getting expert advice from a medical professional.
			If you have symptoms that worry you, schedule an appointment through <a href="https://mychart.uihealthcare.org/mychart/">MyChart</a> or call (319) 335-8394. 
	    	<% loop $Children %>
        
            <h2><a href="$Link" title="Read more on &quot;{$Title}&quot;">$Title</a></h2>
            <p>$Content.LimitWordCount(25)<a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>
    		<% end_loop %>
<%--     		<h3>Up To Date</h3>

			Can’t find what you are looking for? The University of Iowa Student Health & Wellness subscribes to UpToDate, an online medical library created by doctors.

			<div id="uptodatesearchcontainer" style="width:160px; padding: 6px; background-color: #ffffff; text-align: left; font-family: Helvetica; font-size: 11px; line-height: 14px;"> If you are seeing this, you have attempted to link to the UpToDate widget but are experiencing a problem. Please visit <a href="https://www.uptodate.com/patients/refer.html" rel="nofollow">UpToDate</a> for more information. </div> <script language="javascript" type="text/javascript" src="https://www.uptodate.com/patient_search_box.js?widgetId=1&clientId="></script>

			Reading about a condition is no substitute for getting expert advice from a medical professional.
			If you have symptoms that worry you, schedule an appointment through <a href="https://mychart.uihealthcare.org/mychart/">MyChart</a> or call (319) 335-8394.  --%>

	    	$Form
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideNav %>
	    </section>
	</div>
</div>
